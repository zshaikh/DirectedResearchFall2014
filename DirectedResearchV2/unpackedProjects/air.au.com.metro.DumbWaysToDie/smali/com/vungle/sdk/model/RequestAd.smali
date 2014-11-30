.class public Lcom/vungle/sdk/model/RequestAd;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field a:Landroid/media/AudioManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleCache;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/sdk/VungleUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Z

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/vungle/sdk/w;

.field private l:Ljava/lang/String;

.field private m:Lcom/vungle/sdk/z;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/vungle/sdk/model/RequestAd;->e:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->k:Lcom/vungle/sdk/w;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->l:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/model/RequestAd;->d:Z

    .line 78
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/sdk/model/RequestAd;->g:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->i:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/vungle/sdk/VungleUtil;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->h:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/vungle/sdk/w;

    invoke-direct {v0}, Lcom/vungle/sdk/w;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->k:Lcom/vungle/sdk/w;

    .line 83
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/sdk/z;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->m:Lcom/vungle/sdk/z;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/vungle/sdk/model/RequestAd;->m:Lcom/vungle/sdk/z;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/vungle/sdk/model/RequestAd;->m:Lcom/vungle/sdk/z;

    iget-object v1, v1, Lcom/vungle/sdk/z;->h:Ljava/lang/String;

    .line 141
    if-eqz v1, :cond_0

    .line 142
    const-string v2, "campaign"

    const/16 v3, 0x5f

    const/16 v4, 0x7c

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_0
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/vungle/sdk/model/RequestAd;->m:Lcom/vungle/sdk/z;

    iget-object v2, v2, Lcom/vungle/sdk/z;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "url"

    iget-object v2, p0, Lcom/vungle/sdk/model/RequestAd;->m:Lcom/vungle/sdk/z;

    iget-object v2, v2, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    iget-object v1, p0, Lcom/vungle/sdk/model/RequestAd;->m:Lcom/vungle/sdk/z;

    iget-object v1, v1, Lcom/vungle/sdk/z;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "id"

    iget-object v2, p0, Lcom/vungle/sdk/model/RequestAd;->m:Lcom/vungle/sdk/z;

    iget-object v2, v2, Lcom/vungle/sdk/z;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_1
    const-string v1, "incentivized"

    sget-boolean v2, Lcom/vungle/sdk/n;->D:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 154
    sget-boolean v1, Lcom/vungle/sdk/n;->D:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vungle/sdk/n;->E:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 155
    const-string v1, "name"

    sget-object v2, Lcom/vungle/sdk/n;->E:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_2
    invoke-virtual {p0, p1}, Lcom/vungle/sdk/model/RequestAd;->b(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    const-string v3, "JSONException"

    invoke-static {v2, v3, v1}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/vungle/sdk/model/RequestAd;->e:I

    .line 95
    return-void
.end method

.method public final a(Lcom/vungle/sdk/z;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vungle/sdk/model/RequestAd;->m:Lcom/vungle/sdk/z;

    .line 107
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/vungle/sdk/model/RequestAd;->l:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "NATIVE"

    .line 182
    if-nez p1, :cond_7

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 189
    :goto_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 193
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 194
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 195
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 197
    const-string v0, "osVersion"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v0, "platform"

    const-string v6, "android"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleCache;

    .line 200
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/vungle/sdk/VungleCache;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    :goto_1
    iput-boolean v0, p0, Lcom/vungle/sdk/model/RequestAd;->d:Z

    .line 201
    const-string v0, "isSdCardAvailable"

    iget-boolean v6, p0, Lcom/vungle/sdk/model/RequestAd;->d:Z

    if-eqz v6, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->c:Lcom/vungle/sdk/VungleUtil;

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->h(Landroid/content/Context;)V

    .line 204
    const-string v0, "width"

    sget v6, Lcom/vungle/sdk/n;->x:F

    float-to-double v6, v6

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 205
    const-string v0, "height"

    sget v6, Lcom/vungle/sdk/n;->y:F

    float-to-double v6, v6

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 206
    const-string v0, "dim"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v0, "connection"

    iget-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->c:Lcom/vungle/sdk/VungleUtil;

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/vungle/sdk/VungleUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "volume"

    iget-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->a:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    int-to-double v5, v5

    iget-object v7, p0, Lcom/vungle/sdk/model/RequestAd;->a:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 209
    const-string v0, "soundEnabled"

    sget-boolean v5, Lcom/vungle/sdk/n;->s:Z

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 210
    const-string v0, "mac"

    iget-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v0, "model"

    iget-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->c:Lcom/vungle/sdk/VungleUtil;

    invoke-static {}, Lcom/vungle/sdk/VungleUtil;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v0, "NATIVE"

    const-string v5, "CORONA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    const-string v0, "corona"

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 221
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->c:Lcom/vungle/sdk/VungleUtil;

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleUtil;->d()Ljava/lang/String;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 223
    const-string v5, "networkOperator"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/vungle/sdk/model/RequestAd;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    const-string v0, "serial"

    iget-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_2
    const-string v0, "gender"

    iget v5, p0, Lcom/vungle/sdk/model/RequestAd;->e:I

    invoke-static {v5}, Lcom/vungle/sdk/VunglePub$Gender;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v0, "age"

    iget v5, p0, Lcom/vungle/sdk/model/RequestAd;->f:I

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string v0, "lat"

    iget-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->k:Lcom/vungle/sdk/w;

    iget-wide v5, v5, Lcom/vungle/sdk/w;->a:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 234
    const-string v0, "long"

    iget-object v5, p0, Lcom/vungle/sdk/model/RequestAd;->k:Lcom/vungle/sdk/w;

    iget-wide v5, v5, Lcom/vungle/sdk/w;->b:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 235
    const-string v0, "location"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v0, "deviceInfo"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v0, "demo"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v0, "pubAppId"

    iget-object v2, p0, Lcom/vungle/sdk/model/RequestAd;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-static {}, Lcom/vungle/sdk/ab;->g()Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_3

    .line 244
    const-string v2, "lastError"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_3
    const-string v0, "isu"

    iget-object v2, p0, Lcom/vungle/sdk/model/RequestAd;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "requestJSON : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v8

    .line 200
    goto/16 :goto_1

    :cond_5
    move v6, v8

    .line 201
    goto/16 :goto_2

    .line 216
    :cond_6
    :try_start_1
    const-string v0, "NATIVE"

    const-string v5, "ADOBE_AIR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "adobeAir"

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 257
    :catch_0
    move-exception v0

    .line 258
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    const-string v3, "JSONException"

    invoke-static {v2, v3, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    move-object v1, p1

    goto/16 :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/vungle/sdk/model/RequestAd;->f:I

    .line 99
    return-void
.end method
