.class Lcom/acmeaom/android/a/f/r;
.super Lcom/android/a/a/p;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/a/f/q;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/f/q;ILjava/lang/String;Ljava/lang/String;Lcom/android/a/v;Lcom/android/a/u;)V
    .locals 6

    .prologue
    .line 101
    iput-object p1, p0, Lcom/acmeaom/android/a/f/r;->a:Lcom/acmeaom/android/a/f/q;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/a/a/p;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/a/v;Lcom/android/a/u;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/a/m;)Lcom/android/a/t;
    .locals 3

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/a/m;->b:[B

    iget-object v2, p1, Lcom/android/a/m;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/a/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 107
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/a/a/j;->a(Lcom/android/a/m;)Lcom/android/a/c;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/a/t;->a(Ljava/lang/Object;Lcom/android/a/c;)Lcom/android/a/t;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Lcom/android/a/o;

    invoke-direct {v1, v0}, Lcom/android/a/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/a/t;->a(Lcom/android/a/aa;)Lcom/android/a/t;

    move-result-object v0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    new-instance v1, Lcom/android/a/o;

    invoke-direct {v1, v0}, Lcom/android/a/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/a/t;->a(Lcom/android/a/aa;)Lcom/android/a/t;

    move-result-object v0

    goto :goto_0
.end method
