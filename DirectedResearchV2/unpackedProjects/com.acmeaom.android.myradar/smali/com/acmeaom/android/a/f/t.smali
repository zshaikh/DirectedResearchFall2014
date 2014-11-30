.class Lcom/acmeaom/android/a/f/t;
.super Lcom/acmeaom/android/a/f/o;
.source "ProGuard"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/acmeaom/android/a/f/o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acmeaom/android/a/f/p;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/acmeaom/android/a/f/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/util/Map;Lcom/acmeaom/android/a/f/t;Lcom/acmeaom/android/a/f/t;)Lcom/android/a/p;
    .locals 9

    .prologue
    .line 149
    new-instance v0, Lcom/acmeaom/android/a/f/u;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/acmeaom/android/a/f/u;-><init>(Lcom/acmeaom/android/a/f/t;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/a/v;Lcom/android/a/u;ILjava/util/Map;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/android/a/p;
    .locals 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/acmeaom/android/a/f/t;->a:Lcom/acmeaom/android/a/f/y;

    invoke-interface {v0, p0}, Lcom/acmeaom/android/a/f/y;->b(Lcom/acmeaom/android/a/f/o;)Ljava/util/Map;

    move-result-object v3

    .line 139
    if-eqz v3, :cond_0

    .line 140
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/f/t;->a(ILjava/lang/String;Ljava/util/Map;Lcom/acmeaom/android/a/f/t;Lcom/acmeaom/android/a/f/t;)Lcom/android/a/p;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/f/t;->a(ILjava/lang/String;Ljava/util/Map;Lcom/acmeaom/android/a/f/t;Lcom/acmeaom/android/a/f/t;)Lcom/android/a/p;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/a/f/v;

    invoke-direct {v1, p0, p1}, Lcom/acmeaom/android/a/f/v;-><init>(Lcom/acmeaom/android/a/f/t;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
