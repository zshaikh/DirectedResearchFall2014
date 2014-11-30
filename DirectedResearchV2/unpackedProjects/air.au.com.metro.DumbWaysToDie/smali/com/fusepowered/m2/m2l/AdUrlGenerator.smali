.class public Lcom/fusepowered/m2/m2l/AdUrlGenerator;
.super Lcom/fusepowered/m2/m2l/BaseUrlGenerator;
.source "AdUrlGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;
    }
.end annotation


# static fields
.field public static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field public static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field public static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field public static final UNKNOWN_NETWORK_TYPE:I = 0x8


# instance fields
.field private mAdUnitId:Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFacebookSupportEnabled:Z

.field private mKeywords:Ljava/lang/String;

.field private mLocation:Landroid/location/Location;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 92
    return-void
.end method

.method private static addKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keywords"    # Ljava/lang/String;
    .param p1, "addition"    # Ljava/lang/String;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 300
    :goto_0
    return-object v0

    .line 297
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, p1

    .line 298
    goto :goto_0

    .line 300
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private addParam(Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    .prologue
    .line 239
    invoke-virtual {p2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private detectIsMraidSupported()Z
    .locals 3

    .prologue
    .line 243
    const/4 v1, 0x1

    .line 245
    .local v1, "mraid":Z
    :try_start_0
    const-string v2, "com.fusepowered.m2.m2l.MraidView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return v1

    .line 246
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 247
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActiveNetworkType()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 287
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 289
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 291
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v1

    .restart local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    move v1, v3

    .line 289
    goto :goto_0

    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    move v1, v3

    .line 291
    goto :goto_0
.end method

.method private static getFacebookKeyword(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x0

    .line 272
    if-nez p1, :cond_0

    move-object v3, v7

    .line 282
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object v3

    .line 277
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    const-string v3, "com.fusepowered.m2.m2l.FacebookKeywordProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 278
    .local v1, "facebookKeywordProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getKeyword"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 280
    .local v2, "getKeywordMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    goto :goto_0

    .line 281
    .end local v1    # "facebookKeywordProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getKeywordMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "exception":Ljava/lang/Exception;
    move-object v3, v7

    .line 282
    goto :goto_0
.end method

.method private getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "networkOperator":Ljava/lang/String;
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_0
    return-object v0
.end method

.method private static getTimeZoneOffsetString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/DateAndTime;->localTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 268
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private mncPortionLength(Ljava/lang/String;)I
    .locals 2
    .param p1, "networkOperator"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private setCarrierName(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkOperatorName"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "cn"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private setDensity(F)V
    .locals 2
    .param p1, "density"    # F

    .prologue
    .line 193
    const-string v0, "sc_a"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private setIsoCountryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkCountryIso"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    const-string v0, "ll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "lla"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method private setMccCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "networkOperator"    # Ljava/lang/String;

    .prologue
    .line 201
    if-nez p1, :cond_0

    const-string v1, ""

    move-object v0, v1

    .line 202
    .local v0, "mcc":Ljava/lang/String;
    :goto_0
    const-string v1, "mcc"

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 201
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mncPortionLength(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private setMncCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkOperator"    # Ljava/lang/String;

    .prologue
    .line 206
    if-nez p1, :cond_0

    const-string v1, ""

    move-object v0, v1

    .line 207
    .local v0, "mnc":Ljava/lang/String;
    :goto_0
    const-string v1, "mnc"

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 206
    .end local v0    # "mnc":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mncPortionLength(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private setMraidFlag(Z)V
    .locals 2
    .param p1, "mraid"    # Z

    .prologue
    .line 197
    if-eqz p1, :cond_0

    const-string v0, "mr"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method private setNetworkType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const-string v1, "ct"

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 234
    :pswitch_0
    const-string v0, "ct"

    sget-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->UNKNOWN:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;)V

    .line 236
    :goto_0
    return-void

    .line 221
    :pswitch_1
    const-string v0, "ct"

    sget-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->ETHERNET:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;)V

    goto :goto_0

    .line 224
    :pswitch_2
    const-string v0, "ct"

    sget-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->WIFI:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;)V

    goto :goto_0

    .line 231
    :pswitch_3
    const-string v0, "ct"

    sget-object v0, Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;->MOBILE:Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;

    invoke-direct {p0, v1, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Lcom/fusepowered/m2/m2l/AdUrlGenerator$MoPubNetworkType;)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 181
    const-string v0, "u"

    .line 182
    .local v0, "orString":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 183
    const-string v0, "p"

    .line 189
    :cond_0
    :goto_0
    const-string v1, "o"

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 184
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 185
    const-string v0, "l"

    .line 186
    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 187
    const-string v0, "s"

    goto :goto_0
.end method

.method private setSdkVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v0, "nv"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private setTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZoneOffsetString"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v0, "z"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "serverHostname"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v2, "/m/ad"

    invoke-virtual {p0, p1, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "6"

    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setAdUnitId(Ljava/lang/String;)V

    .line 122
    const-string v2, "1.17.0.0"

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setSdkVersion(Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setDeviceInfo([Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->getUdidFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setUdid(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mKeywords:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mFacebookSupportEnabled:Z

    invoke-static {v3, v4}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->getFacebookKeyword(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->addKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "keywords":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setKeywords(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mLocation:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setLocation(Landroid/location/Location;)V

    .line 133
    invoke-static {}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setTimezone(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setOrientation(I)V

    .line 137
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setDensity(F)V

    .line 139
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->detectIsMraidSupported()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setMraidFlag(Z)V

    .line 141
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setMccCode(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setMncCode(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setIsoCountryCode(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setCarrierName(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->getActiveNetworkType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setNetworkType(I)V

    .line 150
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/fusepowered/m2/m2l/util/Mraids;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->setExternalStoragePermission(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdUrlGenerator;
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public withFacebookSupported(Z)Lcom/fusepowered/m2/m2l/AdUrlGenerator;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mFacebookSupportEnabled:Z

    .line 106
    return-object p0
.end method

.method public withKeywords(Ljava/lang/String;)Lcom/fusepowered/m2/m2l/AdUrlGenerator;
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mKeywords:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public withLocation(Landroid/location/Location;)Lcom/fusepowered/m2/m2l/AdUrlGenerator;
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdUrlGenerator;->mLocation:Landroid/location/Location;

    .line 111
    return-object p0
.end method
