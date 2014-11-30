.class public Lcom/appsponsor/appsponsorsdk/AdManager;
.super Ljava/lang/Object;


# static fields
.field private static final HOSTNAME:Ljava/lang/String;

.field private static final INTERNAL_TESTING:Z = false

.field private static MNG_AD_PATH:Ljava/lang/String; = null

.field private static MNG_HOSTNAME:Ljava/lang/String; = null

.field public static MNG_SDK_VERSION:Ljava/lang/String; = null

.field private static final MNG_TEST_HOSTNAME:Ljava/lang/String; = "manage-bidder.dev02.manage.com"

.field private static final PREFERENCE_DATA_NAME:Ljava/lang/String; = "PrefAppSponsorSDKData"


# instance fields
.field private appInfoPairs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private isInterstitial:Z

.field private keywords:Ljava/lang/String;

.field public locLatitude:D

.field public locLongitude:D

.field private testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "appsponsor-bidder.manage.com"

    sput-object v0, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_HOSTNAME:Ljava/lang/String;

    sget-object v0, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_HOSTNAME:Ljava/lang/String;

    sput-object v0, Lcom/appsponsor/appsponsorsdk/AdManager;->HOSTNAME:Ljava/lang/String;

    const-string v0, "2/bid"

    sput-object v0, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_AD_PATH:Ljava/lang/String;

    const-string v0, "2.2.0"

    sput-object v0, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->keywords:Ljava/lang/String;

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->isInterstitial:Z

    return-void
.end method

.method private getSessionDepthCount(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->context:Landroid/content/Context;

    const-string v1, "PrefAppSponsorSDKData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private queryStringComponentCurrentSize()Ljava/util/LinkedList;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    const/high16 v3, 0x3f800000

    const-string v5, "and height "

    const-string v4, "ApSDK"

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v2, v1, v3

    if-ltz v2, :cond_0

    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const-string v2, "ApSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level 13+ got device width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "and height "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v1

    move v1, v0

    move v0, v6

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "width"

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "height"

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const-string v2, "ApSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got device width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "and height "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private queryStringComponentDeviceInformation()Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "os"

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "osv"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "instl"

    iget-boolean v3, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->isInterstitial:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private queryStringComponentKeywords()Lorg/apache/http/message/BasicNameValuePair;
    .locals 5

    const-string v4, ","

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->keywords:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "keywords"

    const-string v3, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private queryStringComponentTimeZone()Lorg/apache/http/message/BasicNameValuePair;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tz"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private setLastKnownLocation()V
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v3, "ApSDK"

    iput-wide v6, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->locLatitude:D

    iput-wide v6, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->locLongitude:D

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    :try_start_1
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->locLongitude:D

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->locLatitude:D

    iget-wide v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->locLatitude:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->locLongitude:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lat"

    iget-wide v3, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->locLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lon"

    iget-wide v3, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->locLongitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v1, "ApSDK"

    const-string v1, "Failed to retrieve GPS location: access appears to be disabled."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "ApSDK"

    const-string v1, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "ApSDK"

    const-string v0, "Failed to retrieve network location: access appears to be disabled."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v0, "ApSDK"

    const-string v0, "Failed to retrieve network location: device has no network provider."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_0

    move-object v0, v4

    goto :goto_2
.end method


# virtual methods
.method public increaseSessionDepthCount(Ljava/lang/String;)I
    .locals 11

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v10, ","

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const/16 v2, 0x4b0

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->context:Landroid/content/Context;

    const-string v4, "PrefAppSponsorSDKData"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v5

    sub-long v5, v0, v5

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gez v2, :cond_1

    add-int/lit8 v2, v3, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v2

    :cond_0
    move v2, v9

    goto :goto_0

    :cond_1
    move v2, v9

    goto :goto_0
.end method

.method public isTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->testMode:Z

    return v0
.end method

.method public serverRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "http://%s/%s"

    const-string v0, "http://%s/%s"

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Lcom/appsponsor/appsponsorsdk/AdManager;->HOSTNAME:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_AD_PATH:Ljava/lang/String;

    aput-object v1, v0, v6

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "dpid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "and:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "zid"

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkv"

    sget-object v2, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_SDK_VERSION:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "make"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/AdManager;->queryStringComponentCurrentSize()Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/AdManager;->queryStringComponentDeviceInformation()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/AdManager;->setLastKnownLocation()V

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->appInfoPairs:Ljava/util/LinkedList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sd"

    invoke-direct {p0, p1}, Lcom/appsponsor/appsponsorsdk/AdManager;->getSessionDepthCount(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->appInfoPairs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/appsponsor/appsponsorsdk/AdManager;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "test"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "http://%s/%s"

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v2, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_HOSTNAME:Ljava/lang/String;

    aput-object v2, v0, v5

    sget-object v2, Lcom/appsponsor/appsponsorsdk/AdManager;->MNG_AD_PATH:Ljava/lang/String;

    aput-object v2, v0, v6

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/AdManager;->queryStringComponentTimeZone()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/appsponsor/appsponsorsdk/AdManager;->queryStringComponentKeywords()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public setAppInfoPairs(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->appInfoPairs:Ljava/util/LinkedList;

    return-void
.end method

.method public setInterstitialView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->isInterstitial:Z

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appsponsor/appsponsorsdk/AdManager;->testMode:Z

    return-void
.end method
