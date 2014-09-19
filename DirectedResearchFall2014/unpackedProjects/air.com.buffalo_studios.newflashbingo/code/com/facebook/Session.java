package com.facebook;

import android.os.*;
import org.json.*;
import android.text.*;
import com.facebook.internal.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
import java.io.*;
import android.content.*;
import java.util.*;

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
    private Session$AutoPublishAsyncTask autoPublishAsyncTask;
    private final List<Session$StatusCallback> callbacks;
    private volatile Session$TokenRefreshRequest currentTokenRefreshRequest;
    private Handler handler;
    private Date lastAttemptedTokenExtendDate;
    private final Object lock;
    private Session$AuthorizationRequest pendingAuthorizationRequest;
    private SessionState state;
    private TokenCachingStrategy tokenCachingStrategy;
    private AccessToken tokenInfo;
    
    static {
        TAG = Session.class.getCanonicalName();
        STATIC_LOCK = new Object();
        OTHER_PUBLISH_PERMISSIONS = new Session$1();
    }
    
    public Session(final Context context) {
        this(context, null, null, true);
    }
    
    Session(final Context context, final String s, final TokenCachingStrategy tokenCachingStrategy) {
        this(context, s, tokenCachingStrategy, true);
    }
    
    Session(final Context context, final String s, final TokenCachingStrategy tokenCachingStrategy, final boolean b) {
        super();
        this.lastAttemptedTokenExtendDate = new Date(0L);
        this.lock = new Object();
        String metadataApplicationId;
        if (context != null && s == null) {
            metadataApplicationId = Utility.getMetadataApplicationId(context);
        }
        else {
            metadataApplicationId = s;
        }
        Validate.notNull(metadataApplicationId, "applicationId");
        initializeStaticContext(context);
        TokenCachingStrategy tokenCachingStrategy2;
        if (tokenCachingStrategy == null) {
            tokenCachingStrategy2 = new SharedPreferencesTokenCachingStrategy(Session.staticContext);
        }
        else {
            tokenCachingStrategy2 = tokenCachingStrategy;
        }
        this.applicationId = metadataApplicationId;
        this.tokenCachingStrategy = tokenCachingStrategy2;
        this.state = SessionState.CREATED;
        this.pendingAuthorizationRequest = null;
        this.callbacks = new ArrayList<Session$StatusCallback>();
        this.handler = new Handler(Looper.getMainLooper());
        Bundle load;
        if (b) {
            load = tokenCachingStrategy2.load();
        }
        else {
            load = null;
        }
        if (TokenCachingStrategy.hasTokenInformation(load)) {
            final Date date = TokenCachingStrategy.getDate(load, "com.facebook.TokenCachingStrategy.ExpirationDate");
            final Date when = new Date();
            if (date != null && !date.before(when)) {
                this.tokenInfo = AccessToken.createFromCache(load);
                this.state = SessionState.CREATED_TOKEN_LOADED;
                return;
            }
            tokenCachingStrategy2.clear();
        }
        this.tokenInfo = AccessToken.createEmptyToken(Collections.emptyList());
    }
    
    private Session(final String applicationId, final SessionState state, final AccessToken tokenInfo, final Date lastAttemptedTokenExtendDate, final boolean b, final Session$AuthorizationRequest pendingAuthorizationRequest) {
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
        this.callbacks = new ArrayList<Session$StatusCallback>();
    }
    
    private static boolean areEqual(final Object o, final Object obj) {
        if (o == null) {
            return obj == null;
        }
        return o.equals(obj);
    }
    
    private void autoPublishAsync() {
        synchronized (this) {
            final Session$AutoPublishAsyncTask autoPublishAsyncTask = this.autoPublishAsyncTask;
            Session$AutoPublishAsyncTask autoPublishAsyncTask2 = null;
            if (autoPublishAsyncTask == null) {
                final boolean shouldAutoPublishInstall = Settings.getShouldAutoPublishInstall();
                autoPublishAsyncTask2 = null;
                if (shouldAutoPublishInstall) {
                    final String applicationId = this.applicationId;
                    autoPublishAsyncTask2 = null;
                    if (applicationId != null) {
                        autoPublishAsyncTask2 = new Session$AutoPublishAsyncTask(this, applicationId, Session.staticContext);
                        this.autoPublishAsyncTask = autoPublishAsyncTask2;
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
    
    private Intent getLoginActivityIntent(final Session$AuthorizationRequest session$AuthorizationRequest) {
        final Intent intent = new Intent();
        intent.setClass(getStaticContext(), (Class)LoginActivity.class);
        intent.setAction(session$AuthorizationRequest.getLoginBehavior().toString());
        intent.putExtras(LoginActivity.populateIntentExtras(session$AuthorizationRequest.getAuthorizationClientRequest()));
        return intent;
    }
    
    static Context getStaticContext() {
        return Session.staticContext;
    }
    
    private void handleAuthorizationResult(final int n, final AuthorizationClient$Result authorizationClient$Result) {
        AccessToken token;
        Exception ex;
        if (n == -1) {
            if (authorizationClient$Result.code == AuthorizationClient$Result$Code.SUCCESS) {
                token = authorizationClient$Result.token;
                ex = null;
            }
            else {
                ex = new FacebookAuthorizationException(authorizationClient$Result.errorMessage);
                token = null;
            }
        }
        else if (n == 0) {
            ex = new FacebookOperationCanceledException(authorizationClient$Result.errorMessage);
            token = null;
        }
        else {
            ex = null;
            token = null;
        }
        this.logAuthorizationComplete(authorizationClient$Result.code, authorizationClient$Result.loggingExtras, ex);
        this.authorizationClient = null;
        this.finishAuthOrReauth(token, ex);
    }
    
    static void initializeStaticContext(final Context context) {
        if (context != null && Session.staticContext == null) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            Session.staticContext = applicationContext;
        }
    }
    
    public static boolean isPublishPermission(final String s) {
        return s != null && (s.startsWith("publish") || s.startsWith("manage") || Session.OTHER_PUBLISH_PERMISSIONS.contains(s));
    }
    
    private void logAuthorizationComplete(final AuthorizationClient$Result$Code authorizationClient$Result$Code, final Map<String, String> map, final Exception ex) {
        Bundle authorizationLoggingBundle;
        if (this.pendingAuthorizationRequest == null) {
            authorizationLoggingBundle = AuthorizationClient.newAuthorizationLoggingBundle("");
            authorizationLoggingBundle.putString("2_result", AuthorizationClient$Result$Code.ERROR.getLoggingValue());
            authorizationLoggingBundle.putString("5_error_message", "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest.");
        }
        else {
            final Bundle authorizationLoggingBundle2 = AuthorizationClient.newAuthorizationLoggingBundle(this.pendingAuthorizationRequest.getAuthId());
            if (authorizationClient$Result$Code != null) {
                authorizationLoggingBundle2.putString("2_result", authorizationClient$Result$Code.getLoggingValue());
            }
            if (ex != null && ex.getMessage() != null) {
                authorizationLoggingBundle2.putString("5_error_message", ex.getMessage());
            }
            JSONObject jsonObject;
            if (!this.pendingAuthorizationRequest.loggingExtras.isEmpty()) {
                jsonObject = new JSONObject(this.pendingAuthorizationRequest.loggingExtras);
            }
            else {
                jsonObject = null;
            }
            Label_0232: {
                if (map != null) {
                    JSONObject jsonObject2;
                    if (jsonObject == null) {
                        jsonObject2 = new JSONObject();
                    }
                    else {
                        jsonObject2 = jsonObject;
                    }
                    Label_0257: {
                        try {
                            for (final Map.Entry<String, String> entry : map.entrySet()) {
                                jsonObject2.put((String)entry.getKey(), (Object)entry.getValue());
                            }
                            break Label_0257;
                        }
                        catch (JSONException ex2) {
                            jsonObject = jsonObject2;
                        }
                        break Label_0232;
                    }
                    jsonObject = jsonObject2;
                }
            }
            if (jsonObject != null) {
                authorizationLoggingBundle2.putString("6_extras", jsonObject.toString());
            }
            authorizationLoggingBundle = authorizationLoggingBundle2;
        }
        authorizationLoggingBundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        this.getAppEventsLogger().logSdkEvent("fb_mobile_login_complete", null, authorizationLoggingBundle);
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
    
    private void open(final Session$OpenRequest session$OpenRequest, final SessionAuthorizationType sessionAuthorizationType) {
        this.validatePermissions(session$OpenRequest, sessionAuthorizationType);
        this.validateLoginBehavior(session$OpenRequest);
        // monitorexit(o)
        while (true) {
            Label_0178: {
                final SessionState state;
                synchronized (this.lock) {
                    if (this.pendingAuthorizationRequest != null) {
                        this.postStateChange(this.state, this.state, new UnsupportedOperationException("Session: an attempt was made to open a session that has a pending request."));
                        return;
                    }
                    state = this.state;
                    switch (Session$4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()]) {
                        default: {
                            throw new UnsupportedOperationException("Session: an attempt was made to open an already opened session.");
                        }
                        case 1: {
                            break;
                        }
                        case 3: {
                            break Label_0178;
                        }
                    }
                }
                final SessionState state2 = SessionState.OPENING;
                this.state = state2;
                if (session$OpenRequest == null) {
                    throw new IllegalArgumentException("openRequest cannot be null when opening a new Session");
                }
                this.pendingAuthorizationRequest = session$OpenRequest;
                if (session$OpenRequest != null) {
                    this.addCallback(session$OpenRequest.getCallback());
                }
                this.postStateChange(state, state2, null);
                if (state2 == SessionState.OPENING) {
                    this.authorize(session$OpenRequest);
                    return;
                }
                return;
            }
            if (session$OpenRequest != null && !Utility.isNullOrEmpty(session$OpenRequest.getPermissions()) && !Utility.isSubset(session$OpenRequest.getPermissions(), this.getPermissions())) {
                this.pendingAuthorizationRequest = session$OpenRequest;
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
    
    public static Session openActiveSession(final Activity activity, final boolean b, final Session$StatusCallback callback) {
        return openActiveSession((Context)activity, b, new Session$OpenRequest(activity).setCallback(callback));
    }
    
    public static Session openActiveSession(final Context context, final e e, final boolean b, final Session$StatusCallback callback) {
        return openActiveSession(context, b, new Session$OpenRequest(e).setCallback(callback));
    }
    
    private static Session openActiveSession(final Context context, final boolean b, final Session$OpenRequest session$OpenRequest) {
        final Session build = new Session$Builder(context).build();
        if (SessionState.CREATED_TOKEN_LOADED.equals(build.getState()) || b) {
            setActiveSession(build);
            build.openForRead(session$OpenRequest);
            return build;
        }
        return null;
    }
    
    public static Session openActiveSessionFromCache(final Context context) {
        return openActiveSession(context, false, null);
    }
    
    public static Session openActiveSessionWithAccessToken(final Context context, final AccessToken accessToken, final Session$StatusCallback session$StatusCallback) {
        final Session activeSession = new Session(context, null, null, false);
        setActiveSession(activeSession);
        activeSession.open(accessToken, session$StatusCallback);
        return activeSession;
    }
    
    static void postActiveSessionAction(final String s) {
        ae.a(getStaticContext()).a(new Intent(s));
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Cannot readObject, serialization proxy required");
    }
    
    private void requestNewPermissions(final Session$NewPermissionsRequest pendingAuthorizationRequest, final SessionAuthorizationType sessionAuthorizationType) {
        this.validatePermissions(pendingAuthorizationRequest, sessionAuthorizationType);
        this.validateLoginBehavior(pendingAuthorizationRequest);
        if (pendingAuthorizationRequest != null) {
            synchronized (this.lock) {
                if (this.pendingAuthorizationRequest != null) {
                    throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that has a pending request.");
                }
            }
            if (this.state.isOpened()) {
                this.pendingAuthorizationRequest = pendingAuthorizationRequest;
                // monitorexit(o)
                pendingAuthorizationRequest.setValidateSameFbidAsToken(this.getAccessToken());
                this.addCallback(pendingAuthorizationRequest.getCallback());
                this.authorize(pendingAuthorizationRequest);
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
    
    public static final Session restoreSession(final Context context, final TokenCachingStrategy tokenCachingStrategy, final Session$StatusCallback session$StatusCallback, final Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        final byte[] byteArray = bundle.getByteArray("com.facebook.sdk.Session.saveSessionKey");
        if (byteArray == null) {
            goto Label_0099;
        }
        final ByteArrayInputStream in = new ByteArrayInputStream(byteArray);
        try {
            final Session session = (Session)new ObjectInputStream(in).readObject();
            initializeStaticContext(context);
            if (tokenCachingStrategy != null) {
                session.tokenCachingStrategy = tokenCachingStrategy;
                if (session$StatusCallback != null) {
                    session.addCallback(session$StatusCallback);
                }
                session.authorizationBundle = bundle.getBundle("com.facebook.sdk.Session.authBundleKey");
                return session;
            }
            goto Label_0101;
        }
        catch (ClassNotFoundException ex) {
            Log.w(Session.TAG, "Unable to restore session", (Throwable)ex);
        }
        catch (IOException ex2) {
            Log.w(Session.TAG, "Unable to restore session.", (Throwable)ex2);
            goto Label_0099;
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
    
    private void tryLegacyAuth(final Session$AuthorizationRequest session$AuthorizationRequest) {
        (this.authorizationClient = new AuthorizationClient()).setOnCompletedListener(new Session$2(this));
        this.authorizationClient.setContext(getStaticContext());
        this.authorizationClient.startOrContinueAuth(session$AuthorizationRequest.getAuthorizationClientRequest());
    }
    
    private boolean tryLoginActivity(final Session$AuthorizationRequest session$AuthorizationRequest) {
        final Intent loginActivityIntent = this.getLoginActivityIntent(session$AuthorizationRequest);
        if (!this.resolveIntent(loginActivityIntent)) {
            return false;
        }
        try {
            session$AuthorizationRequest.getStartActivityDelegate().startActivityForResult(loginActivityIntent, session$AuthorizationRequest.getRequestCode());
            return true;
        }
        catch (ActivityNotFoundException ex) {
            return false;
        }
    }
    
    private void validateLoginBehavior(final Session$AuthorizationRequest session$AuthorizationRequest) {
        if (session$AuthorizationRequest != null && !session$AuthorizationRequest.isLegacy) {
            final Intent intent = new Intent();
            intent.setClass(getStaticContext(), (Class)LoginActivity.class);
            if (!this.resolveIntent(intent)) {
                throw new FacebookException(String.format("Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml", session$AuthorizationRequest.getLoginBehavior(), LoginActivity.class.getName()));
            }
        }
    }
    
    private void validatePermissions(final Session$AuthorizationRequest session$AuthorizationRequest, final SessionAuthorizationType other) {
        if (session$AuthorizationRequest == null || Utility.isNullOrEmpty(session$AuthorizationRequest.getPermissions())) {
            if (SessionAuthorizationType.PUBLISH.equals(other)) {
                throw new FacebookException("Cannot request publish or manage authorization with no permissions.");
            }
        }
        else {
            for (final String s : session$AuthorizationRequest.getPermissions()) {
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
        return new Session$SerializationProxyV1(this.applicationId, this.state, this.tokenInfo, this.lastAttemptedTokenExtendDate, false, this.pendingAuthorizationRequest);
    }
    
    public final void addCallback(final Session$StatusCallback session$StatusCallback) {
        final List<Session$StatusCallback> callbacks = this.callbacks;
        // monitorenter(callbacks)
        if (session$StatusCallback == null) {
            return;
        }
        try {
            if (!this.callbacks.contains(session$StatusCallback)) {
                this.callbacks.add(session$StatusCallback);
            }
        }
        finally {
        }
        // monitorexit(callbacks)
    }
    
    void authorize(final Session$AuthorizationRequest session$AuthorizationRequest) {
        session$AuthorizationRequest.setApplicationId(this.applicationId);
        this.autoPublishAsync();
        this.logAuthorizationStart();
        int tryLoginActivity = this.tryLoginActivity(session$AuthorizationRequest) ? 1 : 0;
        final Map access$100 = this.pendingAuthorizationRequest.loggingExtras;
        Label_0185: {
            if (tryLoginActivity == 0) {
                break Label_0185;
            }
            String s = "1";
            while (true) {
                access$100.put("try_login_activity", s);
                if (tryLoginActivity == 0 && session$AuthorizationRequest.isLegacy) {
                    this.pendingAuthorizationRequest.loggingExtras.put("try_legacy", "1");
                    this.tryLegacyAuth(session$AuthorizationRequest);
                    tryLoginActivity = 1;
                }
                if (tryLoginActivity != 0) {
                    return;
                }
                synchronized (this.lock) {
                    final SessionState state = this.state;
                    switch (Session$4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()]) {
                        default: {
                            this.state = SessionState.CLOSED_LOGIN_FAILED;
                            final FacebookException ex = new FacebookException("Log in attempt failed: LoginActivity could not be started, and not legacy request");
                            this.logAuthorizationComplete(AuthorizationClient$Result$Code.ERROR, null, ex);
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
                    switch (Session$4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()]) {
                        case 1:
                        case 2: {
                            this.postStateChange(state, this.state = SessionState.CLOSED_LOGIN_FAILED, new FacebookException("Log in attempt aborted."));
                            break;
                        }
                        case 3:
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
    public final boolean equals(final Object o) {
        if (!(o instanceof Session)) {
            return false;
        }
        final Session session = (Session)o;
        return areEqual(session.applicationId, this.applicationId) && areEqual(session.authorizationBundle, this.authorizationBundle) && areEqual(session.state, this.state) && areEqual(session.getExpirationDate(), this.getExpirationDate());
    }
    
    void extendAccessToken() {
        synchronized (this.lock) {
            final Session$TokenRefreshRequest currentTokenRefreshRequest = this.currentTokenRefreshRequest;
            Session$TokenRefreshRequest currentTokenRefreshRequest2 = null;
            if (currentTokenRefreshRequest == null) {
                currentTokenRefreshRequest2 = new Session$TokenRefreshRequest(this);
                this.currentTokenRefreshRequest = currentTokenRefreshRequest2;
            }
            // monitorexit(this.lock)
            if (currentTokenRefreshRequest2 != null) {
                currentTokenRefreshRequest2.bind();
            }
        }
    }
    
    void extendAccessTokenIfNeeded() {
        if (this.shouldExtendAccessToken()) {
            this.extendAccessToken();
        }
    }
    
    void extendTokenCompleted(final Bundle bundle) {
        synchronized (this.lock) {
            final SessionState state = this.state;
            switch (Session$4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()]) {
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
    
    void finishAuthOrReauth(final AccessToken accessToken, final Exception ex) {
        AccessToken accessToken2;
        Exception ex3;
        if (accessToken != null && accessToken.isInvalid()) {
            final FacebookException ex2 = new FacebookException("Invalid access token.");
            accessToken2 = null;
            ex3 = ex2;
        }
        else {
            ex3 = ex;
            accessToken2 = accessToken;
        }
        while (true) {
            Label_0124: {
                Label_0114: {
                    synchronized (this.lock) {
                        switch (Session$4.$SwitchMap$com$facebook$SessionState[this.state.ordinal()]) {
                            case 2: {
                                this.finishAuthorization(accessToken2, ex3);
                                break;
                            }
                            case 4:
                            case 5: {
                                break Label_0114;
                            }
                            case 1:
                            case 3:
                            case 6:
                            case 7: {
                                break Label_0124;
                            }
                        }
                        return;
                    }
                }
                this.finishReauthorization(accessToken2, ex3);
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
    public final int hashCode() {
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
        while (true) {
            final AuthorizationClient$Result$Code error;
            Label_0154: {
                synchronized (this.lock) {
                    if (this.pendingAuthorizationRequest == null || n != this.pendingAuthorizationRequest.getRequestCode()) {
                        return false;
                    }
                    // monitorexit(this.lock)
                    error = AuthorizationClient$Result$Code.ERROR;
                    if (intent == null) {
                        break Label_0154;
                    }
                    final AuthorizationClient$Result authorizationClient$Result = (AuthorizationClient$Result)intent.getSerializableExtra("com.facebook.LoginActivity:Result");
                    if (authorizationClient$Result != null) {
                        this.handleAuthorizationResult(n2, authorizationClient$Result);
                        return true;
                    }
                }
                if (this.authorizationClient != null) {
                    this.authorizationClient.onActivityResult(n, n2, intent);
                    return true;
                }
                final AuthorizationClient$Result$Code authorizationClient$Result$Code = error;
                Exception ex = null;
                if (ex == null) {
                    ex = new FacebookException("Unexpected call to Session.onActivityResult");
                }
                this.logAuthorizationComplete(authorizationClient$Result$Code, null, ex);
                this.finishAuthOrReauth(null, ex);
                return true;
            }
            if (n2 == 0) {
                final FacebookOperationCanceledException ex2 = new FacebookOperationCanceledException("User canceled operation.");
                final AuthorizationClient$Result$Code cancel = AuthorizationClient$Result$Code.CANCEL;
                final Exception ex = ex2;
                final AuthorizationClient$Result$Code authorizationClient$Result$Code = cancel;
                continue;
            }
            final AuthorizationClient$Result$Code authorizationClient$Result$Code = error;
            Exception ex = null;
            continue;
        }
    }
    
    public final void open(final AccessToken tokenInfo, final Session$StatusCallback session$StatusCallback) {
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
        if (session$StatusCallback != null) {
            this.addCallback(session$StatusCallback);
        }
        this.tokenInfo = tokenInfo;
        if (this.tokenCachingStrategy != null) {
            this.tokenCachingStrategy.save(tokenInfo.toCacheBundle());
        }
        this.postStateChange(this.state, this.state = SessionState.OPENED, null);
        // monitorexit(o)
        this.autoPublishAsync();
    }
    
    public final void openForPublish(final Session$OpenRequest session$OpenRequest) {
        this.open(session$OpenRequest, SessionAuthorizationType.PUBLISH);
    }
    
    public final void openForRead(final Session$OpenRequest session$OpenRequest) {
        this.open(session$OpenRequest, SessionAuthorizationType.READ);
    }
    
    void postStateChange(final SessionState sessionState, final SessionState sessionState2, final Exception ex) {
        if (sessionState != sessionState2 || sessionState == SessionState.OPENED_TOKEN_UPDATED || ex != null) {
            if (sessionState2.isClosed()) {
                this.tokenInfo = AccessToken.createEmptyToken(Collections.emptyList());
            }
            runWithHandlerOrExecutor(this.handler, new Session$3(this, sessionState2, ex));
            if (this == Session.activeSession && sessionState.isOpened() != sessionState2.isOpened()) {
                if (sessionState2.isOpened()) {
                    postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
                    return;
                }
                postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_CLOSED");
            }
        }
    }
    
    public final void removeCallback(final Session$StatusCallback session$StatusCallback) {
        synchronized (this.callbacks) {
            this.callbacks.remove(session$StatusCallback);
        }
    }
    
    public final void requestNewPublishPermissions(final Session$NewPermissionsRequest session$NewPermissionsRequest) {
        this.requestNewPermissions(session$NewPermissionsRequest, SessionAuthorizationType.PUBLISH);
    }
    
    public final void requestNewReadPermissions(final Session$NewPermissionsRequest session$NewPermissionsRequest) {
        this.requestNewPermissions(session$NewPermissionsRequest, SessionAuthorizationType.READ);
    }
    
    void setCurrentTokenRefreshRequest(final Session$TokenRefreshRequest currentTokenRefreshRequest) {
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
        return this.state.isOpened() && this.tokenInfo.getSource().canExtendToken() && date.getTime() - this.lastAttemptedTokenExtendDate.getTime() > 3600000L && date.getTime() - this.tokenInfo.getLastRefresh().getTime() > 86400000L;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder("{Session state:").append(this.state).append(", token:");
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
}
