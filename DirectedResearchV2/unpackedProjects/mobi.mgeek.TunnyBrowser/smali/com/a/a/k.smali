.class public final Lcom/a/a/k;
.super Ljava/lang/Object;
.source "TrackResult.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/a/a/k;
    .locals 3

    .prologue
    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0}, Lcom/a/a/k;-><init>()V

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    if-nez v1, :cond_1

    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0}, Lcom/a/a/k;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 61
    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0}, Lcom/a/a/k;-><init>()V

    goto :goto_0

    .line 57
    :cond_1
    :try_start_1
    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0}, Lcom/a/a/k;-><init>()V

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/a/a/k;->a:I

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/k;->b:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/a/a/k;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/k;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
