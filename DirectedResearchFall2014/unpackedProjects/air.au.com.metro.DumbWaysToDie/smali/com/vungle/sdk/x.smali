.class public final Lcom/vungle/sdk/x;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vungle/sdk/y;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/x;->e:Lorg/json/JSONArray;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vungle/sdk/x;->b:J

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/x;->d:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 67
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 69
    const/4 v2, 0x0

    .line 72
    :try_start_0
    const-string v0, "clickedThrough"

    .line 73
    iget-object v3, p0, Lcom/vungle/sdk/x;->e:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v0, "adStartTime"

    .line 75
    iget-wide v3, p0, Lcom/vungle/sdk/x;->a:J

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    const-string v0, "adDuration"

    .line 77
    iget-wide v3, p0, Lcom/vungle/sdk/x;->b:J

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 78
    const-string v0, "ttDownload"

    .line 79
    iget-wide v3, p0, Lcom/vungle/sdk/x;->c:J

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    iget-object v0, p0, Lcom/vungle/sdk/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vungle/sdk/x;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 82
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/vungle/sdk/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 84
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vungle/sdk/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/y;

    invoke-virtual {v0}, Lcom/vungle/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 84
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 87
    :cond_0
    const-string v0, "plays"

    .line 88
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_1
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0, v1}, Lcom/vungle/sdk/model/RequestAd;->a(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_1
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    const-string v3, "JSONException"

    invoke-static {v1, v3, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vungle/sdk/x;->e:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/x;->e:Lorg/json/JSONArray;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/x;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 110
    return-void
.end method
