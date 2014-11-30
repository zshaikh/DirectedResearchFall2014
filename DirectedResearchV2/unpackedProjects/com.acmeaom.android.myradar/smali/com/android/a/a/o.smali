.class public Lcom/android/a/a/o;
.super Lcom/android/a/a/p;
.source "ProGuard"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/a/v;Lcom/android/a/u;)V
    .locals 6

    .prologue
    .line 47
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/a/a/p;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/a/v;Lcom/android/a/u;)V

    .line 49
    return-void

    .line 47
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/a/m;)Lcom/android/a/t;
    .locals 3

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/a/m;->b:[B

    iget-object v2, p1, Lcom/android/a/m;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/a/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/a/a/j;->a(Lcom/android/a/m;)Lcom/android/a/c;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/a/t;->a(Ljava/lang/Object;Lcom/android/a/c;)Lcom/android/a/t;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lcom/android/a/o;

    invoke-direct {v1, v0}, Lcom/android/a/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/a/t;->a(Lcom/android/a/aa;)Lcom/android/a/t;

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    new-instance v1, Lcom/android/a/o;

    invoke-direct {v1, v0}, Lcom/android/a/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/a/t;->a(Lcom/android/a/aa;)Lcom/android/a/t;

    move-result-object v0

    goto :goto_0
.end method
