.class public Lcom/facebook/AppLinkData;
.super Ljava/lang/Object;


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private argumentBundle:Landroid/os/Bundle;

.field private arguments:Lorg/json/JSONObject;

.field private ref:Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    .locals 1

    invoke-static {p0}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/AppLinkData;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/AppLinkData;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/AppLinkData;
    .locals 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/facebook/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/AppLinkData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/AppLinkData;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "al_applink_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/facebook/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/AppLinkData;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    iget-object v2, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    const-string v2, "target_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    :cond_1
    iput-object v0, v1, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    iput-object v3, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "referer_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "fb_ref"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    .locals 6

    const/4 v4, 0x0

    const-string v0, "referer_data"

    const-string v0, "ref"

    const-string v0, "fb_ref"

    const-string v5, "Unable to parse AppLink JSON"

    if-nez p0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bridge_args"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "method"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "applink"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/facebook/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/AppLinkData;-><init>()V

    const-string v2, "method_args"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "ref"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "ref"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "target_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "target_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    :cond_2
    iget-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "referer_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "referer_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "fb_ref"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "fb_ref"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse AppLink JSON"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    move-object v0, v4

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse AppLink JSON"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/AppLinkData;-><init>()V

    iput-object p0, v0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "applicationId"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;

    invoke-direct {v1, p0, v0}, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/AppLinkData$1;

    invoke-direct {v0, p2}, Lcom/facebook/AppLinkData$1;-><init>(Lcom/facebook/AppLinkData$CompletionHandler;)V

    invoke-virtual {v1, v0}, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    invoke-virtual {v1}, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;->start()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/facebook/AppLinkData$2;

    invoke-direct {v1, p2}, Lcom/facebook/AppLinkData$2;-><init>(Lcom/facebook/AppLinkData$CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Landroid/os/Bundle;

    move v5, v7

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_3
    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_4

    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Nested arrays are not supported."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move v5, v7

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-object v2
.end method


# virtual methods
.method public getArgumentBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getArguments()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method
