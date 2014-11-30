.class public Lcom/facebook/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_ACTIVE_SESSION_CLOSED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

.field public static final ACTION_ACTIVE_SESSION_OPENED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"

.field public static final ACTION_ACTIVE_SESSION_SET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"

.field public static final ACTION_ACTIVE_SESSION_UNSET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"

.field private static final AUTH_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"

.field private static final BASIC_INFO_PERMISSION:Ljava/lang/String; = "basic_info"

.field public static final DEFAULT_AUTHORIZE_ACTIVITY_CODE:I = 0xface

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final SESSION_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"

.field private static final STATIC_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String;

.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10

.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180

.field public static final WEB_VIEW_ERROR_CODE_KEY:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"

.field public static final WEB_VIEW_FAILING_URL_KEY:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"

.field private static activeSession:Lcom/facebook/Session; = null

.field private static final serialVersionUID:J = 0x1L

.field private static volatile staticContext:Landroid/content/Context;


# instance fields
.field private appEventsLogger:Lcom/facebook/AppEventsLogger;

.field private applicationId:Ljava/lang/String;

.field private volatile authorizationBundle:Landroid/os/Bundle;

.field private authorizationClient:Lcom/facebook/AuthorizationClient;

.field private autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Session$StatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

.field private handler:Landroid/os/Handler;

.field private lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final lock:Ljava/lang/Object;

.field private pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private requestedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/facebook/SessionState;

.field private tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

.field private tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/facebook/Session;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/facebook/Session$1;

    invoke-direct {v0}, Lcom/facebook/Session$1;-><init>()V

    sput-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 267
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 271
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 144
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 277
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 278
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 281
    :cond_0
    const-string v1, "applicationId"

    invoke-static {p2, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 285
    if-nez p3, :cond_1

    .line 286
    new-instance p3, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    sget-object v1, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    .line 289
    :cond_1
    iput-object p2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 291
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 292
    iput-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 294
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 296
    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v0

    .line 297
    :cond_2
    invoke-static {v0}, Lcom/facebook/TokenCachingStrategy;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 298
    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {v0, v1}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 300
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 302
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 305
    :cond_3
    invoke-virtual {p3}, Lcom/facebook/TokenCachingStrategy;->clear()V

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 315
    :goto_0
    return-void

    .line 309
    :cond_4
    invoke-static {v0}, Lcom/facebook/AccessToken;->createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 310
    sget-object v0, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_0

    .line 313
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 230
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 232
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 233
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 234
    iput-object p6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 236
    iput-object v3, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 237
    iput-object v3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/SessionState;",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/facebook/Session$AuthorizationRequest;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 248
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 250
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 251
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 252
    iput-object p6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 253
    iput-object p7, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;

    .line 254
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 255
    iput-object v3, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 256
    iput-object v3, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;Lcom/facebook/Session$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/facebook/Session;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/Session;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)Lcom/facebook/Session$TokenRefreshRequest;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)Lcom/facebook/Session$AutoPublishAsyncTask;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/Session;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/Session;)Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/Session;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object p1
.end method

.method static synthetic access$400(Lcom/facebook/Session;)Lcom/facebook/SessionState;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    return-object v0
.end method

.method private addRequestedPermissions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1518
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1519
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1520
    iget-object v3, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    return-void
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1770
    if-nez p0, :cond_1

    .line 1771
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1773
    :goto_0
    return v0

    .line 1771
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1773
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private autoPublishAsync()V
    .locals 3

    .prologue
    .line 1834
    const/4 v0, 0x0

    .line 1835
    monitor-enter p0

    .line 1836
    :try_start_0
    iget-object v1, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/facebook/Settings;->getShouldAutoPublishInstall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1838
    iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 1841
    if-eqz v1, :cond_0

    .line 1842
    new-instance v0, Lcom/facebook/Session$AutoPublishAsyncTask;

    sget-object v2, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/Session$AutoPublishAsyncTask;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    .line 1845
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    if-eqz v0, :cond_1

    .line 1848
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$AutoPublishAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1850
    :cond_1
    return-void

    .line 1845
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1485
    if-eqz p1, :cond_1

    .line 1486
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1487
    invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V

    .line 1489
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1493
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1494
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1495
    return-void

    .line 1490
    :cond_1
    if-eqz p2, :cond_0

    .line 1491
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_0
.end method

.method private finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1500
    if-eqz p1, :cond_0

    .line 1501
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1502
    invoke-direct {p0, p1}, Lcom/facebook/Session;->saveTokenToCache(Lcom/facebook/AccessToken;)V

    .line 1504
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1507
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1508
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1509
    return-void
.end method

.method public static final getActiveSession()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 935
    sget-object v1, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_0
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    monitor-exit v1

    return-object v0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .locals 3

    .prologue
    .line 1624
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1625
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-nez v0, :cond_0

    .line 1626
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    monitor-exit v1

    return-object v0

    .line 1629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1423
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1424
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    move-result-object v1

    .line 1428
    invoke-static {v1}, Lcom/facebook/LoginActivity;->populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;

    move-result-object v1

    .line 1429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1431
    return-object v0
.end method

.method static getStaticContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1134
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1311
    .line 1313
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1314
    iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;

    if-ne v0, v2, :cond_0

    .line 1315
    iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    move-object v2, v0

    move-object v0, v1

    .line 1323
    :goto_0
    iget-object v3, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    iget-object v4, p2, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    invoke-direct {p0, v3, v4, v0}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 1325
    iput-object v1, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 1326
    invoke-virtual {p0, v2, v0}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    .line 1327
    return-void

    .line 1317
    :cond_0
    new-instance v0, Lcom/facebook/FacebookAuthorizationException;

    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 1319
    :cond_1
    if-nez p1, :cond_2

    .line 1320
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    iget-object v2, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method static handlePermissionResponse(Lcom/facebook/Session;Lcom/facebook/Response;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            "Lcom/facebook/Response;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 649
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 693
    :goto_0
    return-object v0

    .line 653
    :cond_0
    const-class v0, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p1, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphMultiResult;

    .line 654
    if-nez v0, :cond_1

    move-object v0, v1

    .line 655
    goto :goto_0

    .line 658
    :cond_1
    invoke-interface {v0}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v3

    .line 659
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 660
    goto :goto_0

    .line 662
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 663
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 666
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 667
    const-string v1, "permission"

    invoke-interface {v0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 668
    invoke-interface {v3}, Lcom/facebook/model/GraphObjectList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    .line 669
    const-string v1, "permission"

    invoke-interface {v0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 670
    const-string v5, "status"

    invoke-interface {v0, v5}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 671
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const-string v5, "granted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 677
    :cond_5
    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v0

    .line 678
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 679
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "installed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 682
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_6

    .line 684
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 690
    :cond_7
    if-eqz p0, :cond_8

    .line 691
    invoke-direct {p0, v4}, Lcom/facebook/Session;->addRequestedPermissions(Ljava/util/List;)V

    :cond_8
    move-object v0, v2

    .line 693
    goto/16 :goto_0
.end method

.method static initializeStaticContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1138
    if-eqz p0, :cond_1

    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    .line 1142
    :cond_1
    return-void
.end method

.method public static isPublishPermission(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1303
    if-eqz p0, :cond_1

    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AuthorizationClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1354
    .line 1355
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-nez v0, :cond_0

    .line 1357
    const-string v0, ""

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1358
    const-string v1, "2_result"

    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v1, "5_error_message"

    const-string v2, "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :goto_0
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1393
    invoke-direct {p0}, Lcom/facebook/Session;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object v1

    .line 1394
    const-string v2, "fb_mobile_login_complete"

    invoke-virtual {v1, v2, v4, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1395
    return-void

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1364
    if-eqz p1, :cond_1

    .line 1365
    const-string v0, "2_result"

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1368
    const-string v0, "5_error_message"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_2
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1374
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v1}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1376
    :goto_1
    if-eqz p2, :cond_3

    .line 1377
    if-nez v0, :cond_6

    .line 1378
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1381
    :goto_2
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1382
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1384
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 1387
    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    .line 1388
    const-string v1, "6_extras"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    .line 1385
    goto :goto_4

    :cond_6
    move-object v3, v0

    goto :goto_2

    :cond_7
    move-object v0, v4

    goto :goto_1
.end method

.method private logAuthorizationStart()V
    .locals 5

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1331
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1335
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1336
    const-string v2, "login_behavior"

    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$700(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionLoginBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1338
    const-string v2, "request_code"

    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->requestCode:I
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$800(Lcom/facebook/Session$AuthorizationRequest;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1339
    const-string v2, "is_legacy"

    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1340
    const-string v2, "permissions"

    const-string v3, ","

    iget-object v4, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;
    invoke-static {v4}, Lcom/facebook/Session$AuthorizationRequest;->access$900(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1342
    const-string v2, "default_audience"

    iget-object v3, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
    invoke-static {v3}, Lcom/facebook/Session$AuthorizationRequest;->access$1000(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionDefaultAudience;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1344
    const-string v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :goto_0
    invoke-direct {p0}, Lcom/facebook/Session;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object v1

    .line 1349
    const-string v2, "fb_mobile_login_start"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1350
    return-void

    .line 1345
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 5

    .prologue
    .line 1190
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 1191
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1194
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1195
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1198
    monitor-exit v1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1202
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1223
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open an already opened session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1204
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1205
    if-nez p1, :cond_2

    .line 1206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "openRequest cannot be null when opening a new Session"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1208
    :cond_2
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1226
    :goto_1
    if-eqz p1, :cond_3

    .line 1227
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1229
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1230
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1232
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v0, v1, :cond_0

    .line 1233
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    goto :goto_0

    .line 1211
    :pswitch_2
    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1212
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1213
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1216
    :cond_4
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-nez v0, :cond_5

    .line 1217
    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_1

    .line 1219
    :cond_5
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 1011
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$StatusCallback;",
            ")",
            "Lcom/facebook/Session;"
        }
    .end annotation

    .prologue
    .line 1035
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 1061
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLjava/util/List;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$StatusCallback;",
            ")",
            "Lcom/facebook/Session;"
        }
    .end annotation

    .prologue
    .line 1086
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p4}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method private static openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
    .locals 3

    .prologue
    .line 1124
    new-instance v0, Lcom/facebook/Session$Builder;

    invoke-direct {v0, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    .line 1125
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1126
    :cond_0
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 1127
    invoke-virtual {v0, p2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 1130
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 989
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSessionWithAccessToken(Landroid/content/Context;Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1115
    new-instance v0, Lcom/facebook/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    .line 1117
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 1118
    invoke-virtual {v0, p1, p2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    .line 1120
    return-object v0
.end method

.method static postActiveSessionAction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1572
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/e;->a(Landroid/content/Context;)Landroid/support/v4/content/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/e;->a(Landroid/content/Intent;)Z

    .line 1575
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 861
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 3

    .prologue
    .line 1238
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 1239
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1241
    if-eqz p1, :cond_1

    .line 1242
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    .line 1244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to request new permissions for a session that has a pending request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1247
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1248
    iput-object p1, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1256
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    invoke-virtual {p0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setValidateSameFbidAsToken(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p1}, Lcom/facebook/Session$NewPermissionsRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1260
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1262
    :cond_1
    return-void

    .line 1249
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to request new permissions for a session that has been closed."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to request new permissions for a session that is not currently open."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1414
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1415
    if-nez v1, :cond_0

    .line 1418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 900
    if-nez p3, :cond_0

    move-object v0, v1

    .line 925
    :goto_0
    return-object v0

    .line 903
    :cond_0
    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 904
    if-eqz v0, :cond_2

    .line 905
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 907
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Session;

    .line 908
    invoke-static {p0}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 909
    if-eqz p1, :cond_3

    .line 910
    iput-object p1, v0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    .line 914
    :goto_1
    if-eqz p2, :cond_1

    .line 915
    invoke-virtual {v0, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 917
    :cond_1
    const-string v2, "com.facebook.sdk.Session.authBundleKey"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string v3, "Unable to restore session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    move-object v0, v1

    .line 925
    goto :goto_0

    .line 912
    :cond_3
    :try_start_1
    new-instance v2, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-direct {v2, p0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 921
    :catch_1
    move-exception v0

    .line 922
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string v3, "Unable to restore session."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1578
    if-eqz p0, :cond_0

    .line 1579
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1583
    :goto_0
    return-void

    .line 1581
    :cond_0
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 872
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 875
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    const-string v1, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 880
    const-string v0, "com.facebook.sdk.Session.authBundleKey"

    iget-object v1, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 882
    :cond_0
    return-void

    .line 876
    :catch_0
    move-exception v0

    .line 877
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unable to save session."

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveTokenToCache(Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 1512
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 1515
    :cond_0
    return-void
.end method

.method public static final setActiveSession(Lcom/facebook/Session;)V
    .locals 2

    .prologue
    .line 956
    sget-object v1, Lcom/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_0
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    if-eq p0, v0, :cond_2

    .line 958
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    .line 960
    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 964
    :cond_0
    sput-object p0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    .line 966
    if-eqz v0, :cond_1

    .line 967
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 970
    :cond_1
    if-eqz p0, :cond_2

    .line 971
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 978
    :cond_2
    monitor-exit v1

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 2

    .prologue
    .line 1435
    new-instance v0, Lcom/facebook/AuthorizationClient;

    invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 1436
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v1, Lcom/facebook/Session$3;

    invoke-direct {v1, p0}, Lcom/facebook/Session$3;-><init>(Lcom/facebook/Session;)V

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    .line 1448
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/content/Context;)V

    .line 1449
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 1450
    return-void
.end method

.method private tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1398
    invoke-direct {p0, p1}, Lcom/facebook/Session;->getLoginActivityIntent(Lcom/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;

    move-result-object v1

    .line 1400
    invoke-direct {p0, v1}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1410
    :goto_0
    return v0

    .line 1405
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    const/4 v0, 0x1

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 5

    .prologue
    .line 1265
    if-eqz p1, :cond_0

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1267
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1268
    invoke-direct {p0, v0}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/facebook/LoginActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_0
    return-void
.end method

.method private validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/internal/SessionAuthorizationType;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1277
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    :cond_0
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1279
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot request publish or manage authorization with no permissions."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1283
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1284
    invoke-static {v0}, Lcom/facebook/Session;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1285
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1286
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1292
    :cond_3
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1293
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string v3, "Should not pass a read permission (%s) to a request for publish or manage authorization"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1300
    :cond_4
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 855
    new-instance v0, Lcom/facebook/Session$SerializationProxyV2;

    iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    iget-object v7, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/Session$SerializationProxyV2;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 2

    .prologue
    .line 806
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 807
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_0
    monitor-exit v1

    .line 811
    return-void

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method authorize(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 5

    .prologue
    .line 1145
    .line 1147
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/Session$AuthorizationRequest;->setApplicationId(Ljava/lang/String;)V

    .line 1149
    invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V

    .line 1151
    invoke-direct {p0}, Lcom/facebook/Session;->logAuthorizationStart()V

    .line 1153
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLoginActivity(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v1

    .line 1155
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/Session;->addRequestedPermissions(Ljava/util/List;)V

    .line 1157
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "try_login_activity"

    if-eqz v1, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    if-nez v1, :cond_2

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$600(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1161
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    # getter for: Lcom/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$500(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "try_legacy"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryLegacyAuth(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1165
    const/4 v0, 0x1

    .line 1168
    :goto_1
    if-nez v0, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1172
    sget-object v2, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1178
    sget-object v2, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1180
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Log in attempt failed: LoginActivity could not be started, and not legacy request"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 1182
    sget-object v3, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 1183
    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v0, v3, v2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1185
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    :cond_0
    :goto_2
    return-void

    .line 1157
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 1175
    :pswitch_0
    :try_start_1
    monitor-exit v1

    goto :goto_2

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1172
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 5

    .prologue
    .line 762
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 765
    sget-object v2, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 784
    :goto_0
    monitor-exit v1

    .line 785
    return-void

    .line 768
    :pswitch_0
    sget-object v2, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 769
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Log in attempt aborted."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 776
    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 777
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 765
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final closeAndClearTokenInformation()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {v0}, Lcom/facebook/TokenCachingStrategy;->clear()V

    .line 795
    :cond_0
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 796
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->clearCaches(Landroid/content/Context;)V

    .line 797
    invoke-virtual {p0}, Lcom/facebook/Session;->close()V

    .line 798
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1758
    instance-of v1, p1, Lcom/facebook/Session;

    if-nez v1, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return v0

    .line 1761
    :cond_1
    check-cast p1, Lcom/facebook/Session;

    .line 1763
    iget-object v1, p1, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-static {v1, v2}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method extendAccessToken()V
    .locals 3

    .prologue
    .line 1592
    const/4 v0, 0x0

    .line 1593
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1594
    :try_start_0
    iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    if-nez v2, :cond_0

    .line 1595
    new-instance v0, Lcom/facebook/Session$TokenRefreshRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V

    .line 1596
    iput-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 1598
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    if-eqz v0, :cond_1

    .line 1601
    invoke-virtual {v0}, Lcom/facebook/Session$TokenRefreshRequest;->bind()V

    .line 1603
    :cond_1
    return-void

    .line 1598
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method extendAccessTokenIfNeeded()V
    .locals 1

    .prologue
    .line 1586
    invoke-virtual {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    invoke-virtual {p0}, Lcom/facebook/Session;->extendAccessToken()V

    .line 1589
    :cond_0
    return-void
.end method

.method extendTokenCompleted(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 832
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 835
    sget-object v2, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 844
    sget-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshToken ignored in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    monitor-exit v1

    .line 852
    :goto_0
    return-void

    .line 837
    :pswitch_0
    sget-object v2, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 838
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 847
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-static {v0, p1}, Lcom/facebook/AccessToken;->createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 848
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 851
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 835
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 1454
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    const/4 p1, 0x0

    .line 1456
    new-instance p2, Lcom/facebook/FacebookException;

    const-string v0, "Invalid access token."

    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1461
    :try_start_0
    sget-object v0, Lcom/facebook/Session$5;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1480
    :goto_0
    monitor-exit v1

    .line 1481
    return-void

    .line 1464
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishAuthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1470
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->finishReauthorization(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1477
    :pswitch_2
    sget-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected call to finishAuthOrReauth in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1461
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 325
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getDeclinedPermissions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 441
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    if-eqz v0, :cond_0

    .line 443
    const/4 v1, 0x0

    .line 444
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 447
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/facebook/Session;->requestedPermissions:Ljava/util/Set;

    const-string v5, "basic_info"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    const-string v0, "basic_info"

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 449
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 453
    :cond_0
    monitor-exit v2

    return-object v3

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 391
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastAttemptedTokenExtendDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getState()Lcom/facebook/SessionState;
    .locals 2

    .prologue
    .line 354
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    monitor-exit v1

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTokenInfo()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    return v0
.end method

.method public final isClosed()Z
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isOpened()Z
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 717
    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 721
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 723
    :cond_0
    const/4 v0, 0x0

    monitor-exit v2

    .line 754
    :goto_0
    return v0

    .line 725
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    .line 730
    if-eqz p4, :cond_5

    .line 731
    const-string v0, "com.facebook.LoginActivity:Result"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/AuthorizationClient$Result;

    .line 733
    if-eqz v0, :cond_2

    .line 735
    invoke-direct {p0, p3, v0}, Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V

    move v0, v1

    .line 736
    goto :goto_0

    .line 725
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/facebook/Session;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    move v0, v1

    .line 740
    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 747
    :goto_1
    if-nez v0, :cond_4

    .line 748
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v4, "Unexpected call to Session.onActivityResult"

    invoke-direct {v0, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 751
    :cond_4
    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/Session;->logAuthorizationComplete(Lcom/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 752
    invoke-virtual {p0, v3, v0}, Lcom/facebook/Session;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    move v0, v1

    .line 754
    goto :goto_0

    .line 742
    :cond_5
    if-nez p3, :cond_6

    .line 743
    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    const-string v0, "User canceled operation."

    invoke-direct {v2, v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 744
    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method

.method public final open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
    .locals 4

    .prologue
    .line 539
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 545
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open a previously-closed session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    sget-object v2, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-eq v0, v2, :cond_2

    .line 549
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open an already opened session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_2
    if-eqz p2, :cond_3

    .line 554
    invoke-virtual {p0, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 557
    :cond_3
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 559
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_4

    .line 560
    iget-object v0, p0, Lcom/facebook/Session;->tokenCachingStrategy:Lcom/facebook/TokenCachingStrategy;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 563
    :cond_4
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 564
    sget-object v2, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 565
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 566
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V

    .line 569
    return-void
.end method

.method public final openForPublish(Lcom/facebook/Session$OpenRequest;)V
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 520
    return-void
.end method

.method public final openForRead(Lcom/facebook/Session$OpenRequest;)V
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 485
    return-void
.end method

.method postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1529
    if-ne p1, p2, :cond_1

    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    if-eq p1, v0, :cond_1

    if-nez p3, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1542
    :cond_2
    new-instance v0, Lcom/facebook/Session$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/Session$4;-><init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1558
    iget-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1560
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    if-ne p0, v0, :cond_0

    .line 1561
    invoke-virtual {p1}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1562
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1563
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0

    .line 1565
    :cond_3
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v0}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final refreshPermissions()V
    .locals 2

    .prologue
    .line 622
    new-instance v0, Lcom/facebook/Request;

    const-string v1, "me/permissions"

    invoke-direct {v0, p0, v1}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;)V

    .line 623
    new-instance v1, Lcom/facebook/Session$2;

    invoke-direct {v1, p0}, Lcom/facebook/Session$2;-><init>(Lcom/facebook/Session;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 636
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 637
    return-void
.end method

.method public final removeCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 2

    .prologue
    .line 819
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 821
    monitor-exit v1

    .line 822
    return-void

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 609
    return-void
.end method

.method public final requestNewReadPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->requestNewPermissions(Lcom/facebook/Session$NewPermissionsRequest;Lcom/facebook/internal/SessionAuthorizationType;)V

    .line 589
    return-void
.end method

.method setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 0

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 1650
    return-void
.end method

.method setLastAttemptedTokenExtendDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 1646
    return-void
.end method

.method setTokenInfo(Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1638
    return-void
.end method

.method shouldExtendAccessToken()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1606
    iget-object v1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    if-eqz v1, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return v0

    .line 1612
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1614
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessTokenSource;->canExtendToken()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1617
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    goto :goto_1
.end method
