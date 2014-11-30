.class Lcom/acmeaom/android/a/f/u;
.super Lcom/android/a/a/o;
.source "ProGuard"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/acmeaom/android/a/f/t;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/a/f/t;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/a/v;Lcom/android/a/u;ILjava/util/Map;)V
    .locals 6

    .prologue
    .line 149
    iput-object p1, p0, Lcom/acmeaom/android/a/f/u;->c:Lcom/acmeaom/android/a/f/t;

    iput p7, p0, Lcom/acmeaom/android/a/f/u;->a:I

    iput-object p8, p0, Lcom/acmeaom/android/a/f/u;->b:Ljava/util/Map;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/a/a/o;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/a/v;Lcom/android/a/u;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/acmeaom/android/a/f/u;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    const-string v0, "application/json; charset=utf-8"

    .line 154
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/a/a/o;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()[B
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/acmeaom/android/a/f/u;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/acmeaom/android/a/f/u;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/a/a/o;->b()[B

    move-result-object v0

    goto :goto_0
.end method
