package com.facebook;

import android.net.*;
import com.facebook.internal.*;
import java.net.*;
import android.location.*;
import android.graphics.*;
import android.os.*;
import java.text.*;
import org.json.*;
import java.util.*;
import android.util.*;
import android.text.*;
import java.io.*;
import com.facebook.model.*;

public class Request
{
    private static final String ACCESS_TOKEN_PARAM = "access_token";
    private static final String ATTACHED_FILES_PARAM = "attached_files";
    private static final String ATTACHMENT_FILENAME_PREFIX = "file";
    private static final String BATCH_APP_ID_PARAM = "batch_app_id";
    private static final String BATCH_BODY_PARAM = "body";
    private static final String BATCH_ENTRY_DEPENDS_ON_PARAM = "depends_on";
    private static final String BATCH_ENTRY_NAME_PARAM = "name";
    private static final String BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM = "omit_response_on_success";
    private static final String BATCH_METHOD_PARAM = "method";
    private static final String BATCH_PARAM = "batch";
    private static final String BATCH_RELATIVE_URL_PARAM = "relative_url";
    private static final String CONTENT_TYPE_HEADER = "Content-Type";
    private static final String FORMAT_JSON = "json";
    private static final String FORMAT_PARAM = "format";
    private static final String ISO_8601_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
    public static final int MAXIMUM_BATCH_SIZE = 50;
    private static final String ME = "me";
    private static final String MIGRATION_BUNDLE_PARAM = "migration_bundle";
    private static final String MIME_BOUNDARY = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f";
    private static final String MY_FEED = "me/feed";
    private static final String MY_FRIENDS = "me/friends";
    private static final String MY_PHOTOS = "me/photos";
    private static final String MY_VIDEOS = "me/videos";
    private static final String PICTURE_PARAM = "picture";
    private static final String SDK_ANDROID = "android";
    private static final String SDK_PARAM = "sdk";
    private static final String SEARCH = "search";
    private static final String USER_AGENT_BASE = "FBAndroidSDK";
    private static final String USER_AGENT_HEADER = "User-Agent";
    private static String defaultBatchApplicationId;
    private static volatile String userAgent;
    private String batchEntryDependsOn;
    private String batchEntryName;
    private boolean batchEntryOmitResultOnSuccess;
    private Request$Callback callback;
    private GraphObject graphObject;
    private String graphPath;
    private HttpMethod httpMethod;
    private String overriddenURL;
    private Bundle parameters;
    private String restMethod;
    private Session session;
    
    public Request() {
        this(null, null, null, null, null);
    }
    
    public Request(final Session session, final String s) {
        this(session, s, null, null, null);
    }
    
    public Request(final Session session, final String s, final Bundle bundle, final HttpMethod httpMethod) {
        this(session, s, bundle, httpMethod, null);
    }
    
    public Request(final Session session, final String graphPath, final Bundle bundle, final HttpMethod httpMethod, final Request$Callback callback) {
        super();
        this.batchEntryOmitResultOnSuccess = true;
        this.session = session;
        this.graphPath = graphPath;
        this.callback = callback;
        this.setHttpMethod(httpMethod);
        if (bundle != null) {
            this.parameters = new Bundle(bundle);
        }
        else {
            this.parameters = new Bundle();
        }
        if (!this.parameters.containsKey("migration_bundle")) {
            this.parameters.putString("migration_bundle", "fbsdk:20121026");
        }
    }
    
    Request(final Session session, final URL url) {
        super();
        this.batchEntryOmitResultOnSuccess = true;
        this.session = session;
        this.overriddenURL = url.toString();
        this.setHttpMethod(HttpMethod.GET);
        this.parameters = new Bundle();
    }
    
    private void addCommonParameters() {
        if (this.session != null) {
            if (!this.session.isOpened()) {
                throw new FacebookException("Session provided to a Request in un-opened state.");
            }
            if (!this.parameters.containsKey("access_token")) {
                final String accessToken = this.session.getAccessToken();
                Logger.registerAccessToken(accessToken);
                this.parameters.putString("access_token", accessToken);
            }
        }
        this.parameters.putString("sdk", "android");
        this.parameters.putString("format", "json");
    }
    
    private String appendParametersToBaseUrl(final String s) {
        final Uri$Builder encodedPath = new Uri$Builder().encodedPath(s);
        for (final String s2 : this.parameters.keySet()) {
            Object value = this.parameters.get(s2);
            if (value == null) {
                value = "";
            }
            if (isSupportedParameterType(value)) {
                encodedPath.appendQueryParameter(s2, parameterToString(value).toString());
            }
            else {
                if (this.httpMethod == HttpMethod.GET) {
                    throw new IllegalArgumentException(String.format("Unsupported parameter type for GET request: %s", value.getClass().getSimpleName()));
                }
                continue;
            }
        }
        return encodedPath.toString();
    }
    
    static HttpURLConnection createConnection(final URL url) {
        final HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
        httpURLConnection.setRequestProperty("User-Agent", getUserAgent());
        httpURLConnection.setRequestProperty("Content-Type", getMimeContentType());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }
    
    public static Response executeAndWait(final Request request) {
        final List executeBatchAndWait = executeBatchAndWait(request);
        if (executeBatchAndWait == null || executeBatchAndWait.size() != 1) {
            throw new FacebookException("invalid state: expected a single response");
        }
        return executeBatchAndWait.get(0);
    }
    
    public static List executeBatchAndWait(final RequestBatch requestBatch) {
        Validate.notEmptyAndContainsNoNulls(requestBatch, "requests");
        try {
            return executeConnectionAndWait(toHttpConnection(requestBatch), requestBatch);
        }
        catch (Exception ex) {
            final List constructErrorResponses = Response.constructErrorResponses(requestBatch.getRequests(), null, new FacebookException(ex));
            runCallbacks(requestBatch, constructErrorResponses);
            return constructErrorResponses;
        }
    }
    
    public static List executeBatchAndWait(final Collection collection) {
        return executeBatchAndWait(new RequestBatch(collection));
    }
    
    public static List executeBatchAndWait(final Request... a) {
        Validate.notNull(a, "requests");
        return executeBatchAndWait(Arrays.asList(a));
    }
    
    public static RequestAsyncTask executeBatchAsync(final RequestBatch requestBatch) {
        Validate.notEmptyAndContainsNoNulls(requestBatch, "requests");
        final RequestAsyncTask requestAsyncTask = new RequestAsyncTask(requestBatch);
        requestAsyncTask.executeOnSettingsExecutor();
        return requestAsyncTask;
    }
    
    public static RequestAsyncTask executeBatchAsync(final Collection collection) {
        return executeBatchAsync(new RequestBatch(collection));
    }
    
    public static RequestAsyncTask executeBatchAsync(final Request... a) {
        Validate.notNull(a, "requests");
        return executeBatchAsync(Arrays.asList(a));
    }
    
    public static List executeConnectionAndWait(final HttpURLConnection httpURLConnection, final RequestBatch requestBatch) {
        final List fromHttpConnection = Response.fromHttpConnection(httpURLConnection, requestBatch);
        Utility.disconnectQuietly(httpURLConnection);
        final int size = requestBatch.size();
        if (size != fromHttpConnection.size()) {
            throw new FacebookException(String.format("Received %d responses while expecting %d", fromHttpConnection.size(), size));
        }
        runCallbacks(requestBatch, fromHttpConnection);
        final HashSet<Session> set = new HashSet<Session>();
        for (final Request request : requestBatch) {
            if (request.session != null) {
                set.add(request.session);
            }
        }
        final Iterator<Session> iterator2 = set.iterator();
        while (iterator2.hasNext()) {
            iterator2.next().extendAccessTokenIfNeeded();
        }
        return fromHttpConnection;
    }
    
    public static List executeConnectionAndWait(final HttpURLConnection httpURLConnection, final Collection collection) {
        return executeConnectionAndWait(httpURLConnection, new RequestBatch(collection));
    }
    
    public static RequestAsyncTask executeConnectionAsync(final Handler callbackHandler, final HttpURLConnection httpURLConnection, final RequestBatch requestBatch) {
        Validate.notNull(httpURLConnection, "connection");
        final RequestAsyncTask requestAsyncTask = new RequestAsyncTask(httpURLConnection, requestBatch);
        requestBatch.setCallbackHandler(callbackHandler);
        requestAsyncTask.executeOnSettingsExecutor();
        return requestAsyncTask;
    }
    
    public static RequestAsyncTask executeConnectionAsync(final HttpURLConnection httpURLConnection, final RequestBatch requestBatch) {
        return executeConnectionAsync(null, httpURLConnection, requestBatch);
    }
    
    public static RequestAsyncTask executeGraphPathRequestAsync(final Session session, final String s, final Request$Callback request$Callback) {
        return newGraphPathRequest(session, s, request$Callback).executeAsync();
    }
    
    public static RequestAsyncTask executeMeRequestAsync(final Session session, final Request$GraphUserCallback request$GraphUserCallback) {
        return newMeRequest(session, request$GraphUserCallback).executeAsync();
    }
    
    public static RequestAsyncTask executeMyFriendsRequestAsync(final Session session, final Request$GraphUserListCallback request$GraphUserListCallback) {
        return newMyFriendsRequest(session, request$GraphUserListCallback).executeAsync();
    }
    
    public static RequestAsyncTask executePlacesSearchRequestAsync(final Session session, final Location location, final int n, final int n2, final String s, final Request$GraphPlaceListCallback request$GraphPlaceListCallback) {
        return newPlacesSearchRequest(session, location, n, n2, s, request$GraphPlaceListCallback).executeAsync();
    }
    
    public static RequestAsyncTask executePostRequestAsync(final Session session, final String s, final GraphObject graphObject, final Request$Callback request$Callback) {
        return newPostRequest(session, s, graphObject, request$Callback).executeAsync();
    }
    
    public static RequestAsyncTask executeRestRequestAsync(final Session session, final String s, final Bundle bundle, final HttpMethod httpMethod) {
        return newRestRequest(session, s, bundle, httpMethod).executeAsync();
    }
    
    public static RequestAsyncTask executeStatusUpdateRequestAsync(final Session session, final String s, final Request$Callback request$Callback) {
        return newStatusUpdateRequest(session, s, request$Callback).executeAsync();
    }
    
    public static RequestAsyncTask executeUploadPhotoRequestAsync(final Session session, final Bitmap bitmap, final Request$Callback request$Callback) {
        return newUploadPhotoRequest(session, bitmap, request$Callback).executeAsync();
    }
    
    public static RequestAsyncTask executeUploadPhotoRequestAsync(final Session session, final File file, final Request$Callback request$Callback) {
        return newUploadPhotoRequest(session, file, request$Callback).executeAsync();
    }
    
    private static String getBatchAppId(final RequestBatch requestBatch) {
        if (!Utility.isNullOrEmpty(requestBatch.getBatchApplicationId())) {
            return requestBatch.getBatchApplicationId();
        }
        final Iterator<Request> iterator = requestBatch.iterator();
        while (iterator.hasNext()) {
            final Session session = iterator.next().session;
            if (session != null) {
                return session.getApplicationId();
            }
        }
        return Request.defaultBatchApplicationId;
    }
    
    public static final String getDefaultBatchApplicationId() {
        return Request.defaultBatchApplicationId;
    }
    
    private static String getMimeContentType() {
        return String.format("multipart/form-data; boundary=%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    }
    
    private static String getUserAgent() {
        if (Request.userAgent == null) {
            Request.userAgent = String.format("%s.%s", "FBAndroidSDK", "3.0.1");
        }
        return Request.userAgent;
    }
    
    private static boolean isSupportedAttachmentType(final Object o) {
        return o instanceof Bitmap || o instanceof byte[] || o instanceof ParcelFileDescriptor;
    }
    
    private static boolean isSupportedParameterType(final Object o) {
        return o instanceof String || o instanceof Boolean || o instanceof Number || o instanceof Date;
    }
    
    public static Request newGraphPathRequest(final Session session, final String s, final Request$Callback request$Callback) {
        return new Request(session, s, null, null, request$Callback);
    }
    
    public static Request newMeRequest(final Session session, final Request$GraphUserCallback request$GraphUserCallback) {
        return new Request(session, "me", null, null, new Request$1(request$GraphUserCallback));
    }
    
    public static Request newMyFriendsRequest(final Session session, final Request$GraphUserListCallback request$GraphUserListCallback) {
        return new Request(session, "me/friends", null, null, new Request$2(request$GraphUserListCallback));
    }
    
    public static Request newPlacesSearchRequest(final Session session, final Location location, final int n, final int n2, final String s, final Request$GraphPlaceListCallback request$GraphPlaceListCallback) {
        if (location == null && Utility.isNullOrEmpty(s)) {
            throw new FacebookException("Either location or searchText must be specified.");
        }
        final Bundle bundle = new Bundle(5);
        bundle.putString("type", "place");
        bundle.putInt("limit", n2);
        if (location != null) {
            bundle.putString("center", String.format(Locale.US, "%f,%f", location.getLatitude(), location.getLongitude()));
            bundle.putInt("distance", n);
        }
        if (!Utility.isNullOrEmpty(s)) {
            bundle.putString("q", s);
        }
        return new Request(session, "search", bundle, HttpMethod.GET, new Request$3(request$GraphPlaceListCallback));
    }
    
    public static Request newPostRequest(final Session session, final String s, final GraphObject graphObject, final Request$Callback request$Callback) {
        final Request request = new Request(session, s, null, HttpMethod.POST, request$Callback);
        request.graphObject = graphObject;
        return request;
    }
    
    public static Request newRestRequest(final Session session, final String restMethod, final Bundle bundle, final HttpMethod httpMethod) {
        final Request request = new Request(session, null, bundle, httpMethod);
        request.restMethod = restMethod;
        return request;
    }
    
    public static Request newStatusUpdateRequest(final Session session, final String s, final Request$Callback request$Callback) {
        final Bundle bundle = new Bundle();
        bundle.putString("message", s);
        return new Request(session, "me/feed", bundle, HttpMethod.POST, request$Callback);
    }
    
    public static Request newUploadPhotoRequest(final Session session, final Bitmap bitmap, final Request$Callback request$Callback) {
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", (Parcelable)bitmap);
        return new Request(session, "me/photos", bundle, HttpMethod.POST, request$Callback);
    }
    
    public static Request newUploadPhotoRequest(final Session session, final File file, final Request$Callback request$Callback) {
        final ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", (Parcelable)open);
        return new Request(session, "me/photos", bundle, HttpMethod.POST, request$Callback);
    }
    
    public static Request newUploadVideoRequest(final Session session, final File file, final Request$Callback request$Callback) {
        final ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable(file.getName(), (Parcelable)open);
        return new Request(session, "me/videos", bundle, HttpMethod.POST, request$Callback);
    }
    
    private static String parameterToString(final Object obj) {
        if (obj instanceof String) {
            return (String)obj;
        }
        if (obj instanceof Boolean || obj instanceof Number) {
            return obj.toString();
        }
        if (obj instanceof Date) {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
        }
        throw new IllegalArgumentException("Unsupported parameter type.");
    }
    
    private static void processGraphObject(final GraphObject graphObject, final String s, final Request$KeyValueSerializer request$KeyValueSerializer) {
        int n2;
        if (s.startsWith("me/") || s.startsWith("/me/")) {
            final int index = s.indexOf(":");
            final int index2 = s.indexOf("?");
            int n;
            if (index > 3 && (index2 == -1 || index < index2)) {
                n = 1;
            }
            else {
                n = 0;
            }
            n2 = n;
        }
        else {
            n2 = 0;
        }
        for (final Map.Entry<String, V> entry : graphObject.asMap().entrySet()) {
            processGraphObjectProperty(entry.getKey(), entry.getValue(), request$KeyValueSerializer, n2 != 0 && entry.getKey().equalsIgnoreCase("image"));
        }
    }
    
    private static void processGraphObjectProperty(final String s, final Object o, final Request$KeyValueSerializer request$KeyValueSerializer, final boolean b) {
        Object o2 = o;
        Serializable class1 = null;
        Label_0348: {
            while (true) {
                class1 = ((GraphObject)o2).getClass();
                if (GraphObject.class.isAssignableFrom((Class<?>)class1)) {
                    final JSONObject innerJSONObject = ((GraphObject)o2).getInnerJSONObject();
                    final Class<? extends JSONObject> class2 = innerJSONObject.getClass();
                    o2 = innerJSONObject;
                    class1 = class2;
                }
                else if (GraphObjectList.class.isAssignableFrom((Class<?>)class1)) {
                    final JSONArray innerJSONArray = ((GraphObjectList)o2).getInnerJSONArray();
                    final Class<? extends JSONArray> class3 = innerJSONArray.getClass();
                    o2 = innerJSONArray;
                    class1 = class3;
                }
                if (JSONObject.class.isAssignableFrom((Class<?>)class1)) {
                    final JSONObject jsonObject = (JSONObject)o2;
                    if (b) {
                        final Iterator keys = jsonObject.keys();
                        while (keys.hasNext()) {
                            final String s2 = keys.next();
                            processGraphObjectProperty(String.format("%s[%s]", s, s2), jsonObject.opt(s2), request$KeyValueSerializer, b);
                        }
                        break;
                    }
                    if (jsonObject.has("id")) {
                        o2 = jsonObject.optString("id");
                    }
                    else {
                        if (!jsonObject.has("url")) {
                            break;
                        }
                        o2 = jsonObject.optString("url");
                    }
                }
                else {
                    if (JSONArray.class.isAssignableFrom((Class<?>)class1)) {
                        final JSONArray jsonArray = (JSONArray)o2;
                        for (int length = jsonArray.length(), i = 0; i < length; ++i) {
                            processGraphObjectProperty(String.format("%s[%d]", s, i), jsonArray.opt(i), request$KeyValueSerializer, b);
                        }
                        break;
                    }
                    if (String.class.isAssignableFrom((Class<?>)class1) || Number.class.isAssignableFrom((Class<?>)class1) || Boolean.class.isAssignableFrom((Class<?>)class1)) {
                        request$KeyValueSerializer.writeString(s, o2.toString());
                        break;
                    }
                    break Label_0348;
                }
            }
            return;
        }
        if (Date.class.isAssignableFrom((Class<?>)class1)) {
            request$KeyValueSerializer.writeString(s, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date)o2));
        }
    }
    
    static void runCallbacks(final RequestBatch requestBatch, final List list) {
        final int size = requestBatch.size();
        final ArrayList<Pair> list2 = new ArrayList<Pair>();
        for (int i = 0; i < size; ++i) {
            final Request value = requestBatch.get(i);
            if (value.callback != null) {
                list2.add(new Pair((Object)value.callback, list.get(i)));
            }
        }
        if (list2.size() > 0) {
            final Request$4 request$4 = new Request$4(list2, requestBatch);
            final Handler callbackHandler = requestBatch.getCallbackHandler();
            if (callbackHandler != null) {
                callbackHandler.post((Runnable)request$4);
                return;
            }
            request$4.run();
        }
    }
    
    private static void serializeAttachments(final Bundle bundle, final Request$Serializer request$Serializer) {
        for (final String s : bundle.keySet()) {
            final Object value = bundle.get(s);
            if (isSupportedAttachmentType(value)) {
                request$Serializer.writeObject(s, value);
            }
        }
    }
    
    private static void serializeParameters(final Bundle bundle, final Request$Serializer request$Serializer) {
        for (final String s : bundle.keySet()) {
            final Object value = bundle.get(s);
            if (isSupportedParameterType(value)) {
                request$Serializer.writeObject(s, value);
            }
        }
    }
    
    private static void serializeRequestsAsJSON(final Request$Serializer request$Serializer, final Collection collection, final Bundle bundle) {
        final JSONArray jsonArray = new JSONArray();
        final Iterator<Request> iterator = collection.iterator();
        while (iterator.hasNext()) {
            iterator.next().serializeToBatch(jsonArray, bundle);
        }
        request$Serializer.writeString("batch", jsonArray.toString());
    }
    
    private void serializeToBatch(final JSONArray jsonArray, final Bundle bundle) {
        final JSONObject jsonObject = new JSONObject();
        if (this.batchEntryName != null) {
            jsonObject.put("name", (Object)this.batchEntryName);
            jsonObject.put("omit_response_on_success", this.batchEntryOmitResultOnSuccess);
        }
        if (this.batchEntryDependsOn != null) {
            jsonObject.put("depends_on", (Object)this.batchEntryDependsOn);
        }
        final String urlForBatchedRequest = this.getUrlForBatchedRequest();
        jsonObject.put("relative_url", (Object)urlForBatchedRequest);
        jsonObject.put("method", (Object)this.httpMethod);
        if (this.session != null) {
            Logger.registerAccessToken(this.session.getAccessToken());
        }
        final ArrayList<String> list = new ArrayList<String>();
        final Iterator<String> iterator = this.parameters.keySet().iterator();
        while (iterator.hasNext()) {
            final Object value = this.parameters.get((String)iterator.next());
            if (isSupportedAttachmentType(value)) {
                final String format = String.format("%s%d", "file", bundle.size());
                list.add(format);
                Utility.putObjectInBundle(bundle, format, value);
            }
        }
        if (!list.isEmpty()) {
            jsonObject.put("attached_files", (Object)TextUtils.join((CharSequence)",", (Iterable)list));
        }
        if (this.graphObject != null) {
            final ArrayList list2 = new ArrayList();
            processGraphObject(this.graphObject, urlForBatchedRequest, new Request$5(this, list2));
            jsonObject.put("body", (Object)TextUtils.join((CharSequence)"&", (Iterable)list2));
        }
        jsonArray.put((Object)jsonObject);
    }
    
    static final void serializeToUrlConnection(final RequestBatch requestBatch, final HttpURLConnection httpURLConnection) {
        final Logger logger = new Logger(LoggingBehavior.REQUESTS, "Request");
        final int size = requestBatch.size();
        HttpMethod httpMethod;
        if (size == 1) {
            httpMethod = requestBatch.get(0).httpMethod;
        }
        else {
            httpMethod = HttpMethod.POST;
        }
        httpURLConnection.setRequestMethod(httpMethod.name());
        final URL url = httpURLConnection.getURL();
        logger.append("Request:\n");
        logger.appendKeyValue("Id", requestBatch.getId());
        logger.appendKeyValue("URL", url);
        logger.appendKeyValue("Method", httpURLConnection.getRequestMethod());
        logger.appendKeyValue("User-Agent", httpURLConnection.getRequestProperty("User-Agent"));
        logger.appendKeyValue("Content-Type", httpURLConnection.getRequestProperty("Content-Type"));
        httpURLConnection.setConnectTimeout(requestBatch.getTimeout());
        httpURLConnection.setReadTimeout(requestBatch.getTimeout());
        int n;
        if (httpMethod == HttpMethod.POST) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            logger.log();
            return;
        }
        while (true) {
            httpURLConnection.setDoOutput(true);
            final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            while (true) {
                Request$Serializer request$Serializer;
                String batchAppId;
                try {
                    request$Serializer = new Request$Serializer(bufferedOutputStream, logger);
                    if (size == 1) {
                        final Request value = requestBatch.get(0);
                        logger.append("  Parameters:\n");
                        serializeParameters(value.parameters, request$Serializer);
                        logger.append("  Attachments:\n");
                        serializeAttachments(value.parameters, request$Serializer);
                        if (value.graphObject != null) {
                            processGraphObject(value.graphObject, url.getPath(), request$Serializer);
                        }
                        bufferedOutputStream.close();
                        logger.log();
                        return;
                    }
                    batchAppId = getBatchAppId(requestBatch);
                    if (Utility.isNullOrEmpty(batchAppId)) {
                        throw new FacebookException("At least one request in a batch must have an open Session, or a default app ID must be specified.");
                    }
                }
                finally {
                    bufferedOutputStream.close();
                }
                request$Serializer.writeString("batch_app_id", batchAppId);
                final Bundle bundle = new Bundle();
                serializeRequestsAsJSON(request$Serializer, requestBatch, bundle);
                logger.append("  Attachments:\n");
                serializeAttachments(bundle, request$Serializer);
                continue;
            }
        }
    }
    
    public static final void setDefaultBatchApplicationId(final String defaultBatchApplicationId) {
        Request.defaultBatchApplicationId = defaultBatchApplicationId;
    }
    
    public static HttpURLConnection toHttpConnection(final RequestBatch p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/facebook/RequestBatch.iterator:()Ljava/util/Iterator;
        //     4: astore_1       
        //     5: aload_1        
        //     6: invokeinterface java/util/Iterator.hasNext:()Z
        //    11: ifeq            29
        //    14: aload_1        
        //    15: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //    20: checkcast       Lcom/facebook/Request;
        //    23: invokespecial   com/facebook/Request.validate:()V
        //    26: goto            5
        //    29: aload_0        
        //    30: invokevirtual   com/facebook/RequestBatch.size:()I
        //    33: iconst_1       
        //    34: if_icmpne       72
        //    37: new             Ljava/net/URL;
        //    40: dup            
        //    41: aload_0        
        //    42: iconst_0       
        //    43: invokevirtual   com/facebook/RequestBatch.get:(I)Lcom/facebook/Request;
        //    46: invokevirtual   com/facebook/Request.getUrlForSingleRequest:()Ljava/lang/String;
        //    49: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    52: astore_3       
        //    53: aload_3        
        //    54: astore          4
        //    56: aload           4
        //    58: invokestatic    com/facebook/Request.createConnection:(Ljava/net/URL;)Ljava/net/HttpURLConnection;
        //    61: astore          7
        //    63: aload_0        
        //    64: aload           7
        //    66: invokestatic    com/facebook/Request.serializeToUrlConnection:(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
        //    69: aload           7
        //    71: areturn        
        //    72: new             Ljava/net/URL;
        //    75: dup            
        //    76: ldc_w           "https://graph.facebook.com"
        //    79: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    82: astore          4
        //    84: goto            56
        //    87: astore_2       
        //    88: new             Lcom/facebook/FacebookException;
        //    91: dup            
        //    92: ldc_w           "could not construct URL for request"
        //    95: aload_2        
        //    96: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //    99: athrow         
        //   100: astore          6
        //   102: new             Lcom/facebook/FacebookException;
        //   105: dup            
        //   106: ldc_w           "could not construct request body"
        //   109: aload           6
        //   111: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   114: athrow         
        //   115: astore          5
        //   117: new             Lcom/facebook/FacebookException;
        //   120: dup            
        //   121: ldc_w           "could not construct request body"
        //   124: aload           5
        //   126: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   129: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  29     53     87     100    Ljava/net/MalformedURLException;
        //  56     69     100    115    Ljava/io/IOException;
        //  56     69     115    130    Lorg/json/JSONException;
        //  72     84     87     100    Ljava/net/MalformedURLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0056:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public static HttpURLConnection toHttpConnection(final Collection collection) {
        Validate.notEmptyAndContainsNoNulls(collection, "requests");
        return toHttpConnection(new RequestBatch(collection));
    }
    
    public static HttpURLConnection toHttpConnection(final Request... a) {
        return toHttpConnection(Arrays.asList(a));
    }
    
    private static List typedListFromResponse(final Response response, final Class clazz) {
        final GraphMultiResult graphMultiResult = (GraphMultiResult)response.getGraphObjectAs(GraphMultiResult.class);
        if (graphMultiResult == null) {
            return null;
        }
        final GraphObjectList data = graphMultiResult.getData();
        if (data == null) {
            return null;
        }
        return data.castToListOf(clazz);
    }
    
    private void validate() {
        if (this.graphPath != null && this.restMethod != null) {
            throw new IllegalArgumentException("Only one of a graph path or REST method may be specified per request.");
        }
    }
    
    public final Response executeAndWait() {
        return executeAndWait(this);
    }
    
    public final RequestAsyncTask executeAsync() {
        return executeBatchAsync(this);
    }
    
    public final String getBatchEntryDependsOn() {
        return this.batchEntryDependsOn;
    }
    
    public final String getBatchEntryName() {
        return this.batchEntryName;
    }
    
    public final boolean getBatchEntryOmitResultOnSuccess() {
        return this.batchEntryOmitResultOnSuccess;
    }
    
    public final Request$Callback getCallback() {
        return this.callback;
    }
    
    public final GraphObject getGraphObject() {
        return this.graphObject;
    }
    
    public final String getGraphPath() {
        return this.graphPath;
    }
    
    public final HttpMethod getHttpMethod() {
        return this.httpMethod;
    }
    
    public final Bundle getParameters() {
        return this.parameters;
    }
    
    public final String getRestMethod() {
        return this.restMethod;
    }
    
    public final Session getSession() {
        return this.session;
    }
    
    final String getUrlForBatchedRequest() {
        if (this.overriddenURL != null) {
            throw new FacebookException("Can't override URL for a batch request");
        }
        String s;
        if (this.restMethod != null) {
            s = "method/" + this.restMethod;
        }
        else {
            s = this.graphPath;
        }
        this.addCommonParameters();
        return this.appendParametersToBaseUrl(s);
    }
    
    final String getUrlForSingleRequest() {
        if (this.overriddenURL != null) {
            return this.overriddenURL.toString();
        }
        String s;
        if (this.restMethod != null) {
            s = "https://api.facebook.com/method/" + this.restMethod;
        }
        else {
            s = "https://graph.facebook.com/" + this.graphPath;
        }
        this.addCommonParameters();
        return this.appendParametersToBaseUrl(s);
    }
    
    public final void setBatchEntryDependsOn(final String batchEntryDependsOn) {
        this.batchEntryDependsOn = batchEntryDependsOn;
    }
    
    public final void setBatchEntryName(final String batchEntryName) {
        this.batchEntryName = batchEntryName;
    }
    
    public final void setBatchEntryOmitResultOnSuccess(final boolean batchEntryOmitResultOnSuccess) {
        this.batchEntryOmitResultOnSuccess = batchEntryOmitResultOnSuccess;
    }
    
    public final void setCallback(final Request$Callback callback) {
        this.callback = callback;
    }
    
    public final void setGraphObject(final GraphObject graphObject) {
        this.graphObject = graphObject;
    }
    
    public final void setGraphPath(final String graphPath) {
        this.graphPath = graphPath;
    }
    
    public final void setHttpMethod(final HttpMethod httpMethod) {
        if (this.overriddenURL != null && httpMethod != HttpMethod.GET) {
            throw new FacebookException("Can't change HTTP method on request with overridden URL.");
        }
        HttpMethod get;
        if (httpMethod != null) {
            get = httpMethod;
        }
        else {
            get = HttpMethod.GET;
        }
        this.httpMethod = get;
    }
    
    public final void setParameters(final Bundle parameters) {
        this.parameters = parameters;
    }
    
    public final void setRestMethod(final String restMethod) {
        this.restMethod = restMethod;
    }
    
    public final void setSession(final Session session) {
        this.session = session;
    }
    
    @Override
    public final String toString() {
        return "{Request:  session: " + this.session + ", graphPath: " + this.graphPath + ", graphObject: " + this.graphObject + ", restMethod: " + this.restMethod + ", httpMethod: " + this.httpMethod + ", parameters: " + this.parameters + "}";
    }
}
