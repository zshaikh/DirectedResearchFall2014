.class public Lcom/inmobi/androidsdk/impl/IMNiceInfo;
.super Ljava/lang/Object;
.source "IMNiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Long;

.field private f:Ljava/util/concurrent/atomic/AtomicLong;

.field private g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

.field private h:Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/IMUserInfo;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b:Landroid/content/Context;

    .line 44
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c:Ljava/lang/String;

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->d:Ljava/lang/Long;

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->e:Ljava/lang/Long;

    .line 48
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    .line 49
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->h:Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;

    .line 52
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    .line 54
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->scanWifiAP()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->f:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/IMNiceInfo;Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->h:Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/IMNiceInfo;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 232
    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c()V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->d:Ljava/lang/Long;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 326
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 327
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->d()Ljava/util/List;

    move-result-object v2

    .line 331
    if-eqz v2, :cond_1

    .line 333
    const-string v3, "InMobiAndroidSDK_3.6.2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NICE Param: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 336
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 339
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "NICE params posted Successfully"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "NICE Params not present"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->h:Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 352
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    if-nez v0, :cond_1

    .line 354
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "User Info Not initialised"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 384
    :cond_0
    :goto_0
    return-object v0

    .line 357
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->getCellInfo()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->getSimInfo()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->getWifiInfo()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    .line 362
    if-eqz v1, :cond_2

    .line 363
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "d-n-cell"

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_2
    if-eqz v2, :cond_3

    .line 365
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "d-n-sim"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_3
    if-eqz v3, :cond_4

    .line 367
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "d-n-wifi"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_4
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v4, :cond_6

    .line 371
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "d-n-time"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getUIDMapEncrypted()Ljava/lang/String;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v2

    .line 374
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->g:Lcom/inmobi/androidsdk/impl/IMUserInfo;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getRsakeyVersion()Ljava/lang/String;

    move-result-object v3

    .line 375
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 377
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "u-id-map"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "u-id-key"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "u-key-ver"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 384
    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->e:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public getCellInfo()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v0, ""

    const-string v0, "-"

    .line 60
    .line 62
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Access coarse permission not granted.Cant collect Cell Info"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 112
    :goto_0
    return-object v0

    .line 68
    :cond_0
    :try_start_0
    const-string v0, ""

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 71
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 73
    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 74
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 75
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    instance-of v3, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_2

    .line 78
    const-string v3, "a1"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 80
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .line 81
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    .line 82
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v5

    .line 83
    if-eq v3, v6, :cond_1

    if-eq v4, v6, :cond_1

    if-eq v5, v6, :cond_1

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "a2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "a"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 92
    :cond_2
    const-string v3, "a1"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 94
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 95
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    .line 96
    if-eq v3, v6, :cond_1

    if-eq v4, v6, :cond_1

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "a2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Error Getting NICE param Cell Info"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 110
    goto/16 :goto_0

    :cond_3
    move-object v0, v7

    goto/16 :goto_0
.end method

.method public getSimInfo()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "InMobiAndroidSDK_3.6.2"

    const-string v0, ""

    .line 117
    .line 118
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "Access coarse permission not granted.Cant collect Sim Info"

    invoke-static {v5, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 142
    :goto_0
    return-object v0

    .line 124
    :cond_0
    :try_start_0
    const-string v0, ""

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 127
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 130
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "b1"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "b"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Error Getting NICE Param Sim Info"

    invoke-static {v5, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 140
    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 210
    .line 212
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 215
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 216
    const-string v4, "d1"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    const-string v2, "d2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "d"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Error Getting NICE param Timestamp"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 224
    goto :goto_0

    :cond_0
    move-object v0, v5

    goto :goto_0
.end method

.method public getWifiInfo()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "InMobiAndroidSDK_3.6.2"

    .line 176
    .line 177
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "Access wifi permission not granted.Cant collect get wifi access point Info"

    invoke-static {v6, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 205
    :goto_0
    return-object v0

    .line 183
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 195
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 189
    const-string v4, "c1a"

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v4, "c1b"

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v4, "c1c"

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Error Getting NICE Param Wifi Apian"

    invoke-static {v6, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 203
    goto :goto_0

    :cond_3
    move-object v0, v5

    goto :goto_0
.end method

.method public processNiceParams(Ljava/net/HttpURLConnection;)V
    .locals 8
    .parameter

    .prologue
    const-string v7, "InMobiAndroidSDK_3.6.2"

    .line 266
    if-nez p1, :cond_1

    .line 268
    :try_start_0
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v1, "HTTP Connection lost.Cannot retreive nice url"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string v0, "x-inmobi-ph-enable"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "x-inmobi-ph-url"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v1, "x-inmobi-ph-intvl-sec"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 276
    const-string v2, "x-inmobi-ph-lse-sec"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 278
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lcom/inmobi/androidsdk/impl/IMConfigConstants;->MIN_NICE_RETRY_INERVAL:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 279
    sget-object v1, Lcom/inmobi/androidsdk/impl/IMConfigConstants;->MIN_NICE_RETRY_INERVAL:Ljava/lang/Long;

    .line 281
    :cond_2
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->e:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->d:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 288
    :cond_3
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c:Ljava/lang/String;

    .line 289
    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->d:Ljava/lang/Long;

    .line 290
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->e:Ljava/lang/Long;

    .line 291
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NICE URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;-><init>(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 319
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Failed to process NICE params"

    invoke-static {v7, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public scanWifiAP()V
    .locals 4

    .prologue
    const-string v3, "InMobiAndroidSDK_3.6.2"

    .line 146
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "Access wifi permission not granted.Cant collect scan wifi Info"

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b:Landroid/content/Context;

    new-instance v2, Lcom/inmobi/androidsdk/impl/IMNiceInfo$1;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo$1;-><init>(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 164
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    .line 166
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Error Setting Wifi Apian"

    invoke-static {v3, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
