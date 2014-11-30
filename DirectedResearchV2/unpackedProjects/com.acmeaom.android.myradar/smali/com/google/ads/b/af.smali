.class public Lcom/google/ads/b/af;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/ads/b/af;->a:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    :try_start_0
    const-string v0, "debugHeader"

    iget-object v2, p0, Lcom/google/ads/b/af;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 127
    const-string v2, "Could not build ReportAdJson from inputs."

    invoke-static {v2, v0}, Lcom/google/ads/e/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
