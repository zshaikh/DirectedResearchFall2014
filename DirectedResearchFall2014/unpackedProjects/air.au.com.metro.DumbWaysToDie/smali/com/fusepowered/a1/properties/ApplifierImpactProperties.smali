.class public Lcom/fusepowered/a1/properties/ApplifierImpactProperties;
.super Ljava/lang/Object;
.source "ApplifierImpactProperties.java"


# static fields
.field public static ALLOW_BACK_BUTTON_SKIP:I = 0x0

.field public static ALLOW_VIDEO_SKIP:I = 0x0

.field public static ANALYTICS_BASE_URL:Ljava/lang/String; = null

.field public static BASE_ACTIVITY:Landroid/app/Activity; = null

.field public static CAMPAIGN_DATA_URL:Ljava/lang/String; = null

.field public static CAMPAIGN_QUERY_STRING:Ljava/lang/String; = null

.field public static CURRENT_ACTIVITY:Landroid/app/Activity; = null

.field public static GAMER_SID:Ljava/lang/String; = null

.field public static IMPACT_BASE_URL:Ljava/lang/String; = null

.field public static IMPACT_DEBUG_MODE:Ljava/lang/Boolean; = null

.field public static IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static IMPACT_GAMER_ID:Ljava/lang/String; = null

.field public static IMPACT_GAME_ID:Ljava/lang/String; = null

.field public static final MAX_BUFFERING_WAIT_SECONDS:I = 0x14

.field public static final MAX_NUMBER_OF_ANALYTICS_RETRIES:I = 0x5

.field public static RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

.field public static SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

.field public static TESTMODE_ENABLED:Ljava/lang/Boolean;

.field public static TEST_DATA:Ljava/lang/String;

.field public static TEST_DEVELOPER_ID:Ljava/lang/String;

.field private static TEST_EXTRA_PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TEST_JAVASCRIPT:Ljava/lang/String;

.field public static TEST_OPTIONS_ID:Ljava/lang/String;

.field public static TEST_URL:Ljava/lang/String;

.field public static WEBVIEW_BASE_URL:Ljava/lang/String;

.field private static _campaignQueryString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 17
    const-string v0, "https://impact.applifier.com/mobile/campaigns"

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 20
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 21
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_BASE_URL:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CAMPAIGN_QUERY_STRING:Ljava/lang/String;

    .line 23
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    .line 25
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->GAMER_SID:Ljava/lang/String;

    .line 26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    .line 27
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    .line 28
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    .line 29
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEBUG_MODE:Ljava/lang/Boolean;

    .line 31
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    .line 32
    sput v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_VIDEO_SKIP:I

    .line 33
    sput v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_BACK_BUTTON_SKIP:I

    .line 35
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DATA:Ljava/lang/String;

    .line 36
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_URL:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 40
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_EXTRA_PARAMS:Ljava/util/Map;

    .line 49
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->_campaignQueryString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCampaignQueryString()V
    .locals 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "%s&%s=%s"

    .line 52
    const-string v1, "?"

    .line 56
    .local v1, queryString:Ljava/lang/String;
    :try_start_0
    const-string v2, "%s%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "deviceId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "androidId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_0
    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getTelephonyId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "telephonyId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getTelephonyId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_1
    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidSerial()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "serialId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getAndroidSerial()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_2
    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getOpenUdid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 68
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "openUdid"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getOpenUdid()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_3
    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 71
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "macAddress"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    :cond_4
    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getOdin1Id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 74
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "odin1Id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getOdin1Id()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_5
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "platform"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "android"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "gameId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "sdkVersion"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "109"

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "softwareVersion"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "hardwareVersion"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "deviceType"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getDeviceType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "connectionType"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "screenSize"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getScreenSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "%s&%s=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string v5, "screenDensity"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactDevice;->getScreenDensity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TESTMODE_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 91
    const-string v2, "%s&%s=%s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v7

    const-string v3, "test"

    aput-object v3, v2, v8

    const-string v3, "true"

    aput-object v3, v2, v9

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 94
    const-string v2, "%s&%s=%s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v7

    const-string v3, "optionsId"

    aput-object v3, v2, v8

    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_OPTIONS_ID:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_6
    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 98
    const-string v2, "%s&%s=%s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v7

    const-string v3, "developerId"

    aput-object v3, v2, v8

    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DEVELOPER_ID:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_7
    :goto_1
    sput-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->_campaignQueryString:Ljava/lang/String;

    .line 108
    return-void

    .line 86
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 87
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problems creating campaigns query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;

    invoke-static {v2, v3}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 102
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    sget-object v2, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v2, :cond_7

    .line 103
    const-string v2, "%s&%s=%s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v7

    const-string v3, "encrypted"

    aput-object v3, v2, v8

    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-static {v3}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "false"

    :goto_2
    aput-object v3, v2, v9

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    const-string v3, "true"

    goto :goto_2
.end method

.method public static getCampaignQueryUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 155
    invoke-static {}, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->createCampaignQueryString()V

    .line 156
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CAMPAIGN_DATA_URL:Ljava/lang/String;

    .line 158
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_URL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_URL:Ljava/lang/String;

    .line 161
    :cond_0
    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->_campaignQueryString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeveloperOptionsAsJson()Lorg/json/JSONObject;
    .locals 9

    .prologue
    const-string v6, "useDeviceOrientationForVideo"

    const-string v6, "sid"

    const-string v6, "openAnimated"

    const-string v6, "noOfferScreen"

    const-string v6, "muteVideoSounds"

    .line 111
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 112
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v4, options:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 115
    .local v2, noOfferscreen:Z
    const/4 v3, 0x0

    .line 116
    .local v3, openAnimated:Z
    const/4 v1, 0x0

    .line 117
    .local v1, muteVideoSounds:Z
    const/4 v5, 0x0

    .line 120
    .local v5, videoUsesDeviceOrientation:Z
    :try_start_0
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "noOfferScreen"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "noOfferScreen"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 123
    :cond_0
    const-string v6, "noOfferScreen"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 125
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "openAnimated"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "openAnimated"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 128
    :cond_1
    const-string v6, "openAnimated"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "muteVideoSounds"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "muteVideoSounds"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 133
    :cond_2
    const-string v6, "muteVideoSounds"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 135
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "sid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 136
    const-string v6, "sid"

    sget-object v7, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v8, "sid"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    :cond_3
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "useDeviceOrientationForVideo"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 139
    sget-object v6, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v7, "useDeviceOrientationForVideo"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 141
    :cond_4
    const-string v6, "useDeviceOrientationForVideo"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v4

    .line 151
    .end local v1           #muteVideoSounds:Z
    .end local v2           #noOfferscreen:Z
    .end local v3           #openAnimated:Z
    .end local v4           #options:Lorg/json/JSONObject;
    .end local v5           #videoUsesDeviceOrientation:Z
    :goto_1
    return-object v6

    .line 144
    .restart local v1       #muteVideoSounds:Z
    .restart local v2       #noOfferscreen:Z
    .restart local v3       #openAnimated:Z
    .restart local v4       #options:Lorg/json/JSONObject;
    .restart local v5       #videoUsesDeviceOrientation:Z
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Could not create JSON"

    const-class v7, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;

    invoke-static {v6, v7}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #muteVideoSounds:Z
    .end local v2           #noOfferscreen:Z
    .end local v3           #openAnimated:Z
    .end local v4           #options:Lorg/json/JSONObject;
    .end local v5           #videoUsesDeviceOrientation:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static setExtraParams(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "testUrl"

    const-string v2, "testJavaScript"

    const-string v1, "testData"

    .line 165
    const-string v0, "testData"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "testData"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DATA:Ljava/lang/String;

    .line 169
    :cond_0
    const-string v0, "testUrl"

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "testUrl"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_URL:Ljava/lang/String;

    .line 173
    :cond_1
    const-string v0, "testJavaScript"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "testJavaScript"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    .line 176
    :cond_2
    return-void
.end method
