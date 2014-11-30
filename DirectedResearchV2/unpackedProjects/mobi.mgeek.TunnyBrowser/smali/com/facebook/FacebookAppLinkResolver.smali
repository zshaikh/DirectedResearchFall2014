.class public Lcom/facebook/FacebookAppLinkResolver;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"


# static fields
.field private static final APP_LINK_ANDROID_TARGET_KEY:Ljava/lang/String; = "android"

.field private static final APP_LINK_TARGET_APP_NAME_KEY:Ljava/lang/String; = "app_name"

.field private static final APP_LINK_TARGET_CLASS_KEY:Ljava/lang/String; = "class"

.field private static final APP_LINK_TARGET_PACKAGE_KEY:Ljava/lang/String; = "package"

.field private static final APP_LINK_TARGET_SHOULD_FALLBACK_KEY:Ljava/lang/String; = "should_fallback"

.field private static final APP_LINK_TARGET_URL_KEY:Ljava/lang/String; = "url"

.field private static final APP_LINK_WEB_TARGET_KEY:Ljava/lang/String; = "web"


# instance fields
.field private final cachedAppLinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lb/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lb/b;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lb/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/facebook/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/FacebookAppLinkResolver;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getAndroidTargetFromJson(Lorg/json/JSONObject;)Lb/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 179
    const-string v1, "package"

    invoke-static {p0, v1, v0}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    if-nez v2, :cond_0

    .line 192
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const-string v1, "class"

    invoke-static {p0, v1, v0}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    const-string v1, "app_name"

    invoke-static {p0, v1, v0}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    const-string v1, "url"

    invoke-static {p0, v1, v0}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_1

    .line 189
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 192
    :cond_1
    new-instance v1, Lb/b;

    invoke-direct {v1, v2, v3, v0, v4}, Lb/b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 198
    :try_start_0
    const-string v1, "web"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 199
    const-string v2, "should_fallback"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/facebook/FacebookAppLinkResolver;->tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 200
    if-nez v2, :cond_1

    move-object p0, v0

    .line 215
    :cond_0
    :goto_0
    return-object p0

    .line 205
    :cond_1
    const-string v2, "url"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/facebook/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_2

    .line 208
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :cond_2
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 231
    :goto_0
    return p2

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 223
    :goto_0
    return-object p2

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lb/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lb/e",
            "<",
            "Lb/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p0, v0}, Lcom/facebook/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lb/e;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/facebook/FacebookAppLinkResolver$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/FacebookAppLinkResolver$1;-><init>(Lcom/facebook/FacebookAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lb/e;->b(Lb/c;)Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public getAppLinkFromUrlsInBackground(Ljava/util/List;)Lb/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lb/e",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lb/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 86
    iget-object v7, p0, Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    monitor-enter v7

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/facebook/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a;

    .line 88
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 93
    :cond_0
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    const/16 v2, 0x2c

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-static {v4}, Lb/e;->a(Ljava/lang/Object;)Lb/e;

    move-result-object v0

    .line 175
    :goto_1
    return-object v0

    .line 105
    :cond_3
    invoke-static {}, Lb/e;->a()Lb/n;

    move-result-object v7

    .line 107
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string v0, "type"

    const-string v2, "al"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "ids"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "fields"

    const-string v2, "%s,%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "android"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "web"

    aput-object v9, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/facebook/Request;

    const-string v2, ""

    new-instance v5, Lcom/facebook/FacebookAppLinkResolver$2;

    invoke-direct {v5, p0, v7, v4, v6}, Lcom/facebook/FacebookAppLinkResolver$2;-><init>(Lcom/facebook/FacebookAppLinkResolver;Lb/n;Ljava/util/Map;Ljava/util/HashSet;)V

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 173
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 175
    invoke-virtual {v7}, Lb/n;->a()Lb/e;

    move-result-object v0

    goto :goto_1
.end method
