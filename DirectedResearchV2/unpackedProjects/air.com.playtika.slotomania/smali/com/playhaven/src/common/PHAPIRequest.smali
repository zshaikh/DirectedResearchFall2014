.class public Lcom/playhaven/src/common/PHAPIRequest;
.super Ljava/lang/Object;
.source "PHAPIRequest.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAsyncRequest$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHAPIRequest$Delegate;
    }
.end annotation


# static fields
.field public static final API_CACHE_SUBDIR:Ljava/lang/String; = "apicache"

.field public static final APP_CACHE_VERSION:Ljava/lang/Integer;

.field public static final PRECACHE_FILE_KEY_INDEX:Ljava/lang/Integer;

.field private static preferences:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SESSION_PREFERENCES:Ljava/lang/String;

.field private additionalParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conn:Lcom/playhaven/src/common/PHAsyncRequest;

.field public delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

.field protected fullUrl:Ljava/lang/String;

.field private requestTag:I

.field private signedParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/playhaven/src/common/PHAPIRequest;->PRECACHE_FILE_KEY_INDEX:Ljava/lang/Integer;

    .line 50
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/playhaven/src/common/PHAPIRequest;->APP_CACHE_VERSION:Ljava/lang/Integer;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "com_playhaven_sdk_session"

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "com_playhaven_sdk_session"

    iput-object v1, p0, Lcom/playhaven/src/common/PHAPIRequest;->SESSION_PREFERENCES:Ljava/lang/String;

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-class v0, Lcom/playhaven/src/common/PHAPIRequest;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-static {p1}, Lcom/playhaven/src/common/PHConfig;->cacheDeviceInfo(Landroid/content/Context;)V

    .line 69
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 70
    const-string v2, "com_playhaven_sdk_session"

    .line 71
    const/4 v3, 0x2

    .line 69
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/playhaven/src/common/PHAPIRequest;->preferences:Ljava/lang/ref/WeakReference;

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    sget-object v0, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must set your token and secret from the Playhaven dashboard"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 82
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object p2, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .line 87
    return-void
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->urlPath:Ljava/lang/String;

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " canceled!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->finish()V

    .line 293
    return-void
.end method

.method public createAPIURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "slug"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/playhaven/src/common/PHConfig;->api:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finish()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->cancel(Z)Z

    .line 288
    return-void
.end method

.method public getAdditionalParams()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->additionalParams:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getConnection()Lcom/playhaven/src/common/PHAsyncRequest;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    return-object v0
.end method

.method public getPostParams()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestTag()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->requestTag:I

    return v0
.end method

.method public getRequestType()Lcom/playhaven/src/common/PHAsyncRequest$RequestType;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    return-object v0
.end method

.method public getSignedParams()Ljava/util/HashMap;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 140
    sget-object v21, Lcom/playhaven/src/common/PHConfig;->device_id:Ljava/lang/String;

    if-eqz v21, :cond_1

    sget-object v21, Lcom/playhaven/src/common/PHConfig;->device_id:Ljava/lang/String;

    move-object/from16 v8, v21

    .line 141
    .local v8, "device":Ljava/lang/String;
    :goto_0
    sget v21, Lcom/playhaven/src/common/PHConfig;->device_size:I

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "idiom":Ljava/lang/String;
    const-string v13, "0"

    .line 147
    .local v13, "orientation":Ljava/lang/String;
    invoke-static {}, Lcom/playhaven/src/utils/PHStringUtil;->generateUUID()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/playhaven/src/utils/PHStringUtil;->base64Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "nonce":Ljava/lang/String;
    sget-object v21, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    if-eqz v21, :cond_0

    sget-object v21, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    if-nez v21, :cond_2

    :cond_0
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    const-string v22, "You must set both the token and secret from the Playhaven Dashboard!"

    invoke-direct/range {v21 .. v22}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 140
    .end local v8    # "device":Ljava/lang/String;
    .end local v11    # "idiom":Ljava/lang/String;
    .end local v12    # "nonce":Ljava/lang/String;
    .end local v13    # "orientation":Ljava/lang/String;
    :cond_1
    const-string v21, "null"

    move-object/from16 v8, v21

    goto :goto_0

    .line 151
    .restart local v8    # "device":Ljava/lang/String;
    .restart local v11    # "idiom":Ljava/lang/String;
    .restart local v12    # "nonce":Ljava/lang/String;
    .restart local v13    # "orientation":Ljava/lang/String;
    :cond_2
    const-string v21, "%s:%s:%s:%s"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 152
    sget-object v24, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 153
    if-eqz v8, :cond_5

    move-object/from16 v24, v8

    :goto_1
    aput-object v24, v22, v23

    const/16 v23, 0x2

    .line 154
    if-eqz v12, :cond_6

    move-object/from16 v24, v12

    :goto_2
    aput-object v24, v22, v23

    const/16 v23, 0x3

    .line 155
    sget-object v24, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    aput-object v24, v22, v23

    .line 151
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, "sig":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/playhaven/src/utils/PHStringUtil;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 158
    .local v19, "sigHash":Ljava/lang/String;
    sget-object v5, Lcom/playhaven/src/common/PHConfig;->app_package:Ljava/lang/String;

    .line 159
    .local v5, "appId":Ljava/lang/String;
    sget-object v6, Lcom/playhaven/src/common/PHConfig;->app_version:Ljava/lang/String;

    .line 160
    .local v6, "appVersion":Ljava/lang/String;
    sget-object v9, Lcom/playhaven/src/common/PHConfig;->device_model:Ljava/lang/String;

    .line 161
    .local v9, "hardware":Ljava/lang/String;
    const-string v21, "%s %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 162
    sget-object v24, Lcom/playhaven/src/common/PHConfig;->os_name:Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 163
    sget v24, Lcom/playhaven/src/common/PHConfig;->os_version:I

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    .line 161
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 165
    .local v14, "os":Ljava/lang/String;
    sget-object v17, Lcom/playhaven/src/common/PHConfig;->sdk_version:Ljava/lang/String;

    .line 166
    .local v17, "sdk_version":Ljava/lang/String;
    const-string v16, "android"

    .line 167
    .local v16, "sdk_platform":Ljava/lang/String;
    sget-object v21, Lcom/playhaven/src/common/PHConfig;->screen_size:Landroid/graphics/Rect;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 168
    .local v20, "width":Ljava/lang/String;
    sget-object v21, Lcom/playhaven/src/common/PHConfig;->screen_size:Landroid/graphics/Rect;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "height":Ljava/lang/String;
    sget v21, Lcom/playhaven/src/common/PHConfig;->screen_density_type:I

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 171
    .local v15, "screen_density":Ljava/lang/String;
    sget-object v21, Lcom/playhaven/src/common/PHConfig;->connection:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    sget-object v22, Lcom/playhaven/src/common/PHConfig$ConnectionType;->NO_PERMISSION:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 172
    const/16 v21, 0x0

    move-object/from16 v7, v21

    .line 176
    .local v7, "connection":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/playhaven/src/common/PHAPIRequest;->getAdditionalParams()Ljava/util/Hashtable;

    move-result-object v4

    .line 179
    .local v4, "additionalParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_8

    .line 180
    new-instance v21, Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v3, v21

    .line 184
    .local v3, "add_params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "device"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "token"

    sget-object v23, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "signature"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "nonce"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "app"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "app_version"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "hardware"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "os"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "idiom"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "width"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "height"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "sdk_version"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "sdk_platform"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "orientation"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "dpi"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "languages"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    if-eqz v7, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "connection"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 215
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    .line 218
    .end local v3    # "add_params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "additionalParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "appId":Ljava/lang/String;
    .end local v6    # "appVersion":Ljava/lang/String;
    .end local v7    # "connection":Ljava/lang/String;
    .end local v8    # "device":Ljava/lang/String;
    .end local v9    # "hardware":Ljava/lang/String;
    .end local v10    # "height":Ljava/lang/String;
    .end local v11    # "idiom":Ljava/lang/String;
    .end local v12    # "nonce":Ljava/lang/String;
    .end local v13    # "orientation":Ljava/lang/String;
    .end local v14    # "os":Ljava/lang/String;
    .end local v15    # "screen_density":Ljava/lang/String;
    .end local v16    # "sdk_platform":Ljava/lang/String;
    .end local v17    # "sdk_version":Ljava/lang/String;
    .end local v18    # "sig":Ljava/lang/String;
    .end local v19    # "sigHash":Ljava/lang/String;
    .end local v20    # "width":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v21, v0

    return-object v21

    .line 153
    .restart local v8    # "device":Ljava/lang/String;
    .restart local v11    # "idiom":Ljava/lang/String;
    .restart local v12    # "nonce":Ljava/lang/String;
    .restart local v13    # "orientation":Ljava/lang/String;
    :cond_5
    const-string v24, ""

    goto/16 :goto_1

    .line 154
    :cond_6
    const-string v24, ""

    goto/16 :goto_2

    .line 173
    .restart local v5    # "appId":Ljava/lang/String;
    .restart local v6    # "appVersion":Ljava/lang/String;
    .restart local v9    # "hardware":Ljava/lang/String;
    .restart local v10    # "height":Ljava/lang/String;
    .restart local v14    # "os":Ljava/lang/String;
    .restart local v15    # "screen_density":Ljava/lang/String;
    .restart local v16    # "sdk_platform":Ljava/lang/String;
    .restart local v17    # "sdk_version":Ljava/lang/String;
    .restart local v18    # "sig":Ljava/lang/String;
    .restart local v19    # "sigHash":Ljava/lang/String;
    .restart local v20    # "width":Ljava/lang/String;
    :cond_7
    sget-object v21, Lcom/playhaven/src/common/PHConfig;->connection:Lcom/playhaven/src/common/PHConfig$ConnectionType;

    invoke-virtual/range {v21 .. v21}, Lcom/playhaven/src/common/PHConfig$ConnectionType;->ordinal()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v7, v21

    goto/16 :goto_3

    .line 181
    .restart local v4    # "additionalParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "connection":Ljava/lang/String;
    :cond_8
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v3, v21

    goto/16 :goto_4
.end method

.method public getURL()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->fullUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 303
    const-string v0, "%s?%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->baseURL()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->signedParamsStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->fullUrl:Ljava/lang/String;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->fullUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "res"    # Lorg/json/JSONObject;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 330
    :cond_0
    if-eqz p1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    invoke-interface {v0, p0, p1}, Lcom/playhaven/src/common/PHAPIRequest$Delegate;->requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 333
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Couldn\'t parse json"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->requestFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public processRequestResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const-string v4, "error"

    .line 339
    const-string v3, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "errmsg":Ljava/lang/String;
    const-string v3, "errobj"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 343
    .local v1, "errobj":Lorg/json/JSONObject;
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string v3, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 344
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Request failed with error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/playhaven/src/common/PHAPIRequest;->requestFailed(Ljava/lang/Exception;)V

    .line 358
    :goto_0
    return-void

    .line 348
    :cond_2
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 350
    .local v2, "res":Lorg/json/JSONObject;
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "undefined"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 353
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "res":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 357
    .restart local v2    # "res":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/playhaven/src/common/PHAPIRequest;->handleRequestSuccess(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public requestFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    invoke-interface {v0, p0, p1}, Lcom/playhaven/src/common/PHAPIRequest$Delegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    .line 404
    :cond_0
    return-void
.end method

.method public requestFinished(Ljava/nio/ByteBuffer;I)V
    .locals 6
    .param p1, "response"    # Ljava/nio/ByteBuffer;
    .param p2, "responseCode"    # I

    .prologue
    const-string v5, "PHAPIRequest - requestFinished"

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received response code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 367
    const/16 v3, 0xc8

    if-eq p2, v3, :cond_1

    .line 368
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Request failed with code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/playhaven/src/common/PHAPIRequest;->requestFailed(Ljava/lang/Exception;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 378
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "UTF8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 379
    .local v2, "res_str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unparsed JSON: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 381
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/playhaven/src/common/PHAPIRequest;->processRequestResponse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 385
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "res_str":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 386
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "PHAPIRequest - requestFinished"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v5, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 388
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 390
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse JSON: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/playhaven/src/common/PHAPIRequest;->requestFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 392
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PHAPIRequest - requestFinished"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v5, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public send()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-direct {v0, p0}, Lcom/playhaven/src/common/PHAsyncRequest;-><init>(Lcom/playhaven/src/common/PHAsyncRequest$Delegate;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    .line 243
    sget-object v0, Lcom/playhaven/src/common/PHConfig;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/playhaven/src/common/PHConfig;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    sget-object v1, Lcom/playhaven/src/common/PHConfig;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->setUsername(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    sget-object v1, Lcom/playhaven/src/common/PHConfig;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->setPassword(Ljava/lang/String;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->getRequestType()Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    move-result-object v1

    iput-object v1, v0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    .line 250
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->send(Lcom/playhaven/src/common/PHAsyncRequest;)V

    .line 251
    return-void
.end method

.method public send(Lcom/playhaven/src/common/PHAsyncRequest;)V
    .locals 5
    .param p1, "client"    # Lcom/playhaven/src/common/PHAsyncRequest;

    .prologue
    .line 256
    :try_start_0
    iput-object p1, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    .line 259
    iget-object v1, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    iget-object v1, v1, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    sget-object v2, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Post:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    if-ne v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->getPostParams()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/playhaven/src/common/PHAsyncRequest;->addPostParams(Ljava/util/Hashtable;)V

    .line 263
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending PHAPIRequest of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->getRequestType()Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PHAPIRequest URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/playhaven/src/common/PHAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHAPIRequest - send()"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public setAdditionalParameters(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/playhaven/src/common/PHAPIRequest;->additionalParams:Ljava/util/Hashtable;

    .line 224
    return-void
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/playhaven/src/common/PHAPIRequest;->urlPath:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .line 93
    return-void
.end method

.method public setRequestTag(I)V
    .locals 0
    .param p1, "requestTag"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/playhaven/src/common/PHAPIRequest;->requestTag:I

    .line 105
    return-void
.end method

.method public signedParamsStr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->getSignedParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->createQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
