.class public Lcom/fusepowered/m2/m2l/AdConfiguration;
.super Ljava/lang/Object;
.source "AdConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_REFRESH_TIME_MILLISECONDS:I = 0xea60

.field private static final MINIMUM_REFRESH_TIME_MILLISECONDS:I = 0x2710

.field private static final mPlatform:Ljava/lang/String; = "Android"


# instance fields
.field private mAdTimeoutDelay:Ljava/lang/Integer;

.field private mAdType:Ljava/lang/String;

.field private mAdUnitId:Ljava/lang/String;

.field private mClickthroughUrl:Ljava/lang/String;

.field private final mDeviceLocale:Ljava/lang/String;

.field private final mDeviceModel:Ljava/lang/String;

.field private mDspCreativeId:Ljava/lang/String;

.field private mFailUrl:Ljava/lang/String;

.field private final mHashedUdid:Ljava/lang/String;

.field private mHeight:I

.field private mImpressionUrl:Ljava/lang/String;

.field private mNetworkType:Ljava/lang/String;

.field private final mPlatformVersion:I

.field private mRedirectUrl:Ljava/lang/String;

.field private mRefreshTimeMilliseconds:I

.field private mResponseString:Ljava/lang/String;

.field private final mSdkVersion:Ljava/lang/String;

.field private mTimeStamp:J

.field private final mUserAgent:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->setDefaults()V

    .line 107
    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "udid":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mHashedUdid:Ljava/lang/String;

    .line 111
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mUserAgent:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mDeviceLocale:Ljava/lang/String;

    .line 119
    .end local v0    # "udid":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mDeviceModel:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/VersionCode;->currentApiLevel()Lcom/fusepowered/m2/m2l/util/VersionCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/util/VersionCode;->getApiLevel()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mPlatformVersion:I

    .line 121
    const-string v1, "1.17.0.0"

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mSdkVersion:Ljava/lang/String;

    .line 122
    return-void

    .line 109
    .restart local v0    # "udid":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 114
    .end local v0    # "udid":Ljava/lang/String;
    :cond_1
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mHashedUdid:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mUserAgent:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mDeviceLocale:Ljava/lang/String;

    goto :goto_1
.end method

.method static extractFromMap(Ljava/util/Map;)Lcom/fusepowered/m2/m2l/AdConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fusepowered/m2/m2l/AdConfiguration;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 91
    if-nez p0, :cond_0

    move-object v1, v2

    .line 101
    :goto_0
    return-object v1

    .line 95
    :cond_0
    const-string v1, "Ad-Configuration"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "adConfiguration":Ljava/lang/Object;
    instance-of v1, v0, Lcom/fusepowered/m2/m2l/AdConfiguration;

    if-eqz v1, :cond_1

    .line 98
    check-cast v0, Lcom/fusepowered/m2/m2l/AdConfiguration;

    .end local v0    # "adConfiguration":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "adConfiguration":Ljava/lang/Object;
    :cond_1
    move-object v1, v2

    .line 101
    goto :goto_0
.end method

.method private setDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 293
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdUnitId:Ljava/lang/String;

    .line 294
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mResponseString:Ljava/lang/String;

    .line 295
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdType:Ljava/lang/String;

    .line 296
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mNetworkType:Ljava/lang/String;

    .line 297
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRedirectUrl:Ljava/lang/String;

    .line 298
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mClickthroughUrl:Ljava/lang/String;

    .line 299
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mImpressionUrl:Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mTimeStamp:J

    .line 301
    iput v3, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mWidth:I

    .line 302
    iput v3, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mHeight:I

    .line 303
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdTimeoutDelay:Ljava/lang/Integer;

    .line 304
    const v0, 0xea60

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRefreshTimeMilliseconds:I

    .line 305
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mFailUrl:Ljava/lang/String;

    .line 306
    iput-object v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mDspCreativeId:Ljava/lang/String;

    .line 307
    return-void
.end method


# virtual methods
.method addHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v2, 0x0

    .line 129
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->AD_TYPE:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdType:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->NETWORK_TYPE:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mNetworkType:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->REDIRECT_URL:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRedirectUrl:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->CLICKTHROUGH_URL:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mClickthroughUrl:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->FAIL_URL:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mFailUrl:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->IMPRESSION_URL:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mImpressionUrl:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mTimeStamp:J

    .line 150
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->WIDTH:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0, v2}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;I)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mWidth:I

    .line 151
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->HEIGHT:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0, v2}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;I)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mHeight:I

    .line 154
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->AD_TIMEOUT:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdTimeoutDelay:Ljava/lang/Integer;

    .line 157
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->REFRESH_TIME:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iput v2, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRefreshTimeMilliseconds:I

    .line 167
    :goto_0
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mDspCreativeId:Ljava/lang/String;

    .line 168
    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->REFRESH_TIME:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {p1, v0, v2}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRefreshTimeMilliseconds:I

    .line 162
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRefreshTimeMilliseconds:I

    .line 163
    const/16 v1, 0x2710

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRefreshTimeMilliseconds:I

    goto :goto_0
.end method

.method cleanup()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->setDefaults()V

    .line 126
    return-void
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdTimeoutDelay:Ljava/lang/Integer;

    return-object v0
.end method

.method getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdType:Ljava/lang/String;

    return-object v0
.end method

.method getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mDeviceLocale:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method getDspCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method getFailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mFailUrl:Ljava/lang/String;

    return-object v0
.end method

.method getHashedUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mHashedUdid:Ljava/lang/String;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mHeight:I

    return v0
.end method

.method getImpressionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mImpressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "Android"

    return-object v0
.end method

.method getPlatformVersion()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mPlatformVersion:I

    return v0
.end method

.method getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method getRefreshTimeMilliseconds()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRefreshTimeMilliseconds:I

    return v0
.end method

.method getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mResponseString:Ljava/lang/String;

    return-object v0
.end method

.method getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method getTimeStamp()J
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mTimeStamp:J

    return-wide v0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mWidth:I

    return v0
.end method

.method setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mAdUnitId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method setClickthroughUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickthroughUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mClickthroughUrl:Ljava/lang/String;

    .line 213
    return-void
.end method

.method setFailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "failUrl"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mFailUrl:Ljava/lang/String;

    .line 221
    return-void
.end method

.method setRefreshTimeMilliseconds(I)V
    .locals 0
    .param p1, "refreshTimeMilliseconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    iput p1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mRefreshTimeMilliseconds:I

    .line 250
    return-void
.end method

.method setResponseString(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseString"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdConfiguration;->mResponseString:Ljava/lang/String;

    .line 188
    return-void
.end method
