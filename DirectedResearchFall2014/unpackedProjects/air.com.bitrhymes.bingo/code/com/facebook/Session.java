package com.facebook;

import org.json.*;
import android.text.*;
import android.app.*;
import android.support.v4.app.*;
import android.support.v4.content.*;
import android.util.*;
import java.io.*;
import java.util.*;
import com.facebook.internal.*;
import android.content.*;
import android.os.*;
import java.lang.ref.*;

public class Session implements Serializable
{
    public static final String ACTION_ACTIVE_SESSION_CLOSED = "com.facebook.sdk.ACTIVE_SESSION_CLOSED";
    public static final String ACTION_ACTIVE_SESSION_OPENED = "com.facebook.sdk.ACTIVE_SESSION_OPENED";
    public static final String ACTION_ACTIVE_SESSION_SET = "com.facebook.sdk.ACTIVE_SESSION_SET";
    public static final String ACTION_ACTIVE_SESSION_UNSET = "com.facebook.sdk.ACTIVE_SESSION_UNSET";
    public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
    private static final String AUTH_BUNDLE_SAVE_KEY = "com.facebook.sdk.Session.authBundleKey";
    public static final int DEFAULT_AUTHORIZE_ACTIVITY_CODE = 64206;
    private static final String MANAGE_PERMISSION_PREFIX = "manage";
    private static final Set<String> OTHER_PUBLISH_PERMISSIONS;
    private static final String PUBLISH_PERMISSION_PREFIX = "publish";
    private static final String SESSION_BUNDLE_SAVE_KEY = "com.facebook.sdk.Session.saveSessionKey";
    private static final Object STATIC_LOCK;
    public static final String TAG;
    private static final int TOKEN_EXTEND_RETRY_SECONDS = 3600;
    private static final int TOKEN_EXTEND_THRESHOLD_SECONDS = 86400;
    public static final String WEB_VIEW_ERROR_CODE_KEY = "com.facebook.sdk.WebViewErrorCode";
    public static final String WEB_VIEW_FAILING_URL_KEY = "com.facebook.sdk.FailingUrl";
    private static Session activeSession;
    private static final long serialVersionUID = 1L;
    private static volatile Context staticContext;
    private AppEventsLogger appEventsLogger;
    private String applicationId;
    private volatile Bundle authorizationBundle;
    private AuthorizationClient authorizationClient;
    private AutoPublishAsyncTask autoPublishAsyncTask;
    private final List<StatusCallback> callbacks;
    private volatile TokenRefreshRequest currentTokenRefreshRequest;
    private Handler handler;
    private Date lastAttemptedTokenExtendDate;
    private final Object lock;
    private AuthorizationRequest pendingAuthorizationRequest;
    private SessionState state;
    private TokenCachingStrategy tokenCachingStrategy;
    private AccessToken tokenInfo;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$facebook$SessionState() {
        final int[] $switch_TABLE$com$facebook$SessionState = Session.$SWITCH_TABLE$com$facebook$SessionState;
        if ($switch_TABLE$com$facebook$SessionState != null) {
            return $switch_TABLE$com$facebook$SessionState;
        }
        final int[] $switch_TABLE$com$facebook$SessionState2 = new int[SessionState.values().length];
        while (true) {
            try {
                $switch_TABLE$com$facebook$SessionState2[SessionState.CLOSED.ordinal()] = 7;
                try {
                    $switch_TABLE$com$facebook$SessionState2[SessionState.CLOSED_LOGIN_FAILED.ordinal()] = 6;
                    try {
                        $switch_TABLE$com$facebook$SessionState2[SessionState.CREATED.ordinal()] = 1;
                        try {
                            $switch_TABLE$com$facebook$SessionState2[SessionState.CREATED_TOKEN_LOADED.ordinal()] = 2;
                            try {
                                $switch_TABLE$com$facebook$SessionState2[SessionState.OPENED.ordinal()] = 4;
                                try {
                                    $switch_TABLE$com$facebook$SessionState2[SessionState.OPENED_TOKEN_UPDATED.ordinal()] = 5;
                                    try {
                                        $switch_TABLE$com$facebook$SessionState2[SessionState.OPENING.ordinal()] = 3;
                                        return Session.$SWITCH_TABLE$com$facebook$SessionState = $switch_TABLE$com$facebook$SessionState2;
                                    }
                                    catch (NoSuchFieldError noSuchFieldError) {}
                                }
                                catch (NoSuchFieldError noSuchFieldError2) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError3) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError4) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError5) {}
                }
                catch (NoSuchFieldError noSuchFieldError6) {}
            }
            catch (NoSuchFieldError noSuchFieldError7) {
                continue;
            }
            break;
        }
    }
    
    static {
        TAG = Session.class.getCanonicalName();
        STATIC_LOCK = new Object();
        OTHER_PUBLISH_PERMISSIONS = new HashSet<String>() {
            {
                this.add("ads_management");
                this.add("create_event");
                this.add("rsvp_event");
            }
        };
    }
    
    public Session(final Context context) {
        this(context, null, null, true);
    }
    
    Session(final Context context, final String s, final TokenCachingStrategy tokenCachingStrategy) {
        this(context, s, tokenCachingStrategy, true);
    }
    
    Session(final Context context, String metadataApplicationId, TokenCachingStrategy tokenCachingStrategy, final boolean b) {
        super();
        this.lastAttemptedTokenExtendDate = new Date(0L);
        this.lock = new Object();
        if (context != null && metadataApplicationId == null) {
            metadataApplicationId = Utility.getMetadataApplicationId(context);
        }
        Validate.notNull(metadataApplicationId, "applicationId");
        initializeStaticContext(context);
        if (tokenCachingStrategy == null) {
            tokenCachingStrategy = new SharedPreferencesTokenCachingStrategy(Session.staticContext);
        }
        this.applicationId = metadataApplicationId;
        this.tokenCachingStrategy = tokenCachingStrategy;
        this.state = SessionState.CREATED;
        this.pendingAuthorizationRequest = null;
        this.callbacks = new ArrayList<StatusCallback>();
        this.handler = new Handler(Looper.getMainLooper());
        Bundle load;
        if (b) {
            load = tokenCachingStrategy.load();
        }
        else {
            load = null;
        }
        if (!TokenCachingStrategy.hasTokenInformation(load)) {
            this.tokenInfo = AccessToken.createEmptyToken(Collections.emptyList());
            return;
        }
        final Date date = TokenCachingStrategy.getDate(load, "com.facebook.TokenCachingStrategy.ExpirationDate");
        final Date when = new Date();
        if (date == null || date.before(when)) {
            tokenCachingStrategy.clear();
            this.tokenInfo = AccessToken.createEmptyToken(Collections.emptyList());
            return;
        }
        this.tokenInfo = AccessToken.createFromCache(load);
        this.state = SessionState.CREATED_TOKEN_LOADED;
    }
    
    private Session(final String applicationId, final SessionState state, final AccessToken tokenInfo, final Date lastAttemptedTokenExtendDate, final boolean b, final AuthorizationRequest pendingAuthorizationRequest) {
        super();
        this.lastAttemptedTokenExtendDate = new Date(0L);
        this.lock = new Object();
        this.applicationId = applicationId;
        this.state = state;
        this.tokenInfo = tokenInfo;
        this.lastAttemptedTokenExtendDate = lastAttemptedTokenExtendDate;
        this.pendingAuthorizationRequest = pendingAuthorizationRequest;
        this.handler = new Handler(Looper.getMainLooper());
        this.currentTokenRefreshRequest = null;
        this.tokenCachingStrategy = null;
        this.callbacks = new ArrayList<StatusCallback>();
    }
    
    static /* synthetic */ void access$3(final Session session, final TokenRefreshRequest currentTokenRefreshRequest) {
        session.currentTokenRefreshRequest = currentTokenRefreshRequest;
    }
    
    static /* synthetic */ void access$4(final Session session, final AutoPublishAsyncTask autoPublishAsyncTask) {
        session.autoPublishAsyncTask = autoPublishAsyncTask;
    }
    
    private static boolean areEqual(final Object o, final Object obj) {
        if (o == null) {
            return obj == null;
        }
        return o.equals(obj);
    }
    
    private void autoPublishAsync() {
        synchronized (this) {
            final AutoPublishAsyncTask autoPublishAsyncTask = this.autoPublishAsyncTask;
            AutoPublishAsyncTask autoPublishAsyncTask2 = null;
            if (autoPublishAsyncTask == null) {
                final boolean shouldAutoPublishInstall = Settings.getShouldAutoPublishInstall();
                autoPublishAsyncTask2 = null;
                if (shouldAutoPublishInstall) {
                    final String applicationId = this.applicationId;
                    autoPublishAsyncTask2 = null;
                    if (applicationId != null) {
                        final AutoPublishAsyncTask autoPublishAsyncTask3 = new AutoPublishAsyncTask(applicationId, Session.staticContext);
                        this.autoPublishAsyncTask = autoPublishAsyncTask3;
                        autoPublishAsyncTask2 = autoPublishAsyncTask3;
                    }
                }
            }
            // monitorexit(this)
            if (autoPublishAsyncTask2 != null) {
                autoPublishAsyncTask2.execute((Object[])new Void[0]);
            }
        }
    }
    
    private void finishAuthorization(final AccessToken tokenInfo, final Exception ex) {
        final SessionState state = this.state;
        if (tokenInfo != null) {
            this.saveTokenToCache(this.tokenInfo = tokenInfo);
            this.state = SessionState.OPENED;
        }
        else if (ex != null) {
            this.state = SessionState.CLOSED_LOGIN_FAILED;
        }
        this.pendingAuthorizationRequest = null;
        this.postStateChange(state, this.state, ex);
    }
    
    private void finishReauthorization(final AccessToken tokenInfo, final Exception ex) {
        final SessionState state = this.state;
        if (tokenInfo != null) {
            this.saveTokenToCache(this.tokenInfo = tokenInfo);
            this.state = SessionState.OPENED_TOKEN_UPDATED;
        }
        this.pendingAuthorizationRequest = null;
        this.postStateChange(state, this.state, ex);
    }
    
    public static final Session getActiveSession() {
        synchronized (Session.STATIC_LOCK) {
            return Session.activeSession;
        }
    }
    
    private AppEventsLogger getAppEventsLogger() {
        synchronized (this.lock) {
            if (this.appEventsLogger == null) {
                this.appEventsLogger = AppEventsLogger.newLogger(Session.staticContext, this.applicationId);
            }
            return this.appEventsLogger;
        }
    }
    
    private Intent getLoginActivityIntent(final AuthorizationRequest authorizationRequest) {
        final Intent intent = new Intent();
        intent.setClass(getStaticContext(), (Class)LoginActivity.class);
        intent.setAction(authorizationRequest.getLoginBehavior().toString());
        intent.putExtras(LoginActivity.populateIntentExtras(authorizationRequest.getAuthorizationClientRequest()));
        return intent;
    }
    
    static Context getStaticContext() {
        return Session.staticContext;
    }
    
    private void handleAuthorizationResult(final int n, final AuthorizationClient.Result result) {
        Exception ex = null;
        AccessToken token;
        if (n == -1) {
            if (result.code == AuthorizationClient.Result.Code.SUCCESS) {
                token = result.token;
            }
            else {
                ex = new FacebookAuthorizationException(result.errorMessage);
                token = null;
            }
        }
        else {
            ex = null;
            token = null;
            if (n == 0) {
                ex = new FacebookOperationCanceledException(result.errorMessage);
                token = null;
            }
        }
        this.logAuthorizationComplete(result.code, result.loggingExtras, ex);
        this.authorizationClient = null;
        this.finishAuthOrReauth(token, ex);
    }
    
    static void initializeStaticContext(final Context context) {
        if (context != null && Session.staticContext == null) {
            final Context applicationContext = context.getApplicationContext();
            Context staticContext;
            if (applicationContext != null) {
                staticContext = applicationContext;
            }
            else {
                staticContext = context;
            }
            Session.staticContext = staticContext;
        }
    }
    
    public static boolean isPublishPermission(final String s) {
        return s != null && (s.startsWith("publish") || s.startsWith("manage") || Session.OTHER_PUBLISH_PERMISSIONS.contains(s));
    }
    
    private void logAuthorizationComplete(final AuthorizationClient.Result.Code code, final Map<String, String> map, final Exception ex) {
        Bundle bundle;
        if (this.pendingAuthorizationRequest == null) {
            bundle = AuthorizationClient.newAuthorizationLoggingBundle("");
            bundle.putString("2_result", AuthorizationClient.Result.Code.ERROR.getLoggingValue());
            bundle.putString("5_error_message", "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest.");
        }
        else {
            bundle = AuthorizationClient.newAuthorizationLoggingBundle(this.pendingAuthorizationRequest.getAuthId());
            if (code != null) {
                bundle.putString("2_result", code.getLoggingValue());
            }
            if (ex != null && ex.getMessage() != null) {
                bundle.putString("5_error_message", ex.getMessage());
            }
            final boolean empty = this.pendingAuthorizationRequest.loggingExtras.isEmpty();
            JSONObject jsonObject = null;
            if (!empty) {
                jsonObject = new JSONObject(this.pendingAuthorizationRequest.loggingExtras);
            }
            while (true) {
                if (map == null) {
                    break Label_0199;
                }
                if (jsonObject == null) {
                    jsonObject = new JSONObject();
                }
                try {
                    for (final Map.Entry<String, String> entry : map.entrySet()) {
                        jsonObject.put((String)entry.getKey(), (Object)entry.getValue());
                    }
                    if (jsonObject != null) {
                        bundle.putString("6_extras", jsonObject.toString());
                    }
                }
                catch (JSONException ex2) {
                    continue;
                }
                break;
            }
        }
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        this.getAppEventsLogger().logSdkEvent("fb_mobile_login_complete", null, bundle);
    }
    
    private void logAuthorizationStart() {
        final Bundle authorizationLoggingBundle = AuthorizationClient.newAuthorizationLoggingBundle(this.pendingAuthorizationRequest.getAuthId());
        authorizationLoggingBundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        while (true) {
            try {
                final JSONObject jsonObject = new JSONObject();
                jsonObject.put("login_behavior", (Object)this.pendingAuthorizationRequest.loginBehavior.toString());
                jsonObject.put("request_code", this.pendingAuthorizationRequest.requestCode);
                jsonObject.put("is_legacy", this.pendingAuthorizationRequest.isLegacy);
                jsonObject.put("permissions", (Object)TextUtils.join((CharSequence)",", (Iterable)this.pendingAuthorizationRequest.permissions));
                jsonObject.put("default_audience", (Object)this.pendingAuthorizationRequest.defaultAudience.toString());
                authorizationLoggingBundle.putString("6_extras", jsonObject.toString());
                this.getAppEventsLogger().logSdkEvent("fb_mobile_login_start", null, authorizationLoggingBundle);
            }
            catch (JSONException ex) {
                continue;
            }
            break;
        }
    }
    
    private void open(final OpenRequest openRequest, final SessionAuthorizationType sessionAuthorizationType) {
        this.validatePermissions((AuthorizationRequest)openRequest, sessionAuthorizationType);
        this.validateLoginBehavior((AuthorizationRequest)openRequest);
        // monitorexit(o)
        while (true) {
            Label_0174: {
                final SessionState state;
                synchronized (this.lock) {
                    if (this.pendingAuthorizationRequest != null) {
                        this.postStateChange(this.state, this.state, new UnsupportedOperationException("Session: an attempt was made to open a session that has a pending request."));
                        return;
                    }
                    state = this.state;
                    switch ($SWITCH_TABLE$com$facebook$SessionState()[this.state.ordinal()]) {
                        default: {
                            throw new UnsupportedOperationException("Session: an attempt was made to open an already opened session.");
                        }
                        case 1: {
                            break;
                        }
                        case 2: {
                            break Label_0174;
                        }
                    }
                }
                final SessionState state2 = SessionState.OPENING;
                this.state = state2;
                if (openRequest == null) {
                    throw new IllegalArgumentException("openRequest cannot be null when opening a new Session");
                }
                this.pendingAuthorizationRequest = (AuthorizationRequest)openRequest;
                if (openRequest != null) {
                    this.addCallback(((AuthorizationRequest)openRequest).getCallback());
                }
                this.postStateChange(state, state2, null);
                if (state2 == SessionState.OPENING) {
                    this.authorize((AuthorizationRequest)openRequest);
                    return;
                }
                return;
            }
            if (openRequest != null && !Utility.isNullOrEmpty(((AuthorizationRequest)openRequest).getPermissions()) && !Utility.isSubset(((AuthorizationRequest)openRequest).getPermissions(), this.getPermissions())) {
                this.pendingAuthorizationRequest = (AuthorizationRequest)openRequest;
            }
            if (this.pendingAuthorizationRequest == null) {
                final SessionState state2 = SessionState.OPENED;
                this.state = state2;
                continue;
            }
            final SessionState state2 = SessionState.OPENING;
            this.state = state2;
            continue;
        }
    }
    
    public static Session openActiveSession(final Activity activity, final boolean b, final StatusCallback callback) {
        return openActiveSession((Context)activity, b, new OpenRequest(activity).setCallback(callback));
    }
    
    public static Session openActiveSession(final Context context, final Fragment fragment, final boolean b, final StatusCallback callback) {
        return openActiveSession(context, b, new OpenRequest(fragment).setCallback(callback));
    }
    
    private static Session openActiveSession(final Context context, final boolean b, final OpenRequest openRequest) {
        final Session build = new Builder(context).build();
        if (SessionState.CREATED_TOKEN_LOADED.equals(build.getState()) || b) {
            setActiveSession(build);
            build.openForRead(openRequest);
            return build;
        }
        return null;
    }
    
    public static Session openActiveSessionFromCache(final Context context) {
        return openActiveSession(context, false, null);
    }
    
    public static Session openActiveSessionWithAccessToken(final Context context, final AccessToken accessToken, final StatusCallback statusCallback) {
        final Session activeSession = new Session(context, null, null, false);
        setActiveSession(activeSession);
        activeSession.open(accessToken, statusCallback);
        return activeSession;
    }
    
    static void postActiveSessionAction(final String s) {
        LocalBroadcastManager.getInstance(getStaticContext()).sendBroadcast(new Intent(s));
    }
    
    private void readObject(final ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Cannot readObject, serialization proxy required");
    }
    
    private void requestNewPermissions(final NewPermissionsRequest pendingAuthorizationRequest, final SessionAuthorizationType sessionAuthorizationType) {
        this.validatePermissions((AuthorizationRequest)pendingAuthorizationRequest, sessionAuthorizationType);
        this.validateLoginBehavior((AuthorizationRequest)pendingAuthorizationRequest);
        if (pendingAuthorizationRequest != null) {
            synchronized (this.lock) {
                if (this.pendingAuthorizationRequest != null) {
                    throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that has a pending request.");
                }
            }
            if (this.state.isOpened()) {
                this.pendingAuthorizationRequest = (AuthorizationRequest)pendingAuthorizationRequest;
                // monitorexit(o)
                ((AuthorizationRequest)pendingAuthorizationRequest).setValidateSameFbidAsToken(this.getAccessToken());
                this.authorize((AuthorizationRequest)pendingAuthorizationRequest);
            }
            else {
                if (this.state.isClosed()) {
                    throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that has been closed.");
                }
                throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that is not currently open.");
            }
        }
    }
    
    private boolean resolveIntent(final Intent intent) {
        return getStaticContext().getPackageManager().resolveActivity(intent, 0) != null;
    }
    
    public static final Session restoreSession(final Context context, final TokenCachingStrategy tokenCachingStrategy, final StatusCallback statusCallback, final Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        final byte[] byteArray = bundle.getByteArray("com.facebook.sdk.Session.saveSessionKey");
        if (byteArray == null) {
            goto Label_0115;
        }
        final ByteArrayInputStream in = new ByteArrayInputStream(byteArray);
        try {
            final Session session = (Session)new ObjectInputStream(in).readObject();
            initializeStaticContext(context);
            if (tokenCachingStrategy != null) {
                session.tokenCachingStrategy = tokenCachingStrategy;
            }
            else {
                session.tokenCachingStrategy = new SharedPreferencesTokenCachingStrategy(context);
            }
            if (statusCallback != null) {
                session.addCallback(statusCallback);
            }
            session.authorizationBundle = bundle.getBundle("com.facebook.sdk.Session.authBundleKey");
            return session;
        }
        catch (ClassNotFoundException ex) {
            Log.w(Session.TAG, "Unable to restore session", (Throwable)ex);
        }
        catch (IOException ex2) {
            Log.w(Session.TAG, "Unable to restore session.", (Throwable)ex2);
            goto Label_0115;
        }
    }
    
    private static void runWithHandlerOrExecutor(final Handler handler, final Runnable runnable) {
        if (handler != null) {
            handler.post(runnable);
            return;
        }
        Settings.getExecutor().execute(runnable);
    }
    
    public static final void saveSession(final Session obj, final Bundle bundle) {
        if (bundle == null || obj == null || bundle.containsKey("com.facebook.sdk.Session.saveSessionKey")) {
            return;
        }
        final ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            new ObjectOutputStream(out).writeObject(obj);
            bundle.putByteArray("com.facebook.sdk.Session.saveSessionKey", out.toByteArray());
            bundle.putBundle("com.facebook.sdk.Session.authBundleKey", obj.authorizationBundle);
        }
        catch (IOException ex) {
            throw new FacebookException("Unable to save session.", ex);
        }
    }
    
    private void saveTokenToCache(final AccessToken accessToken) {
        if (accessToken != null && this.tokenCachingStrategy != null) {
            this.tokenCachingStrategy.save(accessToken.toCacheBundle());
        }
    }
    
    public static final void setActiveSession(final Session activeSession) {
        synchronized (Session.STATIC_LOCK) {
            if (activeSession != Session.activeSession) {
                final Session activeSession2 = Session.activeSession;
                if (activeSession2 != null) {
                    activeSession2.close();
                }
                Session.activeSession = activeSession;
                if (activeSession2 != null) {
                    postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
                }
                if (activeSession != null) {
                    postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_SET");
                    if (activeSession.isOpened()) {
                        postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
                    }
                }
            }
        }
    }
    
    private void tryLegacyAuth(final AuthorizationRequest authorizationRequest) {
        (this.authorizationClient = new AuthorizationClient()).setOnCompletedListener((AuthorizationClient.OnCompletedListener)new AuthorizationClient.OnCompletedListener() {
            @Override
            public void onCompleted(final Result result) {
                int n;
                if (result.code == Code.CANCEL) {
                    n = 0;
                }
                else {
                    n = -1;
                }
                Session.this.handleAuthorizationResult(n, result);
            }
        });
        this.authorizationClient.setContext(getStaticContext());
        this.authorizationClient.startOrContinueAuth(authorizationRequest.getAuthorizationClientRequest());
    }
    
    private boolean tryLoginActivity(final AuthorizationRequest authorizationRequest) {
        final Intent loginActivityIntent = this.getLoginActivityIntent(authorizationRequest);
        if (!this.resolveIntent(loginActivityIntent)) {
            return false;
        }
        try {
            authorizationRequest.getStartActivityDelegate().startActivityForResult(loginActivityIntent, authorizationRequest.getRequestCode());
            return true;
        }
        catch (ActivityNotFoundException ex) {
            return false;
        }
    }
    
    private void validateLoginBehavior(final AuthorizationRequest authorizationRequest) {
        if (authorizationRequest != null && !authorizationRequest.isLegacy) {
            final Intent intent = new Intent();
            intent.setClass(getStaticContext(), (Class)LoginActivity.class);
            if (!this.resolveIntent(intent)) {
                throw new FacebookException(String.format("Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml", authorizationRequest.getLoginBehavior(), LoginActivity.class.getName()));
            }
        }
    }
    
    private void validatePermissions(final AuthorizationRequest authorizationRequest, final SessionAuthorizationType other) {
        if (authorizationRequest == null || Utility.isNullOrEmpty(authorizationRequest.getPermissions())) {
            if (SessionAuthorizationType.PUBLISH.equals(other)) {
                throw new FacebookException("Cannot request publish or manage authorization with no permissions.");
            }
        }
        else {
            for (final String s : authorizationRequest.getPermissions()) {
                if (isPublishPermission(s)) {
                    if (SessionAuthorizationType.READ.equals(other)) {
                        throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", s));
                    }
                    continue;
                }
                else {
                    if (!SessionAuthorizationType.PUBLISH.equals(other)) {
                        continue;
                    }
                    Log.w(Session.TAG, String.format("Should not pass a read permission (%s) to a request for publish or manage authorization", s));
                }
            }
        }
    }
    
    private Object writeReplace() {
        return new SerializationProxyV1(this.applicationId, this.state, this.tokenInfo, this.lastAttemptedTokenExtendDate, false, this.pendingAuthorizationRequest);
    }
    
    public final void addCallback(final StatusCallback statusCallback) {
        final List<StatusCallback> callbacks = this.callbacks;
        // monitorenter(callbacks)
        if (statusCallback == null) {
            return;
        }
        try {
            if (!this.callbacks.contains(statusCallback)) {
                this.callbacks.add(statusCallback);
            }
        }
        finally {
        }
        // monitorexit(callbacks)
    }
    
    void authorize(final AuthorizationRequest authorizationRequest) {
        authorizationRequest.setApplicationId(this.applicationId);
        this.autoPublishAsync();
        this.logAuthorizationStart();
        int tryLoginActivity = this.tryLoginActivity(authorizationRequest) ? 1 : 0;
        final Map access$2 = this.pendingAuthorizationRequest.loggingExtras;
        Label_0185: {
            if (tryLoginActivity == 0) {
                break Label_0185;
            }
            String s = "1";
            while (true) {
                access$2.put("try_login_activity", s);
                if (tryLoginActivity == 0 && authorizationRequest.isLegacy) {
                    this.pendingAuthorizationRequest.loggingExtras.put("try_legacy", "1");
                    this.tryLegacyAuth(authorizationRequest);
                    tryLoginActivity = 1;
                }
                if (tryLoginActivity != 0) {
                    return;
                }
                synchronized (this.lock) {
                    final SessionState state = this.state;
                    switch ($SWITCH_TABLE$com$facebook$SessionState()[this.state.ordinal()]) {
                        default: {
                            this.state = SessionState.CLOSED_LOGIN_FAILED;
                            final FacebookException ex = new FacebookException("Log in attempt failed: LoginActivity could not be started, and not legacy request");
                            this.logAuthorizationComplete(AuthorizationClient.Result.Code.ERROR, null, ex);
                            this.postStateChange(state, this.state, ex);
                            return;
                        }
                        case 6:
                        case 7: {
                            return;
                        }
                    }
                    s = "0";
                    continue;
                }
                break;
            }
        }
    }
    
    public final void close() {
        while (true) {
            final SessionState state;
            Label_0093: {
                synchronized (this.lock) {
                    state = this.state;
                    switch ($SWITCH_TABLE$com$facebook$SessionState()[this.state.ordinal()]) {
                        case 1:
                        case 3: {
                            this.postStateChange(state, this.state = SessionState.CLOSED_LOGIN_FAILED, new FacebookException("Log in attempt aborted."));
                            break;
                        }
                        case 2:
                        case 4:
                        case 5: {
                            break Label_0093;
                        }
                    }
                    return;
                }
            }
            this.postStateChange(state, this.state = SessionState.CLOSED, null);
        }
    }
    
    public final void closeAndClearTokenInformation() {
        if (this.tokenCachingStrategy != null) {
            this.tokenCachingStrategy.clear();
        }
        Utility.clearFacebookCookies(Session.staticContext);
        Utility.clearCaches(Session.staticContext);
        this.close();
    }
    
    @Override
    public boolean equals(final Object o) {
        if (!(o instanceof Session)) {
            return false;
        }
        final Session session = (Session)o;
        return areEqual(session.applicationId, this.applicationId) && areEqual(session.authorizationBundle, this.authorizationBundle) && areEqual(session.state, this.state) && areEqual(session.getExpirationDate(), this.getExpirationDate());
    }
    
    void extendAccessToken() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: getfield        com/facebook/Session.lock:Ljava/lang/Object;
        //     4: astore_1       
        //     5: aload_1        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: getfield        com/facebook/Session.currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
        //    11: astore_3       
        //    12: aconst_null    
        //    13: astore          4
        //    15: aload_3        
        //    16: ifnonnull       39
        //    19: new             Lcom/facebook/Session$TokenRefreshRequest;
        //    22: dup            
        //    23: aload_0        
        //    24: invokespecial   com/facebook/Session$TokenRefreshRequest.<init>:(Lcom/facebook/Session;)V
        //    27: astore          5
        //    29: aload_0        
        //    30: aload           5
        //    32: putfield        com/facebook/Session.currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
        //    35: aload           5
        //    37: astore          4
        //    39: aload_1        
        //    40: monitorexit    
        //    41: aload           4
        //    43: ifnull          51
        //    46: aload           4
        //    48: invokevirtual   com/facebook/Session$TokenRefreshRequest.bind:()V
        //    51: return         
        //    52: astore_2       
        //    53: aload_1        
        //    54: monitorexit    
        //    55: aload_2        
        //    56: athrow         
        //    57: astore_2       
        //    58: goto            53
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  7      12     52     53     Any
        //  19     29     52     53     Any
        //  29     35     57     61     Any
        //  39     41     52     53     Any
        //  53     55     52     53     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0039:
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
    
    void extendAccessTokenIfNeeded() {
        if (this.shouldExtendAccessToken()) {
            this.extendAccessToken();
        }
    }
    
    void extendTokenCompleted(final Bundle bundle) {
        synchronized (this.lock) {
            final SessionState state = this.state;
            switch ($SWITCH_TABLE$com$facebook$SessionState()[this.state.ordinal()]) {
                default: {
                    Log.d(Session.TAG, "refreshToken ignored in state " + this.state);
                }
                case 4: {
                    this.postStateChange(state, this.state = SessionState.OPENED_TOKEN_UPDATED, null);
                }
                case 5: {
                    this.tokenInfo = AccessToken.createFromRefresh(this.tokenInfo, bundle);
                    if (this.tokenCachingStrategy != null) {
                        this.tokenCachingStrategy.save(this.tokenInfo.toCacheBundle());
                    }
                }
            }
        }
    }
    
    void finishAuthOrReauth(AccessToken accessToken, Exception ex) {
        if (accessToken != null && accessToken.isInvalid()) {
            accessToken = null;
            ex = new FacebookException("Invalid access token.");
        }
        while (true) {
            Label_0112: {
                Label_0103: {
                    synchronized (this.lock) {
                        switch ($SWITCH_TABLE$com$facebook$SessionState()[this.state.ordinal()]) {
                            case 3: {
                                this.finishAuthorization(accessToken, ex);
                                break;
                            }
                            case 4:
                            case 5: {
                                break Label_0103;
                            }
                            case 1:
                            case 2:
                            case 6:
                            case 7: {
                                break Label_0112;
                            }
                        }
                        return;
                    }
                }
                this.finishReauthorization(accessToken, ex);
                return;
            }
            Log.d(Session.TAG, "Unexpected call to finishAuthOrReauth in state " + this.state);
        }
    }
    
    public final String getAccessToken() {
        synchronized (this.lock) {
            String token;
            if (this.tokenInfo == null) {
                token = null;
            }
            else {
                token = this.tokenInfo.getToken();
            }
            return token;
        }
    }
    
    public final String getApplicationId() {
        return this.applicationId;
    }
    
    public final Bundle getAuthorizationBundle() {
        synchronized (this.lock) {
            return this.authorizationBundle;
        }
    }
    
    public final Date getExpirationDate() {
        synchronized (this.lock) {
            Date expires;
            if (this.tokenInfo == null) {
                expires = null;
            }
            else {
                expires = this.tokenInfo.getExpires();
            }
            return expires;
        }
    }
    
    Date getLastAttemptedTokenExtendDate() {
        return this.lastAttemptedTokenExtendDate;
    }
    
    public final List<String> getPermissions() {
        synchronized (this.lock) {
            List<String> permissions;
            if (this.tokenInfo == null) {
                permissions = null;
            }
            else {
                permissions = this.tokenInfo.getPermissions();
            }
            return permissions;
        }
    }
    
    public final SessionState getState() {
        synchronized (this.lock) {
            return this.state;
        }
    }
    
    AccessToken getTokenInfo() {
        return this.tokenInfo;
    }
    
    @Override
    public int hashCode() {
        return 0;
    }
    
    public final boolean isClosed() {
        synchronized (this.lock) {
            return this.state.isClosed();
        }
    }
    
    public final boolean isOpened() {
        synchronized (this.lock) {
            return this.state.isOpened();
        }
    }
    
    public final boolean onActivityResult(final Activity activity, final int n, final int n2, final Intent intent) {
        Validate.notNull(activity, "currentActivity");
        initializeStaticContext((Context)activity);
        AuthorizationClient.Result.Code code = null;
        Exception ex = null;
        Label_0143: {
            Label_0119: {
                synchronized (this.lock) {
                    if (this.pendingAuthorizationRequest == null || n != this.pendingAuthorizationRequest.getRequestCode()) {
                        return false;
                    }
                    // monitorexit(this.lock)
                    code = AuthorizationClient.Result.Code.ERROR;
                    if (intent == null) {
                        break Label_0119;
                    }
                    final AuthorizationClient.Result result = (AuthorizationClient.Result)intent.getSerializableExtra("com.facebook.LoginActivity:Result");
                    if (result != null) {
                        this.handleAuthorizationResult(n2, result);
                        return true;
                    }
                }
                final AuthorizationClient authorizationClient = this.authorizationClient;
                ex = null;
                if (authorizationClient != null) {
                    this.authorizationClient.onActivityResult(n, n2, intent);
                    return true;
                }
                break Label_0143;
            }
            ex = null;
            if (n2 == 0) {
                ex = new FacebookOperationCanceledException("User canceled operation.");
                code = AuthorizationClient.Result.Code.CANCEL;
            }
        }
        if (ex == null) {
            ex = new FacebookException("Unexpected call to Session.onActivityResult");
        }
        this.logAuthorizationComplete(code, null, ex);
        this.finishAuthOrReauth(null, ex);
        return true;
    }
    
    public final void open(final AccessToken tokenInfo, final StatusCallback statusCallback) {
        synchronized (this.lock) {
            if (this.pendingAuthorizationRequest != null) {
                throw new UnsupportedOperationException("Session: an attempt was made to open a session that has a pending request.");
            }
        }
        if (this.state.isClosed()) {
            throw new UnsupportedOperationException("Session: an attempt was made to open a previously-closed session.");
        }
        if (this.state != SessionState.CREATED && this.state != SessionState.CREATED_TOKEN_LOADED) {
            throw new UnsupportedOperationException("Session: an attempt was made to open an already opened session.");
        }
        if (statusCallback != null) {
            this.addCallback(statusCallback);
        }
        this.tokenInfo = tokenInfo;
        if (this.tokenCachingStrategy != null) {
            this.tokenCachingStrategy.save(tokenInfo.toCacheBundle());
        }
        this.postStateChange(this.state, this.state = SessionState.OPENED, null);
        // monitorexit(o)
        this.autoPublishAsync();
    }
    
    public final void openForPublish(final OpenRequest openRequest) {
        this.open(openRequest, SessionAuthorizationType.PUBLISH);
    }
    
    public final void openForRead(final OpenRequest openRequest) {
        this.open(openRequest, SessionAuthorizationType.READ);
    }
    
    void postStateChange(final SessionState sessionState, final SessionState sessionState2, final Exception ex) {
        if (sessionState != sessionState2 || sessionState == SessionState.OPENED_TOKEN_UPDATED || ex != null) {
            if (sessionState2.isClosed()) {
                this.tokenInfo = AccessToken.createEmptyToken(Collections.emptyList());
            }
            synchronized (this.callbacks) {
                runWithHandlerOrExecutor(this.handler, new Runnable() {
                    @Override
                    public void run() {
                        final Iterator<StatusCallback> iterator = Session.this.callbacks.iterator();
                        while (iterator.hasNext()) {
                            runWithHandlerOrExecutor(Session.this.handler, new Runnable() {
                                private final /* synthetic */ StatusCallback val$callback = iterator.next();
                                
                                @Override
                                public void run() {
                                    this.val$callback.call(Session.this, sessionState2, ex);
                                }
                            });
                        }
                    }
                });
                // monitorexit(this.callbacks)
                if (this != Session.activeSession || sessionState.isOpened() == sessionState2.isOpened()) {
                    return;
                }
                if (sessionState2.isOpened()) {
                    postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
                    return;
                }
            }
            postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_CLOSED");
        }
    }
    
    public final void removeCallback(final StatusCallback statusCallback) {
        synchronized (this.callbacks) {
            this.callbacks.remove(statusCallback);
        }
    }
    
    public final void requestNewPublishPermissions(final NewPermissionsRequest newPermissionsRequest) {
        this.requestNewPermissions(newPermissionsRequest, SessionAuthorizationType.PUBLISH);
    }
    
    public final void requestNewReadPermissions(final NewPermissionsRequest newPermissionsRequest) {
        this.requestNewPermissions(newPermissionsRequest, SessionAuthorizationType.READ);
    }
    
    void setCurrentTokenRefreshRequest(final TokenRefreshRequest currentTokenRefreshRequest) {
        this.currentTokenRefreshRequest = currentTokenRefreshRequest;
    }
    
    void setLastAttemptedTokenExtendDate(final Date lastAttemptedTokenExtendDate) {
        this.lastAttemptedTokenExtendDate = lastAttemptedTokenExtendDate;
    }
    
    void setTokenInfo(final AccessToken tokenInfo) {
        this.tokenInfo = tokenInfo;
    }
    
    boolean shouldExtendAccessToken() {
        if (this.currentTokenRefreshRequest != null) {
            return false;
        }
        final Date date = new Date();
        final boolean opened = this.state.isOpened();
        boolean b = false;
        if (opened) {
            final boolean canExtendToken = this.tokenInfo.getSource().canExtendToken();
            b = false;
            if (canExtendToken) {
                final long n = lcmp(date.getTime() - this.lastAttemptedTokenExtendDate.getTime(), 3600000L);
                b = false;
                if (n > 0) {
                    final long n2 = lcmp(date.getTime() - this.tokenInfo.getLastRefresh().getTime(), 86400000L);
                    b = false;
                    if (n2 > 0) {
                        b = true;
                    }
                }
            }
        }
        return b;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder().append("{Session").append(" state:").append(this.state).append(", token:");
        Serializable tokenInfo;
        if (this.tokenInfo == null) {
            tokenInfo = "null";
        }
        else {
            tokenInfo = this.tokenInfo;
        }
        final StringBuilder append2 = append.append(tokenInfo).append(", appId:");
        String applicationId;
        if (this.applicationId == null) {
            applicationId = "null";
        }
        else {
            applicationId = this.applicationId;
        }
        return append2.append(applicationId).append("}").toString();
    }
    
    public static class AuthorizationRequest implements Serializable
    {
        private static final long serialVersionUID = 1L;
        private String applicationId;
        private final String authId;
        private SessionDefaultAudience defaultAudience;
        private boolean isLegacy;
        private final Map<String, String> loggingExtras;
        private SessionLoginBehavior loginBehavior;
        private List<String> permissions;
        private int requestCode;
        private final StartActivityDelegate startActivityDelegate;
        private StatusCallback statusCallback;
        private String validateSameFbidAsToken;
        
        AuthorizationRequest(final Activity activity) {
            super();
            this.loginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
            this.requestCode = 64206;
            this.isLegacy = false;
            this.permissions = Collections.emptyList();
            this.defaultAudience = SessionDefaultAudience.FRIENDS;
            this.authId = UUID.randomUUID().toString();
            this.loggingExtras = new HashMap<String, String>();
            this.startActivityDelegate = new StartActivityDelegate() {
                @Override
                public Activity getActivityContext() {
                    return activity;
                }
                
                @Override
                public void startActivityForResult(final Intent intent, final int n) {
                    activity.startActivityForResult(intent, n);
                }
            };
        }
        
        AuthorizationRequest(final Fragment fragment) {
            super();
            this.loginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
            this.requestCode = 64206;
            this.isLegacy = false;
            this.permissions = Collections.emptyList();
            this.defaultAudience = SessionDefaultAudience.FRIENDS;
            this.authId = UUID.randomUUID().toString();
            this.loggingExtras = new HashMap<String, String>();
            this.startActivityDelegate = new StartActivityDelegate() {
                @Override
                public Activity getActivityContext() {
                    return fragment.getActivity();
                }
                
                @Override
                public void startActivityForResult(final Intent intent, final int n) {
                    fragment.startActivityForResult(intent, n);
                }
            };
        }
        
        private AuthorizationRequest(final SessionLoginBehavior loginBehavior, final int requestCode, final List<String> permissions, final String s, final boolean isLegacy, final String applicationId, final String validateSameFbidAsToken) {
            super();
            this.loginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
            this.requestCode = 64206;
            this.isLegacy = false;
            this.permissions = Collections.emptyList();
            this.defaultAudience = SessionDefaultAudience.FRIENDS;
            this.authId = UUID.randomUUID().toString();
            this.loggingExtras = new HashMap<String, String>();
            this.startActivityDelegate = new StartActivityDelegate() {
                @Override
                public Activity getActivityContext() {
                    throw new UnsupportedOperationException("Cannot create an AuthorizationRequest without a valid Activity or Fragment");
                }
                
                @Override
                public void startActivityForResult(final Intent intent, final int n) {
                    throw new UnsupportedOperationException("Cannot create an AuthorizationRequest without a valid Activity or Fragment");
                }
            };
            this.loginBehavior = loginBehavior;
            this.requestCode = requestCode;
            this.permissions = permissions;
            this.defaultAudience = SessionDefaultAudience.valueOf(s);
            this.isLegacy = isLegacy;
            this.applicationId = applicationId;
            this.validateSameFbidAsToken = validateSameFbidAsToken;
        }
        
        private void readObject(final ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Cannot readObject, serialization proxy required");
        }
        
        String getApplicationId() {
            return this.applicationId;
        }
        
        String getAuthId() {
            return this.authId;
        }
        
        AuthorizationClient.AuthorizationRequest getAuthorizationClientRequest() {
            return new AuthorizationClient.AuthorizationRequest(this.loginBehavior, this.requestCode, this.isLegacy, this.permissions, this.defaultAudience, this.applicationId, this.validateSameFbidAsToken, new AuthorizationClient.StartActivityDelegate() {
                @Override
                public Activity getActivityContext() {
                    return Session.AuthorizationRequest.this.startActivityDelegate.getActivityContext();
                }
                
                @Override
                public void startActivityForResult(final Intent intent, final int n) {
                    Session.AuthorizationRequest.this.startActivityDelegate.startActivityForResult(intent, n);
                }
            }, this.authId);
        }
        
        StatusCallback getCallback() {
            return this.statusCallback;
        }
        
        SessionDefaultAudience getDefaultAudience() {
            return this.defaultAudience;
        }
        
        SessionLoginBehavior getLoginBehavior() {
            return this.loginBehavior;
        }
        
        List<String> getPermissions() {
            return this.permissions;
        }
        
        int getRequestCode() {
            return this.requestCode;
        }
        
        StartActivityDelegate getStartActivityDelegate() {
            return this.startActivityDelegate;
        }
        
        String getValidateSameFbidAsToken() {
            return this.validateSameFbidAsToken;
        }
        
        boolean isLegacy() {
            return this.isLegacy;
        }
        
        void setApplicationId(final String applicationId) {
            this.applicationId = applicationId;
        }
        
        AuthorizationRequest setCallback(final StatusCallback statusCallback) {
            this.statusCallback = statusCallback;
            return this;
        }
        
        AuthorizationRequest setDefaultAudience(final SessionDefaultAudience defaultAudience) {
            if (defaultAudience != null) {
                this.defaultAudience = defaultAudience;
            }
            return this;
        }
        
        public void setIsLegacy(final boolean isLegacy) {
            this.isLegacy = isLegacy;
        }
        
        AuthorizationRequest setLoginBehavior(final SessionLoginBehavior loginBehavior) {
            if (loginBehavior != null) {
                this.loginBehavior = loginBehavior;
            }
            return this;
        }
        
        AuthorizationRequest setPermissions(final List<String> permissions) {
            if (permissions != null) {
                this.permissions = permissions;
            }
            return this;
        }
        
        AuthorizationRequest setPermissions(final String... a) {
            return this.setPermissions(Arrays.asList(a));
        }
        
        AuthorizationRequest setRequestCode(final int requestCode) {
            if (requestCode >= 0) {
                this.requestCode = requestCode;
            }
            return this;
        }
        
        void setValidateSameFbidAsToken(final String validateSameFbidAsToken) {
            this.validateSameFbidAsToken = validateSameFbidAsToken;
        }
        
        Object writeReplace() {
            return new AuthRequestSerializationProxyV1(this.loginBehavior, this.requestCode, this.permissions, this.defaultAudience.name(), this.isLegacy, this.applicationId, this.validateSameFbidAsToken, null);
        }
        
        private static class AuthRequestSerializationProxyV1 implements Serializable
        {
            private static final long serialVersionUID = -8748347685113614927L;
            private final String applicationId;
            private final String defaultAudience;
            private boolean isLegacy;
            private final SessionLoginBehavior loginBehavior;
            private final List<String> permissions;
            private final int requestCode;
            private final String validateSameFbidAsToken;
            
            private AuthRequestSerializationProxyV1(final SessionLoginBehavior loginBehavior, final int requestCode, final List<String> permissions, final String defaultAudience, final boolean isLegacy, final String applicationId, final String validateSameFbidAsToken) {
                super();
                this.loginBehavior = loginBehavior;
                this.requestCode = requestCode;
                this.permissions = permissions;
                this.defaultAudience = defaultAudience;
                this.isLegacy = isLegacy;
                this.applicationId = applicationId;
                this.validateSameFbidAsToken = validateSameFbidAsToken;
            }
            
            private Object readResolve() {
                return new AuthorizationRequest(this.loginBehavior, this.requestCode, this.permissions, this.defaultAudience, this.isLegacy, this.applicationId, this.validateSameFbidAsToken, null);
            }
        }
    }
    
    private class AutoPublishAsyncTask extends AsyncTask<Void, Void, Void>
    {
        private final Context mApplicationContext;
        private final String mApplicationId;
        
        public AutoPublishAsyncTask(final String mApplicationId, final Context context) {
            super();
            this.mApplicationId = mApplicationId;
            this.mApplicationContext = context.getApplicationContext();
        }
        
        protected Void doInBackground(final Void... array) {
            try {
                Settings.publishInstallAndWaitForResponse(this.mApplicationContext, this.mApplicationId, true);
                return null;
            }
            catch (Exception ex) {
                Utility.logd("Facebook-publish", ex);
                return null;
            }
        }
        
        protected void onPostExecute(final Void void1) {
            synchronized (Session.this) {
                Session.access$4(Session.this, null);
            }
        }
    }
    
    public static final class Builder
    {
        private String applicationId;
        private final Context context;
        private TokenCachingStrategy tokenCachingStrategy;
        
        public Builder(final Context context) {
            super();
            this.context = context;
        }
        
        public Session build() {
            return new Session(this.context, this.applicationId, this.tokenCachingStrategy);
        }
        
        public Builder setApplicationId(final String applicationId) {
            this.applicationId = applicationId;
            return this;
        }
        
        public Builder setTokenCachingStrategy(final TokenCachingStrategy tokenCachingStrategy) {
            this.tokenCachingStrategy = tokenCachingStrategy;
            return this;
        }
    }
    
    public static final class NewPermissionsRequest extends AuthorizationRequest
    {
        private static final long serialVersionUID = 1L;
        
        public NewPermissionsRequest(final Activity activity, final List<String> permissions) {
            super(activity);
            ((AuthorizationRequest)this).setPermissions(permissions);
        }
        
        public NewPermissionsRequest(final Activity activity, final String... permissions) {
            super(activity);
            ((AuthorizationRequest)this).setPermissions(permissions);
        }
        
        public NewPermissionsRequest(final Fragment fragment, final List<String> permissions) {
            super(fragment);
            ((AuthorizationRequest)this).setPermissions(permissions);
        }
        
        public NewPermissionsRequest(final Fragment fragment, final String... permissions) {
            super(fragment);
            ((AuthorizationRequest)this).setPermissions(permissions);
        }
        
        public final NewPermissionsRequest setCallback(final StatusCallback callback) {
            super.setCallback(callback);
            return this;
        }
        
        public final NewPermissionsRequest setDefaultAudience(final SessionDefaultAudience defaultAudience) {
            super.setDefaultAudience(defaultAudience);
            return this;
        }
        
        public final NewPermissionsRequest setLoginBehavior(final SessionLoginBehavior loginBehavior) {
            super.setLoginBehavior(loginBehavior);
            return this;
        }
        
        public final NewPermissionsRequest setRequestCode(final int requestCode) {
            super.setRequestCode(requestCode);
            return this;
        }
    }
    
    public static final class OpenRequest extends AuthorizationRequest
    {
        private static final long serialVersionUID = 1L;
        
        public OpenRequest(final Activity activity) {
            super(activity);
        }
        
        public OpenRequest(final Fragment fragment) {
            super(fragment);
        }
        
        public final OpenRequest setCallback(final StatusCallback callback) {
            super.setCallback(callback);
            return this;
        }
        
        public final OpenRequest setDefaultAudience(final SessionDefaultAudience defaultAudience) {
            super.setDefaultAudience(defaultAudience);
            return this;
        }
        
        public final OpenRequest setLoginBehavior(final SessionLoginBehavior loginBehavior) {
            super.setLoginBehavior(loginBehavior);
            return this;
        }
        
        public final OpenRequest setPermissions(final List<String> permissions) {
            super.setPermissions(permissions);
            return this;
        }
        
        public final OpenRequest setPermissions(final String... permissions) {
            super.setPermissions(permissions);
            return this;
        }
        
        public final OpenRequest setRequestCode(final int requestCode) {
            super.setRequestCode(requestCode);
            return this;
        }
    }
    
    private static class SerializationProxyV1 implements Serializable
    {
        private static final long serialVersionUID = 7663436173185080063L;
        private final String applicationId;
        private final Date lastAttemptedTokenExtendDate;
        private final AuthorizationRequest pendingAuthorizationRequest;
        private final boolean shouldAutoPublish;
        private final SessionState state;
        private final AccessToken tokenInfo;
        
        SerializationProxyV1(final String applicationId, final SessionState state, final AccessToken tokenInfo, final Date lastAttemptedTokenExtendDate, final boolean shouldAutoPublish, final AuthorizationRequest pendingAuthorizationRequest) {
            super();
            this.applicationId = applicationId;
            this.state = state;
            this.tokenInfo = tokenInfo;
            this.lastAttemptedTokenExtendDate = lastAttemptedTokenExtendDate;
            this.shouldAutoPublish = shouldAutoPublish;
            this.pendingAuthorizationRequest = pendingAuthorizationRequest;
        }
        
        private Object readResolve() {
            return new Session(this.applicationId, this.state, this.tokenInfo, this.lastAttemptedTokenExtendDate, this.shouldAutoPublish, this.pendingAuthorizationRequest, null);
        }
    }
    
    interface StartActivityDelegate
    {
        Activity getActivityContext();
        
        void startActivityForResult(Intent p0, int p1);
    }
    
    public interface StatusCallback
    {
        void call(Session p0, SessionState p1, Exception p2);
    }
    
    class TokenRefreshRequest implements ServiceConnection
    {
        final Messenger messageReceiver;
        Messenger messageSender;
        
        TokenRefreshRequest() {
            super();
            this.messageReceiver = new Messenger((Handler)new TokenRefreshRequestHandler(Session.this, this));
            this.messageSender = null;
        }
        
        private void cleanup() {
            if (Session.this.currentTokenRefreshRequest == this) {
                Session.access$3(Session.this, null);
            }
        }
        
        private void refreshToken() {
            final Bundle data = new Bundle();
            data.putString("access_token", Session.this.getTokenInfo().getToken());
            final Message obtain = Message.obtain();
            obtain.setData(data);
            obtain.replyTo = this.messageReceiver;
            try {
                this.messageSender.send(obtain);
            }
            catch (RemoteException ex) {
                this.cleanup();
            }
        }
        
        public void bind() {
            final Intent tokenRefreshIntent = NativeProtocol.createTokenRefreshIntent(Session.getStaticContext());
            if (tokenRefreshIntent != null && Session.staticContext.bindService(tokenRefreshIntent, (ServiceConnection)this, 1)) {
                Session.this.setLastAttemptedTokenExtendDate(new Date());
                return;
            }
            this.cleanup();
        }
        
        public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
            this.messageSender = new Messenger(binder);
            this.refreshToken();
        }
        
        public void onServiceDisconnected(final ComponentName componentName) {
            this.cleanup();
            Session.staticContext.unbindService((ServiceConnection)this);
        }
    }
    
    static class TokenRefreshRequestHandler extends Handler
    {
        private WeakReference<TokenRefreshRequest> refreshRequestWeakReference;
        private WeakReference<Session> sessionWeakReference;
        
        TokenRefreshRequestHandler(final Session referent, final TokenRefreshRequest referent2) {
            super(Looper.getMainLooper());
            this.sessionWeakReference = new WeakReference<Session>(referent);
            this.refreshRequestWeakReference = new WeakReference<TokenRefreshRequest>(referent2);
        }
        
        public void handleMessage(final Message message) {
            final String string = message.getData().getString("access_token");
            final Session session = this.sessionWeakReference.get();
            if (session != null && string != null) {
                session.extendTokenCompleted(message.getData());
            }
            final TokenRefreshRequest tokenRefreshRequest = this.refreshRequestWeakReference.get();
            if (tokenRefreshRequest != null) {
                Session.staticContext.unbindService((ServiceConnection)tokenRefreshRequest);
                tokenRefreshRequest.cleanup();
            }
        }
    }
}
