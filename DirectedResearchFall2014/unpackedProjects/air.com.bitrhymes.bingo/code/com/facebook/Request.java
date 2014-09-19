package com.facebook;

import android.net.*;
import android.location.*;
import android.content.*;
import android.text.*;
import java.text.*;
import java.util.*;
import android.util.*;
import org.json.*;
import java.net.*;
import com.facebook.model.*;
import com.facebook.internal.*;
import android.os.*;
import android.graphics.*;
import java.io.*;

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
    private static String defaultBatchApplicationId;
    private static volatile String userAgent;
    private String batchEntryDependsOn;
    private String batchEntryName;
    private boolean batchEntryOmitResultOnSuccess;
    private Callback callback;
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
    
    public Request(final Session session, final String graphPath, final Bundle bundle, final HttpMethod httpMethod, final Callback callback) {
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
            this.parameters.putString("migration_bundle", "fbsdk:20130708");
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
    
    static HttpURLConnection createConnection(final URL url) throws IOException {
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
    public static RequestAsyncTask executeGraphPathRequestAsync(final Session session, final String s, final Callback callback) {
        return newGraphPathRequest(session, s, callback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeMeRequestAsync(final Session session, final GraphUserCallback graphUserCallback) {
        return newMeRequest(session, graphUserCallback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeMyFriendsRequestAsync(final Session session, final GraphUserListCallback graphUserListCallback) {
        return newMyFriendsRequest(session, graphUserListCallback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executePlacesSearchRequestAsync(final Session session, final Location location, final int n, final int n2, final String s, final GraphPlaceListCallback graphPlaceListCallback) {
        return newPlacesSearchRequest(session, location, n, n2, s, graphPlaceListCallback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executePostRequestAsync(final Session session, final String s, final GraphObject graphObject, final Callback callback) {
        return newPostRequest(session, s, graphObject, callback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeRestRequestAsync(final Session session, final String s, final Bundle bundle, final HttpMethod httpMethod) {
        return newRestRequest(session, s, bundle, httpMethod).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeStatusUpdateRequestAsync(final Session session, final String s, final Callback callback) {
        return newStatusUpdateRequest(session, s, callback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeUploadPhotoRequestAsync(final Session session, final Bitmap bitmap, final Callback callback) {
        return newUploadPhotoRequest(session, bitmap, callback).executeAsync();
    }
    
    @Deprecated
    public static RequestAsyncTask executeUploadPhotoRequestAsync(final Session session, final File file, final Callback callback) throws FileNotFoundException {
        return newUploadPhotoRequest(session, file, callback).executeAsync();
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
            Request.userAgent = String.format("%s.%s", "FBAndroidSDK", "3.5.2");
        }
        return Request.userAgent;
    }
    
    private static boolean isSupportedAttachmentType(final Object o) {
        return o instanceof Bitmap || o instanceof byte[] || o instanceof ParcelFileDescriptor || o instanceof ParcelFileDescriptorWithMimeType;
    }
    
    private static boolean isSupportedParameterType(final Object o) {
        return o instanceof String || o instanceof Boolean || o instanceof Number || o instanceof Date;
    }
    
    public static Request newCustomAudienceThirdPartyIdRequest(final Session session, final Context context, final Callback callback) {
        return newCustomAudienceThirdPartyIdRequest(session, context, null, callback);
    }
    
    public static Request newCustomAudienceThirdPartyIdRequest(Session activeSession, final Context context, String obj, final Callback callback) {
        if (activeSession == null) {
            activeSession = Session.getActiveSession();
        }
        if (activeSession != null && !activeSession.isOpened()) {
            activeSession = null;
        }
        if (obj == null) {
            if (activeSession != null) {
                obj = activeSession.getApplicationId();
            }
            else {
                obj = Utility.getMetadataApplicationId(context);
            }
        }
        if (obj == null) {
            throw new FacebookException("Facebook App ID cannot be determined");
        }
        final String string = String.valueOf(obj) + "/custom_audience_third_party_id";
        final Bundle bundle = new Bundle();
        if (activeSession == null) {
            final String attributionId = Settings.getAttributionId(context.getContentResolver());
            if (attributionId != null) {
                bundle.putString("udid", attributionId);
            }
        }
        if (AppEventsLogger.getLimitEventUsage(context)) {
            bundle.putString("limit_event_usage", "1");
        }
        return new Request(activeSession, string, bundle, HttpMethod.GET, callback);
    }
    
    public static Request newDeleteObjectRequest(final Session session, final String s, final Callback callback) {
        return new Request(session, s, null, HttpMethod.DELETE, callback);
    }
    
    public static Request newGraphPathRequest(final Session session, final String s, final Callback callback) {
        return new Request(session, s, null, null, callback);
    }
    
    public static Request newMeRequest(final Session session, final GraphUserCallback graphUserCallback) {
        return new Request(session, "me", null, null, (Callback)new Callback() {
            @Override
            public void onCompleted(final Response response) {
                if (graphUserCallback != null) {
                    graphUserCallback.onCompleted(response.getGraphObjectAs(GraphUser.class), response);
                }
            }
        });
    }
    
    public static Request newMyFriendsRequest(final Session session, final GraphUserListCallback graphUserListCallback) {
        return new Request(session, "me/friends", null, null, (Callback)new Callback() {
            @Override
            public void onCompleted(final Response response) {
                if (graphUserListCallback != null) {
                    graphUserListCallback.onCompleted(typedListFromResponse(response, (Class<GraphObject>)GraphUser.class), response);
                }
            }
        });
    }
    
    public static Request newPlacesSearchRequest(final Session session, final Location location, final int n, final int n2, final String s, final GraphPlaceListCallback graphPlaceListCallback) {
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
        return new Request(session, "search", bundle, HttpMethod.GET, (Callback)new Callback() {
            @Override
            public void onCompleted(final Response response) {
                if (graphPlaceListCallback != null) {
                    graphPlaceListCallback.onCompleted(typedListFromResponse(response, (Class<GraphObject>)GraphPlace.class), response);
                }
            }
        });
    }
    
    public static Request newPostOpenGraphActionRequest(final Session session, final OpenGraphAction openGraphAction, final Callback callback) {
        if (openGraphAction == null) {
            throw new FacebookException("openGraphAction cannot be null");
        }
        if (Utility.isNullOrEmpty(openGraphAction.getType())) {
            throw new FacebookException("openGraphAction must have non-null 'type' property");
        }
        return newPostRequest(session, String.format("me/%s", openGraphAction.getType()), openGraphAction, callback);
    }
    
    public static Request newPostOpenGraphObjectRequest(final Session session, final OpenGraphObject openGraphObject, final Callback callback) {
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
        return new Request(session, format, bundle, HttpMethod.POST, callback);
    }
    
    public static Request newPostOpenGraphObjectRequest(final Session session, final String s, final String s2, final String s3, final String s4, final String s5, final GraphObject data, final Callback callback) {
        final OpenGraphObject forPost = OpenGraphObject.Factory.createForPost(OpenGraphObject.class, s, s2, s3, s4, s5);
        if (data != null) {
            forPost.setData(data);
        }
        return newPostOpenGraphObjectRequest(session, forPost, callback);
    }
    
    public static Request newPostRequest(final Session session, final String s, final GraphObject graphObject, final Callback callback) {
        final Request request = new Request(session, s, null, HttpMethod.POST, callback);
        request.setGraphObject(graphObject);
        return request;
    }
    
    public static Request newRestRequest(final Session session, final String restMethod, final Bundle bundle, final HttpMethod httpMethod) {
        final Request request = new Request(session, null, bundle, httpMethod);
        request.setRestMethod(restMethod);
        return request;
    }
    
    public static Request newStatusUpdateRequest(final Session session, final String s, final Callback callback) {
        return newStatusUpdateRequest(session, s, null, (List<String>)null, callback);
    }
    
    public static Request newStatusUpdateRequest(final Session session, final String s, final GraphPlace graphPlace, final List<GraphUser> list, final Callback callback) {
        List<String> list2 = null;
        if (list != null) {
            list2 = new ArrayList<String>(list.size());
            final Iterator<GraphUser> iterator = list.iterator();
            while (iterator.hasNext()) {
                list2.add(iterator.next().getId());
            }
        }
        String id;
        if (graphPlace == null) {
            id = null;
        }
        else {
            id = graphPlace.getId();
        }
        return newStatusUpdateRequest(session, s, id, list2, callback);
    }
    
    private static Request newStatusUpdateRequest(final Session session, final String s, final String s2, final List<String> list, final Callback callback) {
        final Bundle bundle = new Bundle();
        bundle.putString("message", s);
        if (s2 != null) {
            bundle.putString("place", s2);
        }
        if (list != null && list.size() > 0) {
            bundle.putString("tags", TextUtils.join((CharSequence)",", (Iterable)list));
        }
        return new Request(session, "me/feed", bundle, HttpMethod.POST, callback);
    }
    
    public static Request newUpdateOpenGraphObjectRequest(final Session session, final OpenGraphObject openGraphObject, final Callback callback) {
        if (openGraphObject == null) {
            throw new FacebookException("openGraphObject cannot be null");
        }
        final String id = openGraphObject.getId();
        if (id == null) {
            throw new FacebookException("openGraphObject must have an id");
        }
        final Bundle bundle = new Bundle();
        bundle.putString("object", openGraphObject.getInnerJSONObject().toString());
        return new Request(session, id, bundle, HttpMethod.POST, callback);
    }
    
    public static Request newUpdateOpenGraphObjectRequest(final Session session, final String id, final String s, final String s2, final String s3, final String s4, final GraphObject data, final Callback callback) {
        final OpenGraphObject forPost = OpenGraphObject.Factory.createForPost(OpenGraphObject.class, null, s, s2, s3, s4);
        forPost.setId(id);
        forPost.setData(data);
        return newUpdateOpenGraphObjectRequest(session, forPost, callback);
    }
    
    public static Request newUploadPhotoRequest(final Session session, final Bitmap bitmap, final Callback callback) {
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", (Parcelable)bitmap);
        return new Request(session, "me/photos", bundle, HttpMethod.POST, callback);
    }
    
    public static Request newUploadPhotoRequest(final Session session, final File file, final Callback callback) throws FileNotFoundException {
        final ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", (Parcelable)open);
        return new Request(session, "me/photos", bundle, HttpMethod.POST, callback);
    }
    
    public static Request newUploadStagingResourceWithImageRequest(final Session session, final Bitmap bitmap, final Callback callback) {
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", (Parcelable)bitmap);
        return new Request(session, "me/staging_resources", bundle, HttpMethod.POST, callback);
    }
    
    public static Request newUploadStagingResourceWithImageRequest(final Session session, final File file, final Callback callback) throws FileNotFoundException {
        final ParcelFileDescriptorWithMimeType parcelFileDescriptorWithMimeType = new ParcelFileDescriptorWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", (Parcelable)parcelFileDescriptorWithMimeType);
        return new Request(session, "me/staging_resources", bundle, HttpMethod.POST, callback);
    }
    
    public static Request newUploadVideoRequest(final Session session, final File file, final Callback callback) throws FileNotFoundException {
        final ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
        final Bundle bundle = new Bundle(1);
        bundle.putParcelable(file.getName(), (Parcelable)open);
        return new Request(session, "me/videos", bundle, HttpMethod.POST, callback);
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
    
    private static void processGraphObject(final GraphObject graphObject, final String s, final KeyValueSerializer keyValueSerializer) throws IOException {
        boolean b = false;
        Label_0064: {
            if (!s.startsWith("me/")) {
                final boolean startsWith = s.startsWith("/me/");
                b = false;
                if (!startsWith) {
                    break Label_0064;
                }
            }
            final int index = s.indexOf(":");
            final int index2 = s.indexOf("?");
            b = (index > 3 && (index2 == -1 || index < index2));
        }
        for (final Map.Entry<String, Object> entry : graphObject.asMap().entrySet()) {
            processGraphObjectProperty(entry.getKey(), entry.getValue(), keyValueSerializer, b && entry.getKey().equalsIgnoreCase("image"));
        }
    }
    
    private static void processGraphObjectProperty(final String s, Object o, final KeyValueSerializer keyValueSerializer, final boolean b) throws IOException {
        Class<?> clazz = o.getClass();
        if (GraphObject.class.isAssignableFrom(clazz)) {
            o = ((GraphObject)o).getInnerJSONObject();
            clazz = o.getClass();
        }
        else if (GraphObjectList.class.isAssignableFrom(clazz)) {
            o = ((GraphObjectList)o).getInnerJSONArray();
            clazz = o.getClass();
        }
        if (JSONObject.class.isAssignableFrom(clazz)) {
            final JSONObject jsonObject = (JSONObject)o;
            if (b) {
                final Iterator keys = jsonObject.keys();
                while (keys.hasNext()) {
                    final String s2 = keys.next();
                    processGraphObjectProperty(String.format("%s[%s]", s, s2), jsonObject.opt(s2), keyValueSerializer, b);
                }
            }
            else {
                if (jsonObject.has("id")) {
                    processGraphObjectProperty(s, jsonObject.optString("id"), keyValueSerializer, b);
                    return;
                }
                if (jsonObject.has("url")) {
                    processGraphObjectProperty(s, jsonObject.optString("url"), keyValueSerializer, b);
                }
            }
        }
        else if (JSONArray.class.isAssignableFrom(clazz)) {
            final JSONArray jsonArray = (JSONArray)o;
            for (int length = jsonArray.length(), i = 0; i < length; ++i) {
                processGraphObjectProperty(String.format("%s[%d]", s, i), jsonArray.opt(i), keyValueSerializer, b);
            }
        }
        else {
            if (String.class.isAssignableFrom(clazz) || Number.class.isAssignableFrom(clazz) || Boolean.class.isAssignableFrom(clazz)) {
                keyValueSerializer.writeString(s, o.toString());
                return;
            }
            if (Date.class.isAssignableFrom(clazz)) {
                keyValueSerializer.writeString(s, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date)o));
            }
        }
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
            final Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    for (final Pair pair : list2) {
                        ((Callback)pair.first).onCompleted((Response)pair.second);
                    }
                    final Iterator<RequestBatch.Callback> iterator2 = requestBatch.getCallbacks().iterator();
                    while (iterator2.hasNext()) {
                        ((RequestBatch.Callback)iterator2.next()).onBatchCompleted(requestBatch);
                    }
                }
            };
            final Handler callbackHandler = requestBatch.getCallbackHandler();
            if (callbackHandler != null) {
                callbackHandler.post((Runnable)runnable);
                return;
            }
            runnable.run();
        }
    }
    
    private static void serializeAttachments(final Bundle bundle, final Serializer serializer) throws IOException {
        for (final String s : bundle.keySet()) {
            final Object value = bundle.get(s);
            if (isSupportedAttachmentType(value)) {
                serializer.writeObject(s, value);
            }
        }
    }
    
    private static void serializeParameters(final Bundle bundle, final Serializer serializer) throws IOException {
        for (final String s : bundle.keySet()) {
            final Object value = bundle.get(s);
            if (isSupportedParameterType(value)) {
                serializer.writeObject(s, value);
            }
        }
    }
    
    private static void serializeRequestsAsJSON(final Serializer serializer, final Collection<Request> collection, final Bundle bundle) throws JSONException, IOException {
        final JSONArray jsonArray = new JSONArray();
        final Iterator<Request> iterator = collection.iterator();
        while (iterator.hasNext()) {
            iterator.next().serializeToBatch(jsonArray, bundle);
        }
        serializer.writeString("batch", jsonArray.toString());
    }
    
    private void serializeToBatch(final JSONArray jsonArray, final Bundle bundle) throws JSONException, IOException {
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
            processGraphObject(this.graphObject, urlForBatchedRequest, (KeyValueSerializer)new KeyValueSerializer() {
                @Override
                public void writeString(final String s, final String s2) throws IOException {
                    list2.add(String.format("%s=%s", s, URLEncoder.encode(s2, "UTF-8")));
                }
            });
            jsonObject.put("body", (Object)TextUtils.join((CharSequence)"&", (Iterable)list2));
        }
        jsonArray.put((Object)jsonObject);
    }
    
    static final void serializeToUrlConnection(final RequestBatch requestBatch, final HttpURLConnection httpURLConnection) throws IOException, JSONException {
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
                Serializer serializer;
                String batchAppId;
                try {
                    serializer = new Serializer(bufferedOutputStream, logger);
                    if (size == 1) {
                        final Request value = requestBatch.get(0);
                        logger.append("  Parameters:\n");
                        serializeParameters(value.parameters, serializer);
                        logger.append("  Attachments:\n");
                        serializeAttachments(value.parameters, serializer);
                        if (value.graphObject != null) {
                            processGraphObject(value.graphObject, url.getPath(), (KeyValueSerializer)serializer);
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
                serializer.writeString("batch_app_id", batchAppId);
                final Bundle bundle = new Bundle();
                serializeRequestsAsJSON(serializer, requestBatch, bundle);
                logger.append("  Attachments:\n");
                serializeAttachments(bundle, serializer);
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
        //    11: ifne            53
        //    14: aload_0        
        //    15: invokevirtual   com/facebook/RequestBatch.size:()I
        //    18: iconst_1       
        //    19: if_icmpne       68
        //    22: new             Ljava/net/URL;
        //    25: dup            
        //    26: aload_0        
        //    27: iconst_0       
        //    28: invokevirtual   com/facebook/RequestBatch.get:(I)Lcom/facebook/Request;
        //    31: invokevirtual   com/facebook/Request.getUrlForSingleRequest:()Ljava/lang/String;
        //    34: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    37: astore_3       
        //    38: aload_3        
        //    39: invokestatic    com/facebook/Request.createConnection:(Ljava/net/URL;)Ljava/net/HttpURLConnection;
        //    42: astore          6
        //    44: aload_0        
        //    45: aload           6
        //    47: invokestatic    com/facebook/Request.serializeToUrlConnection:(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
        //    50: aload           6
        //    52: areturn        
        //    53: aload_1        
        //    54: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //    59: checkcast       Lcom/facebook/Request;
        //    62: invokespecial   com/facebook/Request.validate:()V
        //    65: goto            5
        //    68: new             Ljava/net/URL;
        //    71: dup            
        //    72: invokestatic    com/facebook/internal/ServerProtocol.getGraphUrlBase:()Ljava/lang/String;
        //    75: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    78: astore_3       
        //    79: goto            38
        //    82: astore_2       
        //    83: new             Lcom/facebook/FacebookException;
        //    86: dup            
        //    87: ldc_w           "could not construct URL for request"
        //    90: aload_2        
        //    91: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //    94: athrow         
        //    95: astore          5
        //    97: new             Lcom/facebook/FacebookException;
        //   100: dup            
        //   101: ldc_w           "could not construct request body"
        //   104: aload           5
        //   106: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   109: athrow         
        //   110: astore          4
        //   112: new             Lcom/facebook/FacebookException;
        //   115: dup            
        //   116: ldc_w           "could not construct request body"
        //   119: aload           4
        //   121: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   124: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  14     38     82     95     Ljava/net/MalformedURLException;
        //  38     50     95     110    Ljava/io/IOException;
        //  38     50     110    125    Lorg/json/JSONException;
        //  68     79     82     95     Ljava/net/MalformedURLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0038:
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
    
    public final Callback getCallback() {
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
    
    public final void setCallback(final Callback callback) {
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
    public String toString() {
        return "{Request: " + " session: " + this.session + ", graphPath: " + this.graphPath + ", graphObject: " + this.graphObject + ", restMethod: " + this.restMethod + ", httpMethod: " + this.httpMethod + ", parameters: " + this.parameters + "}";
    }
    
    public interface Callback
    {
        void onCompleted(Response p0);
    }
    
    public interface GraphPlaceListCallback
    {
        void onCompleted(List<GraphPlace> p0, Response p1);
    }
    
    public interface GraphUserCallback
    {
        void onCompleted(GraphUser p0, Response p1);
    }
    
    public interface GraphUserListCallback
    {
        void onCompleted(List<GraphUser> p0, Response p1);
    }
    
    private interface KeyValueSerializer
    {
        void writeString(String p0, String p1) throws IOException;
    }
    
    private static class ParcelFileDescriptorWithMimeType implements Parcelable
    {
        public static final Parcelable$Creator<ParcelFileDescriptorWithMimeType> CREATOR;
        private final ParcelFileDescriptor fileDescriptor;
        private final String mimeType;
        
        static {
            CREATOR = (Parcelable$Creator)new Parcelable$Creator<ParcelFileDescriptorWithMimeType>() {
                public ParcelFileDescriptorWithMimeType createFromParcel(final Parcel parcel) {
                    return new ParcelFileDescriptorWithMimeType(parcel, null);
                }
                
                public ParcelFileDescriptorWithMimeType[] newArray(final int n) {
                    return new ParcelFileDescriptorWithMimeType[n];
                }
            };
        }
        
        private ParcelFileDescriptorWithMimeType(final Parcel parcel) {
            super();
            this.mimeType = parcel.readString();
            this.fileDescriptor = parcel.readFileDescriptor();
        }
        
        public ParcelFileDescriptorWithMimeType(final ParcelFileDescriptor fileDescriptor, final String mimeType) {
            super();
            this.mimeType = mimeType;
            this.fileDescriptor = fileDescriptor;
        }
        
        public int describeContents() {
            return 1;
        }
        
        public ParcelFileDescriptor getFileDescriptor() {
            return this.fileDescriptor;
        }
        
        public String getMimeType() {
            return this.mimeType;
        }
        
        public void writeToParcel(final Parcel parcel, final int n) {
            parcel.writeString(this.mimeType);
            parcel.writeFileDescriptor(this.fileDescriptor.getFileDescriptor());
        }
    }
    
    private static class Serializer implements KeyValueSerializer
    {
        private boolean firstWrite;
        private final Logger logger;
        private final BufferedOutputStream outputStream;
        
        public Serializer(final BufferedOutputStream outputStream, final Logger logger) {
            super();
            this.firstWrite = true;
            this.outputStream = outputStream;
            this.logger = logger;
        }
        
        public void write(final String format, final Object... args) throws IOException {
            if (this.firstWrite) {
                this.outputStream.write("--".getBytes());
                this.outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
                this.outputStream.write("\r\n".getBytes());
                this.firstWrite = false;
            }
            this.outputStream.write(String.format(format, args).getBytes());
        }
        
        public void writeBitmap(final String str, final Bitmap bitmap) throws IOException {
            this.writeContentDisposition(str, str, "image/png");
            bitmap.compress(Bitmap$CompressFormat.PNG, 100, (OutputStream)this.outputStream);
            this.writeLine("", new Object[0]);
            this.writeRecordBoundary();
            this.logger.appendKeyValue("    " + str, "<Image>");
        }
        
        public void writeBytes(final String str, final byte[] b) throws IOException {
            this.writeContentDisposition(str, str, "content/unknown");
            this.outputStream.write(b);
            this.writeLine("", new Object[0]);
            this.writeRecordBoundary();
            this.logger.appendKeyValue("    " + str, String.format("<Data: %d>", b.length));
        }
        
        public void writeContentDisposition(final String s, final String s2, final String s3) throws IOException {
            this.write("Content-Disposition: form-data; name=\"%s\"", s);
            if (s2 != null) {
                this.write("; filename=\"%s\"", s2);
            }
            this.writeLine("", new Object[0]);
            if (s3 != null) {
                this.writeLine("%s: %s", "Content-Type", s3);
            }
            this.writeLine("", new Object[0]);
        }
        
        public void writeFile(final String p0, final ParcelFileDescriptor p1, final String p2) throws IOException {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_3        
            //     1: ifnonnull       7
            //     4: ldc             "content/unknown"
            //     6: astore_3       
            //     7: aload_0        
            //     8: aload_1        
            //     9: aload_1        
            //    10: aload_3        
            //    11: invokevirtual   com/facebook/Request$Serializer.writeContentDisposition:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
            //    14: aconst_null    
            //    15: astore          4
            //    17: aconst_null    
            //    18: astore          5
            //    20: iconst_0       
            //    21: istore          6
            //    23: new             Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
            //    26: dup            
            //    27: aload_2        
            //    28: invokespecial   android/os/ParcelFileDescriptor$AutoCloseInputStream.<init>:(Landroid/os/ParcelFileDescriptor;)V
            //    31: astore          7
            //    33: new             Ljava/io/BufferedInputStream;
            //    36: dup            
            //    37: aload           7
            //    39: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
            //    42: astore          8
            //    44: sipush          8192
            //    47: newarray        B
            //    49: astore          10
            //    51: aload           8
            //    53: aload           10
            //    55: invokevirtual   java/io/BufferedInputStream.read:([B)I
            //    58: istore          11
            //    60: iload           11
            //    62: iconst_m1      
            //    63: if_icmpne       154
            //    66: aload           8
            //    68: ifnull          76
            //    71: aload           8
            //    73: invokevirtual   java/io/BufferedInputStream.close:()V
            //    76: aload           7
            //    78: ifnull          86
            //    81: aload           7
            //    83: invokevirtual   android/os/ParcelFileDescriptor$AutoCloseInputStream.close:()V
            //    86: aload_0        
            //    87: ldc             ""
            //    89: iconst_0       
            //    90: anewarray       Ljava/lang/Object;
            //    93: invokevirtual   com/facebook/Request$Serializer.writeLine:(Ljava/lang/String;[Ljava/lang/Object;)V
            //    96: aload_0        
            //    97: invokevirtual   com/facebook/Request$Serializer.writeRecordBoundary:()V
            //   100: aload_0        
            //   101: getfield        com/facebook/Request$Serializer.logger:Lcom/facebook/internal/Logger;
            //   104: astore          12
            //   106: new             Ljava/lang/StringBuilder;
            //   109: dup            
            //   110: ldc             "    "
            //   112: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   115: aload_1        
            //   116: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   119: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   122: astore          13
            //   124: iconst_1       
            //   125: anewarray       Ljava/lang/Object;
            //   128: astore          14
            //   130: aload           14
            //   132: iconst_0       
            //   133: iload           6
            //   135: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
            //   138: aastore        
            //   139: aload           12
            //   141: aload           13
            //   143: ldc             "<Data: %d>"
            //   145: aload           14
            //   147: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
            //   150: invokevirtual   com/facebook/internal/Logger.appendKeyValue:(Ljava/lang/String;Ljava/lang/Object;)V
            //   153: return         
            //   154: aload_0        
            //   155: getfield        com/facebook/Request$Serializer.outputStream:Ljava/io/BufferedOutputStream;
            //   158: aload           10
            //   160: iconst_0       
            //   161: iload           11
            //   163: invokevirtual   java/io/BufferedOutputStream.write:([BII)V
            //   166: iload           6
            //   168: iload           11
            //   170: iadd           
            //   171: istore          6
            //   173: goto            51
            //   176: astore          9
            //   178: aload           5
            //   180: ifnull          188
            //   183: aload           5
            //   185: invokevirtual   java/io/BufferedInputStream.close:()V
            //   188: aload           4
            //   190: ifnull          198
            //   193: aload           4
            //   195: invokevirtual   android/os/ParcelFileDescriptor$AutoCloseInputStream.close:()V
            //   198: aload           9
            //   200: athrow         
            //   201: astore          9
            //   203: aload           7
            //   205: astore          4
            //   207: aconst_null    
            //   208: astore          5
            //   210: goto            178
            //   213: astore          9
            //   215: aload           8
            //   217: astore          5
            //   219: aload           7
            //   221: astore          4
            //   223: goto            178
            //    Exceptions:
            //  throws java.io.IOException
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type
            //  -----  -----  -----  -----  ----
            //  23     33     176    178    Any
            //  33     44     201    213    Any
            //  44     51     213    226    Any
            //  51     60     213    226    Any
            //  154    166    213    226    Any
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 110, Size: 110
            //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
            //     at java.util.ArrayList.get(ArrayList.java:411)
            //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
            //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
            //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
            //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        public void writeFile(final String s, final ParcelFileDescriptorWithMimeType parcelFileDescriptorWithMimeType) throws IOException {
            this.writeFile(s, parcelFileDescriptorWithMimeType.getFileDescriptor(), parcelFileDescriptorWithMimeType.getMimeType());
        }
        
        public void writeLine(final String s, final Object... array) throws IOException {
            this.write(s, array);
            this.write("\r\n", new Object[0]);
        }
        
        public void writeObject(final String s, final Object o) throws IOException {
            if (isSupportedParameterType(o)) {
                this.writeString(s, parameterToString(o));
                return;
            }
            if (o instanceof Bitmap) {
                this.writeBitmap(s, (Bitmap)o);
                return;
            }
            if (o instanceof byte[]) {
                this.writeBytes(s, (byte[])o);
                return;
            }
            if (o instanceof ParcelFileDescriptor) {
                this.writeFile(s, (ParcelFileDescriptor)o, null);
                return;
            }
            if (o instanceof ParcelFileDescriptorWithMimeType) {
                this.writeFile(s, (ParcelFileDescriptorWithMimeType)o);
                return;
            }
            throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
        }
        
        public void writeRecordBoundary() throws IOException {
            this.writeLine("--%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
        }
        
        @Override
        public void writeString(final String str, final String s) throws IOException {
            this.writeContentDisposition(str, null, null);
            this.writeLine("%s", s);
            this.writeRecordBoundary();
            if (this.logger != null) {
                this.logger.appendKeyValue("    " + str, s);
            }
        }
    }
}
