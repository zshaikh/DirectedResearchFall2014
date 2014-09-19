.class public Lcom/facebook/InsightsLogger;
.super Ljava/lang/Object;


# static fields
.field private static final EVENT_NAME_LOG_CONVERSION_PIXEL:Ljava/lang/String; = "fb_log_offsite_pixel"

.field private static final EVENT_NAME_LOG_MOBILE_PURCHASE:Ljava/lang/String; = "fb_mobile_purchase"

.field private static final EVENT_PARAMETER_CURRENCY:Ljava/lang/String; = "fb_currency"

.field private static final EVENT_PARAMETER_PIXEL_ID:Ljava/lang/String; = "fb_offsite_pixel_id"

.field private static final EVENT_PARAMETER_PIXEL_VALUE:Ljava/lang/String; = "fb_offsite_pixel_value"

.field private static appAuthSession:Lcom/facebook/Session;


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final clientToken:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final specifiedSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object p1, p0, Lcom/facebook/InsightsLogger;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/InsightsLogger;->clientToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/InsightsLogger;->specifiedSession:Lcom/facebook/Session;

    return-void

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/InsightsLogger;->buildJSONForEvent(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/InsightsLogger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/InsightsLogger;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/InsightsLogger;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/InsightsLogger;)Lcom/facebook/Session;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/InsightsLogger;->sessionToLogTo()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void
.end method

.method private static buildJSONForEvent(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "_eventName"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/high16 v1, 0x3ff0

    cmpl-double v1, p1, v1

    if-eqz v1, :cond_0

    const-string v1, "_valueToSum"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_1

    const-string v3, "Parameter \'%s\' must be a string or a numeric type."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v0, Lcom/facebook/InsightsLogger$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/InsightsLogger$1;-><init>(Lcom/facebook/InsightsLogger;Ljava/lang/String;DLandroid/os/Bundle;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/InsightsLogger;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/InsightsLogger;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/InsightsLogger;
    .locals 2

    new-instance v0, Lcom/facebook/InsightsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)Lcom/facebook/InsightsLogger;
    .locals 1

    new-instance v0, Lcom/facebook/InsightsLogger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "Insights"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sessionToLogTo()Lcom/facebook/Session;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/InsightsLogger;->specifiedSession:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_2
    sget-object v0, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    if-nez v0, :cond_3

    const-string v0, "%s|%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/InsightsLogger;->clientToken:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

    invoke-static {v0, v1, v2}, Lcom/facebook/AccessToken;->createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/facebook/Session;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    new-instance v4, Lcom/facebook/NonCachingTokenCachingStrategy;

    invoke-direct {v4}, Lcom/facebook/NonCachingTokenCachingStrategy;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    sput-object v1, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    :cond_3
    sget-object v0, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public logConversionPixel(Ljava/lang/String;D)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "pixelID cannot be null"

    invoke-static {v0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_offsite_pixel_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_offsite_pixel_value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "fb_log_offsite_pixel"

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/facebook/InsightsLogger;->logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/InsightsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const-string v1, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/facebook/InsightsLogger;->logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_1
.end method
