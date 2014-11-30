.class public final Lcom/vungle/sdk/y;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    :try_start_0
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/vungle/sdk/y;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 78
    const-string v1, "videoLength"

    iget-wide v2, p0, Lcom/vungle/sdk/y;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 79
    const-string v1, "videoViewed"

    iget-wide v2, p0, Lcom/vungle/sdk/y;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    const-string v3, "JSONException"

    invoke-static {v2, v3, v1}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
