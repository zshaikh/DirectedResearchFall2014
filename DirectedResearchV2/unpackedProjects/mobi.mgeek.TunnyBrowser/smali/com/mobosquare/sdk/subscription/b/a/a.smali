.class public Lcom/mobosquare/sdk/subscription/b/a/a;
.super Lcom/mobosquare/sdk/subscription/b/b;
.source "SubscriptionServiceClient.java"


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Lcom/mobosquare/sdk/subscription/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/mobosquare/sdk/subscription/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/b/a/a;->c:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    const-string v0, "subscription"

    const-string v1, "v1"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobosquare/sdk/subscription/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private static a(Lcom/mobosquare/sdk/subscription/a/a;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 47
    const-string v1, ""

    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string v0, ""

    .line 72
    :goto_0
    return-object v0

    .line 52
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 53
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 54
    const-string v0, "email"

    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/mobosquare/sdk/subscription/b/a/a;->a(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "productKey"

    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/mobosquare/sdk/subscription/b/a/a;->a(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v0, "guid"

    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/mobosquare/sdk/subscription/b/a/a;->a(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/a/a;->c()Landroid/os/Bundle;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    const-string v0, "dataContext"

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 60
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 61
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 68
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 69
    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 64
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static final declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Lcom/mobosquare/sdk/subscription/b/a/a;
    .locals 2

    .prologue
    .line 101
    const-class v1, Lcom/mobosquare/sdk/subscription/b/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mobosquare/sdk/subscription/b/a/a;->d:Lcom/mobosquare/sdk/subscription/b/a/a;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/mobosquare/sdk/subscription/b/a/a;

    invoke-direct {v0, p0, p1}, Lcom/mobosquare/sdk/subscription/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mobosquare/sdk/subscription/b/a/a;->d:Lcom/mobosquare/sdk/subscription/b/a/a;

    .line 104
    :cond_0
    sget-object v0, Lcom/mobosquare/sdk/subscription/b/a/a;->d:Lcom/mobosquare/sdk/subscription/b/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized e()Lcom/mobosquare/sdk/subscription/b/a/a;
    .locals 3

    .prologue
    .line 85
    const-class v1, Lcom/mobosquare/sdk/subscription/b/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mobosquare/sdk/subscription/b/a/a;->d:Lcom/mobosquare/sdk/subscription/b/a/a;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Call MarketServiceClient.init(String, String) first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mobosquare/sdk/subscription/b/a/a;->d:Lcom/mobosquare/sdk/subscription/b/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/b/a/a;->b()Lcom/mobosquare/sdk/subscription/b/f;

    move-result-object v0

    .line 120
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "subscribe"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobosquare/sdk/subscription/b/f;->b([Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Lcom/mobosquare/sdk/subscription/b/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/mobosquare/sdk/subscription/a/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mobosquare/sdk/subscription/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    invoke-static {v1}, Lcom/mobosquare/sdk/subscription/b/a/a;->a(Lcom/mobosquare/sdk/subscription/a/a;)Ljava/lang/String;

    move-result-object v1

    .line 124
    sget-object v2, Lcom/mobosquare/sdk/subscription/b/a/a;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v2, Lcom/mobosquare/sdk/subscription/b/a/a;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/mobosquare/sdk/subscription/c/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/mobosquare/sdk/subscription/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
