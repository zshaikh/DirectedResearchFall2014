package com.facebook;

import android.net.*;
import java.net.*;
import android.location.*;
import android.graphics.*;
import android.content.*;
import android.text.*;
import android.os.*;
import java.text.*;
import org.json.*;
import java.io.*;
import java.util.*;
import android.util.*;
import com.facebook.model.*;
import com.facebook.internal.*;

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
    private static final String MY_ACTION_FORMAT = "me/%s";
    private static final String MY_FEED = "me/feed";
    private static final String MY_FRIENDS = "me/friends";
    private static final String MY_OBJECTS_FORMAT = "me/objects/%s";
    private static final String MY_PHOTOS = "me/photos";
    private static final String MY_STAGING_RESOURCES = "me/staging_resources";
    private static final String MY_VIDEOS = "me/videos";
    private static final String OBJECT_PARAM = "object";
    private static final String PICTURE_PARAM = "picture";
    private static final String SDK_ANDROID = "android";
    private static final String SDK_PARAM = "sdk";
    private static final String SEARCH = "search";
    private static final String STAGING_PARAM = "file";
    private static final String USER_AGENT_BASE = "FBAndroidSDK";
    private static final String USER_AGENT_HEADER = "User-Agent";
    private static final String VIDEOS_SUFFIX = "/videos";
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
    private Object tag;
    
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
            this.parameters.putString("migration_bundle", "fbsdk:20131203");
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
        final List<Response> executeBatchAndWait = executeBatchAndWait(request);
        if (executeBatchAndWait == null || executeBatchAndWait.size() != 1) {
            throw new FacebookException("invalid state: expected a single response");
        }
        return executeBatchAndWait.get(0);
    }
    
    public static List<Response> executeBatchAndWait(final RequestBatch requestBatch) {
        Validate.notEmptyAndContainsNoNulls((Collection<Object>)requestBatch, "requests");
        try {
            return executeConnectionAndWait(toHttpConnection(requestBatch), requestBatch);
        }
        catch (Exception ex) {
            final List<Response> constructErrorResponses = Response.constructErrorResponses(requestBatch.getRequests(), null, new FacebookException(ex));
            runCallbacks(requestBatch, constructErrorResponses);
            return constructErrorResponses;
        }
    }
    
    public static List<Response> executeBatchAndWait(final Collection<Request> collection) {
        return executeBatchAndWait(new RequestBatch(collection));
    }
    
    public static List<Response> executeBatchAndWait(final Request... a) {
        Validate.notNull(a, "requests");
        return executeBatchAndWait(Arrays.asList(a));
    }
    
    public static RequestAsyncTask executeBatchAsync(final RequestBatch requestBatch) {
        Validate.notEmptyAndContainsNoNulls((Collection<Object>)requestBatch, "requests");
        final RequestAsyncTask requestAsyncTask = new RequestAsyncTask(requestBatch);
        requestAsyncTask.executeOnSettingsExecutor();
        return requestAsyncTask;
    }
    
    public static RequestAsyncTask executeBatchAsync(final Collection<Request> collection) {
        return executeBatchAsync(new RequestBatch(collection));
    }
    
    public static RequestAsyncTask executeBatchAsync(final Request... a) {
        Validate.notNull(a, "requests");
        return executeBatchAsync(Arrays.asList(a));
    }
    
    public static List<Response> executeConnectionAndWait(final HttpURLConnection httpURLConnection, final RequestBatch requestBatch) {
        final List<Response> fromHttpConnection = Response.fromHttpConnection(httpURLConnection, requestBatch);
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
    
    public static List<Response> executeConnectionAndWait(final HttpURLConnection httpURLConnection, final Collection<Request> collection) {
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
    
    @Deprecated
    public static RequestAsyncTask executeGraphPathRequestAsync(final Session session, final String s, final Request$Callback request$Callback) {
        return newGraphPathRequest(session, s, request$Callback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeMeRequestAsync(final Session session, final Request$GraphUserCallback request$GraphUserCallback) {
        return newMeRequest(session, request$GraphUserCallback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeMyFriendsRequestAsync(final Session session, final Request$GraphUserListCallback request$GraphUserListCallback) {
        return newMyFriendsRequest(session, request$GraphUserListCallback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executePlacesSearchRequestAsync(final Session session, final Location location, final int n, final int n2, final String s, final Request$GraphPlaceListCallback request$GraphPlaceListCallback) {
        return newPlacesSearchRequest(session, location, n, n2, s, request$GraphPlaceListCallback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executePostRequestAsync(final Session session, final String s, final GraphObject graphObject, final Request$Callback request$Callback) {
        return newPostRequest(session, s, graphObject, request$Callback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeRestRequestAsync(final Session session, final String s, final Bundle bundle, final HttpMethod httpMethod) {
        return newRestRequest(session, s, bundle, httpMethod).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeStatusUpdateRequestAsync(final Session session, final String s, final Request$Callback request$Callback) {
        return newStatusUpdateRequest(session, s, request$Callback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeUploadPhotoRequestAsync(final Session session, final Bitmap bitmap, final Request$Callback request$Callback) {
        return newUploadPhotoRequest(session, bitmap, request$Callback).executeAsync();
    }
    
    @Deprecated
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
            Request.userAgent = String.format("%s.%s", "FBAndroidSDK", "3.7.0");
        }
        return Request.userAgent;
    }
    
    private static boolean hasOnProgressCallbacks(final RequestBatch requestBatch) {
        final Iterator<RequestBatch$Callback> iterator = requestBatch.getCallbacks().iterator();
        while (iterator.hasNext()) {
            if (iterator.next() instanceof RequestBatch$OnProgressCallback) {
                return true;
            }
        }
        final Iterator<Request> iterator2 = requestBatch.iterator();
        while (iterator2.hasNext()) {
            if (iterator2.next().getCallback() instanceof Request$OnProgressCallback) {
                return true;
            }
        }
        return false;
    }
    
    private static boolean isSupportedAttachmentType(final Object o) {
        return o instanceof Bitmap || o instanceof byte[] || o instanceof ParcelFileDescriptor || o instanceof Request$ParcelFileDescriptorWithMimeType;
    }
    
    private static boolean isSupportedParameterType(final Object o) {
        return o instanceof String || o instanceof Boolean || o instanceof Number || o instanceof Date;
    }
    
    public static Request newCustomAudienceThirdPartyIdRequest(final Session session, final Context context, final Request$Callback request$Callback) {
        return newCustomAudienceThirdPartyIdRequest(session, context, null, request$Callback);
    }
    
    public static Request newCustomAudienceThirdPartyIdRequest(final Session session, final Context context, final String s, final Request$Callback request$Callback) {
        Session activeSession;
        if (session == null) {
            activeSession = Session.getActiveSession();
        }
        else {
            activeSession = session;
        }
        Session session2;
        if (activeSession != null && !activeSession.isOpened()) {
            session2 = null;
        }
        else {
            session2 = activeSession;
        }
        String str;
        if (s == null) {
            if (session2 != null) {
                str = session2.getApplicationId();
            }
            else {
                str = Utility.getMetadataApplicationId(context);
            }
        }
        else {
            str = s;
        }
        if (str == null) {
            throw new FacebookException("Facebook App ID cannot be determined");
        }
        final String string = str + "/custom_audience_third_party_id";
        final Bundle bundle = new Bundle();
        if (session2 == null) {
            final String attributionId = Settings.getAttributionId(context.getContentResolver());
            if (attributionId != null) {
                bundle.putString("udid", attributionId);
            }
        }
        if (Settings.getLimitEventAndDataUsage(context)) {
            bundle.putString("limit_event_usage", "1");
        }
        return new Request(session2, string, bundle, HttpMethod.GET, request$Callback);
    }
    
    public static Request newDeleteObjectRequest(final Session session, final String s, final Request$Callback request$Callback) {
        return new Request(session, s, null, HttpMethod.DELETE, request$Callback);
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
    
    public static Request newPostOpenGraphActionRequest(final Session session, final OpenGraphAction openGraphAction, final Request$Callback request$Callback) {
        if (openGraphAction == null) {
            throw new FacebookException("openGraphAction cannot be null");
        }
        if (Utility.isNullOrEmpty(openGraphAction.getType())) {
            throw new FacebookException("openGraphAction must have non-null 'type' property");
        }
        return newPostRequest(session, String.format("me/%s", openGraphAction.getType()), openGraphAction, request$Callback);
    }
    
    public static Request newPostOpenGraphObjectRequest(final Session session, final OpenGraphObject openGraphObject, final Request$Callback request$Callback) {
        if (openGraphObject == null) {
            throw new FacebookException("openGraphObject cannot be null");
        }
        if (Utility.isNullOrEmpty(openGraphObject.getType())) {
            throw new FacebookException("openGraphObject must have non-null 'type' property");
        }
        if (Utility.isNullOrEmpty(openGraphObject.getTitle())) {
            throw new FacebookException("openGraphObject must have non-null 'title' property");
        }
        final String format = String.format("me/objects/%s", openGraphObject.getType());
        final Bundle bundle = new Bundle();
        bundle.putString("object", openGraphObject.getInnerJSONObject().toString());
        return new Request(session, format, bundle, HttpMethod.POST, request$Callback);
    }
    
    public static Request newPostOpenGraphObjectRequest(final Session session, final String s, final String s2, final String s3, final String s4, final String s5, final GraphObject data, final Request$Callback request$Callback) {
        final OpenGraphObject forPost = OpenGraphObject$Factory.createForPost(OpenGraphObject.class, s, s2, s3, s4, s5);
        if (data != null) {
            forPost.setData(data);
        }
        return newPostOpenGraphObjectRequest(session, forPost, request$Callback);
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
        return newStatusUpdateRequest(session, s, null, (List<String>)null, request$Callback);
    }
    
    public static Request newStatusUpdateRequest(final Session session, final String s, final GraphPlace graphPlace, final List<GraphUser> list, final Request$Callback request$Callback) {
        ArrayList<String> list3;
        if (list != null) {
            final ArrayList<String> list2 = new ArrayList<String>(list.size());
            final Iterator<GraphUser> iterator = list.iterator();
            while (iterator.hasNext()) {
                list2.add(iterator.next().getId());
            }
            list3 = list2;
        }
        else {
            list3 = null;
        }
        String id;
        if (graphPlace == null) {
            id = null;
        }
        else {
            id = graphPlace.getId();
        }
        return newStatusUpdateRequest(session, s, id, list3, request$Callback);
    }
    
    private static Request newStatusUpdateRequest(final Session session, final String s, final String s2, final List<String> list, final Request$Callback request$Callback) {
        final Bundle bundle = new Bundle();
        bundle.putString("message", s);
        if (s2 != null) {
            bundle.putString("place", s2);
        }
        if (list != null && list.size() > 0) {
            bundle.putString("tags", TextUtils.join((CharSequence)",", (Iterable)list));
        }
        return new Request(session, "me/feed", bundle, HttpMethod.POST, request$Callback);
    }
    
    public static Request newUpdateOpenGraphObjectRequest(final Session session, final OpenGraphObject openGraphObject, final Request$Callback request$Callback) {
        if (openGraphObject == null) {
            throw new FacebookException("openGraphObject cannot be null");
        }
        final String id = openGraphObject.getId();
        if (id == null) {
            throw new FacebookException("openGraphObject must have an id");
        }
        final Bundle bundle = new Bundle();
        bundle.putString("object", openGraphObject.getInnerJSONObject().toString());
        return new Request(session, id, bundle, HttpMethod.POST, request$Callback);
    }
    
    public static Request newUpdateOpenGraphObjectRequest(final Session session, final String id, final String s, final String s2, final String s3, final String s4, final GraphObject data, final Request$Callback request$Callback) {
        final OpenGraphObject forPost = OpenGraphObject$Factory.createForPost(OpenGraphObject.class, null, s, s2, s3, s4);
        forPost.setId(id);
        forPost.setData(data);
        return newUpdateOpenGraphObjectRequest(session, forPost, request$Callback);
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
    
    public static Request newUploadStagingResourceWithImageRequest(final Session session, final Bitmap bitmap, final Request$Callback request$Callback) {
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", (Parcelable)bitmap);
        return new Request(session, "me/staging_resources", bundle, HttpMethod.POST, request$Callback);
    }
    
    public static Request newUploadStagingResourceWithImageRequest(final Session session, final File file, final Request$Callback request$Callback) {
        final Request$ParcelFileDescriptorWithMimeType request$ParcelFileDescriptorWithMimeType = new Request$ParcelFileDescriptorWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", (Parcelable)request$ParcelFileDescriptorWithMimeType);
        return new Request(session, "me/staging_resources", bundle, HttpMethod.POST, request$Callback);
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
        for (final Map.Entry<String, Object> entry : graphObject.asMap().entrySet()) {
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
    
    private static void processRequest(final RequestBatch requestBatch, final Logger logger, final int n, final URL url, final OutputStream outputStream) {
        final Request$Serializer request$Serializer = new Request$Serializer(outputStream, logger);
        if (n == 1) {
            final Request value = requestBatch.get(0);
            final HashMap<String, Request$Attachment> hashMap = new HashMap<String, Request$Attachment>();
            for (final String s : value.parameters.keySet()) {
                final Object value2 = value.parameters.get(s);
                if (isSupportedAttachmentType(value2)) {
                    hashMap.put(s, new Request$Attachment(value, value2));
                }
            }
            if (logger != null) {
                logger.append("  Parameters:\n");
            }
            serializeParameters(value.parameters, request$Serializer, value);
            if (logger != null) {
                logger.append("  Attachments:\n");
            }
            serializeAttachments(hashMap, request$Serializer);
            if (value.graphObject != null) {
                processGraphObject(value.graphObject, url.getPath(), request$Serializer);
            }
            return;
        }
        final String batchAppId = getBatchAppId(requestBatch);
        if (Utility.isNullOrEmpty(batchAppId)) {
            throw new FacebookException("At least one request in a batch must have an open Session, or a default app ID must be specified.");
        }
        request$Serializer.writeString("batch_app_id", batchAppId);
        final HashMap<String, Request$Attachment> hashMap2 = new HashMap<String, Request$Attachment>();
        serializeRequestsAsJSON(request$Serializer, requestBatch, hashMap2);
        if (logger != null) {
            logger.append("  Attachments:\n");
        }
        serializeAttachments(hashMap2, request$Serializer);
    }
    
    static void runCallbacks(final RequestBatch requestBatch, final List<Response> list) {
        final int size = requestBatch.size();
        final ArrayList<Pair> list2 = new ArrayList<Pair>();
        for (int i = 0; i < size; ++i) {
            final Request value = requestBatch.get(i);
            if (value.callback != null) {
                list2.add(new Pair((Object)value.callback, (Object)list.get(i)));
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
    
    private static void serializeAttachments(final Map<String, Request$Attachment> map, final Request$Serializer request$Serializer) {
        for (final String s : map.keySet()) {
            final Request$Attachment request$Attachment = map.get(s);
            if (isSupportedAttachmentType(request$Attachment.getValue())) {
                request$Serializer.writeObject(s, request$Attachment.getValue(), request$Attachment.getRequest());
            }
        }
    }
    
    private static void serializeParameters(final Bundle bundle, final Request$Serializer request$Serializer, final Request request) {
        for (final String s : bundle.keySet()) {
            final Object value = bundle.get(s);
            if (isSupportedParameterType(value)) {
                request$Serializer.writeObject(s, value, request);
            }
        }
    }
    
    private static void serializeRequestsAsJSON(final Request$Serializer request$Serializer, final Collection<Request> collection, final Map<String, Request$Attachment> map) {
        final JSONArray jsonArray = new JSONArray();
        final Iterator<Request> iterator = collection.iterator();
        while (iterator.hasNext()) {
            iterator.next().serializeToBatch(jsonArray, map);
        }
        request$Serializer.writeRequestsAsJson("batch", jsonArray, collection);
    }
    
    private void serializeToBatch(final JSONArray jsonArray, final Map<String, Request$Attachment> map) {
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
                final String format = String.format("%s%d", "file", map.size());
                list.add(format);
                map.put(format, new Request$Attachment(this, value));
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
    
    static final void serializeToUrlConnection(final RequestBatch p0, final HttpURLConnection p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/facebook/internal/Logger;
        //     3: dup            
        //     4: getstatic       com/facebook/LoggingBehavior.REQUESTS:Lcom/facebook/LoggingBehavior;
        //     7: ldc_w           "Request"
        //    10: invokespecial   com/facebook/internal/Logger.<init>:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
        //    13: astore_2       
        //    14: aload_0        
        //    15: invokevirtual   com/facebook/RequestBatch.size:()I
        //    18: istore_3       
        //    19: iload_3        
        //    20: iconst_1       
        //    21: if_icmpne       148
        //    24: aload_0        
        //    25: iconst_0       
        //    26: invokevirtual   com/facebook/RequestBatch.get:(I)Lcom/facebook/Request;
        //    29: getfield        com/facebook/Request.httpMethod:Lcom/facebook/HttpMethod;
        //    32: astore          4
        //    34: aload_1        
        //    35: aload           4
        //    37: invokevirtual   com/facebook/HttpMethod.name:()Ljava/lang/String;
        //    40: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
        //    43: aload_1        
        //    44: invokevirtual   java/net/HttpURLConnection.getURL:()Ljava/net/URL;
        //    47: astore          5
        //    49: aload_2        
        //    50: ldc_w           "Request:\n"
        //    53: invokevirtual   com/facebook/internal/Logger.append:(Ljava/lang/String;)V
        //    56: aload_2        
        //    57: ldc_w           "Id"
        //    60: aload_0        
        //    61: invokevirtual   com/facebook/RequestBatch.getId:()Ljava/lang/String;
        //    64: invokevirtual   com/facebook/internal/Logger.appendKeyValue:(Ljava/lang/String;Ljava/lang/Object;)V
        //    67: aload_2        
        //    68: ldc_w           "URL"
        //    71: aload           5
        //    73: invokevirtual   com/facebook/internal/Logger.appendKeyValue:(Ljava/lang/String;Ljava/lang/Object;)V
        //    76: aload_2        
        //    77: ldc_w           "Method"
        //    80: aload_1        
        //    81: invokevirtual   java/net/HttpURLConnection.getRequestMethod:()Ljava/lang/String;
        //    84: invokevirtual   com/facebook/internal/Logger.appendKeyValue:(Ljava/lang/String;Ljava/lang/Object;)V
        //    87: aload_2        
        //    88: ldc             "User-Agent"
        //    90: aload_1        
        //    91: ldc             "User-Agent"
        //    93: invokevirtual   java/net/HttpURLConnection.getRequestProperty:(Ljava/lang/String;)Ljava/lang/String;
        //    96: invokevirtual   com/facebook/internal/Logger.appendKeyValue:(Ljava/lang/String;Ljava/lang/Object;)V
        //    99: aload_2        
        //   100: ldc             "Content-Type"
        //   102: aload_1        
        //   103: ldc             "Content-Type"
        //   105: invokevirtual   java/net/HttpURLConnection.getRequestProperty:(Ljava/lang/String;)Ljava/lang/String;
        //   108: invokevirtual   com/facebook/internal/Logger.appendKeyValue:(Ljava/lang/String;Ljava/lang/Object;)V
        //   111: aload_1        
        //   112: aload_0        
        //   113: invokevirtual   com/facebook/RequestBatch.getTimeout:()I
        //   116: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
        //   119: aload_1        
        //   120: aload_0        
        //   121: invokevirtual   com/facebook/RequestBatch.getTimeout:()I
        //   124: invokevirtual   java/net/HttpURLConnection.setReadTimeout:(I)V
        //   127: aload           4
        //   129: getstatic       com/facebook/HttpMethod.POST:Lcom/facebook/HttpMethod;
        //   132: if_acmpne       156
        //   135: iconst_1       
        //   136: istore          6
        //   138: iload           6
        //   140: ifne            162
        //   143: aload_2        
        //   144: invokevirtual   com/facebook/internal/Logger.log:()V
        //   147: return         
        //   148: getstatic       com/facebook/HttpMethod.POST:Lcom/facebook/HttpMethod;
        //   151: astore          4
        //   153: goto            34
        //   156: iconst_0       
        //   157: istore          6
        //   159: goto            138
        //   162: aload_1        
        //   163: iconst_1       
        //   164: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
        //   167: aload_0        
        //   168: invokestatic    com/facebook/Request.hasOnProgressCallbacks:(Lcom/facebook/RequestBatch;)Z
        //   171: ifeq            257
        //   174: new             Lcom/facebook/ProgressNoopOutputStream;
        //   177: dup            
        //   178: aload_0        
        //   179: invokevirtual   com/facebook/RequestBatch.getCallbackHandler:()Landroid/os/Handler;
        //   182: invokespecial   com/facebook/ProgressNoopOutputStream.<init>:(Landroid/os/Handler;)V
        //   185: astore          9
        //   187: aload_0        
        //   188: aconst_null    
        //   189: iload_3        
        //   190: aload           5
        //   192: aload           9
        //   194: invokestatic    com/facebook/Request.processRequest:(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
        //   197: aload           9
        //   199: invokevirtual   com/facebook/ProgressNoopOutputStream.getMaxProgress:()I
        //   202: istore          10
        //   204: aload           9
        //   206: invokevirtual   com/facebook/ProgressNoopOutputStream.getProgressMap:()Ljava/util/Map;
        //   209: astore          11
        //   211: new             Lcom/facebook/ProgressOutputStream;
        //   214: dup            
        //   215: new             Ljava/io/BufferedOutputStream;
        //   218: dup            
        //   219: aload_1        
        //   220: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
        //   223: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;)V
        //   226: aload_0        
        //   227: aload           11
        //   229: iload           10
        //   231: i2l            
        //   232: invokespecial   com/facebook/ProgressOutputStream.<init>:(Ljava/io/OutputStream;Lcom/facebook/RequestBatch;Ljava/util/Map;J)V
        //   235: astore          12
        //   237: aload_0        
        //   238: aload_2        
        //   239: iload_3        
        //   240: aload           5
        //   242: aload           12
        //   244: invokestatic    com/facebook/Request.processRequest:(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
        //   247: aload           12
        //   249: invokevirtual   java/io/OutputStream.close:()V
        //   252: aload_2        
        //   253: invokevirtual   com/facebook/internal/Logger.log:()V
        //   256: return         
        //   257: new             Ljava/io/BufferedOutputStream;
        //   260: dup            
        //   261: aload_1        
        //   262: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
        //   265: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;)V
        //   268: astore          12
        //   270: goto            237
        //   273: astore          7
        //   275: aconst_null    
        //   276: astore          8
        //   278: aload           8
        //   280: invokevirtual   java/io/OutputStream.close:()V
        //   283: aload           7
        //   285: athrow         
        //   286: astore          13
        //   288: aload           12
        //   290: astore          8
        //   292: aload           13
        //   294: astore          7
        //   296: goto            278
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  167    237    273    278    Any
        //  237    247    286    299    Any
        //  257    270    273    278    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0237:
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
        //    76: invokestatic    com/facebook/internal/ServerProtocol.getGraphUrlBase:()Ljava/lang/String;
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
    
    public static HttpURLConnection toHttpConnection(final Collection<Request> collection) {
        Validate.notEmptyAndContainsNoNulls((Collection<Object>)collection, "requests");
        return toHttpConnection(new RequestBatch(collection));
    }
    
    public static HttpURLConnection toHttpConnection(final Request... a) {
        return toHttpConnection(Arrays.asList(a));
    }
    
    private static <T extends GraphObject> List<T> typedListFromResponse(final Response response, final Class<T> clazz) {
        final GraphMultiResult graphMultiResult = response.getGraphObjectAs(GraphMultiResult.class);
        if (graphMultiResult == null) {
            return null;
        }
        final GraphObjectList<GraphObject> data = graphMultiResult.getData();
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
    
    public final Object getTag() {
        return this.tag;
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
            s = String.format("%s/%s", ServerProtocol.getRestUrlBase(), this.restMethod);
        }
        else if (this.getHttpMethod() == HttpMethod.POST && this.graphPath != null && this.graphPath.endsWith("/videos")) {
            s = String.format("%s/%s", ServerProtocol.getGraphVideoUrlBase(), this.graphPath);
        }
        else {
            s = String.format("%s/%s", ServerProtocol.getGraphUrlBase(), this.graphPath);
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
    
    public final void setTag(final Object tag) {
        this.tag = tag;
    }
    
    @Override
    public final String toString() {
        return "{Request:  session: " + this.session + ", graphPath: " + this.graphPath + ", graphObject: " + this.graphObject + ", restMethod: " + this.restMethod + ", httpMethod: " + this.httpMethod + ", parameters: " + this.parameters + "}";
    }
}
