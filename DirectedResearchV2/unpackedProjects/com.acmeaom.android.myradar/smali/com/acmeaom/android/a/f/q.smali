.class final Lcom/acmeaom/android/a/f/q;
.super Lcom/acmeaom/android/a/f/w;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/acmeaom/android/a/f/w;-><init>(Lcom/acmeaom/android/a/f/p;)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/util/Map;Lcom/acmeaom/android/a/f/t;Lcom/acmeaom/android/a/f/t;)Lcom/android/a/p;
    .locals 7

    .prologue
    .line 99
    if-eqz p3, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    :goto_0
    new-instance v0, Lcom/acmeaom/android/a/f/r;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/a/f/r;-><init>(Lcom/acmeaom/android/a/f/q;ILjava/lang/String;Ljava/lang/String;Lcom/android/a/v;Lcom/android/a/u;)V

    return-object v0

    .line 99
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
