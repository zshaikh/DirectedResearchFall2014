.class public Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
.super Ljava/lang/Object;
.source "ApplifierImpactWebData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactCancelUrlLoaderRunner;,
        Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;,
        Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;,
        Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;,
        Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType:[I


# instance fields
.field private _campaignJson:Lorg/json/JSONObject;

.field private _campaigns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation
.end field

.field private _currentLoader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

.field private _currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

.field private _defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

.field private _failedUrlLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;",
            ">;"
        }
    .end annotation
.end field

.field private _isLoading:Z

.field private _listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;

.field private _rewardItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;",
            ">;"
        }
    .end annotation
.end field

.field private _totalLoadersCreated:I

.field private _totalLoadersHaveRun:I

.field private _totalUrlsSent:I

.field private _urlLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->values()[Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Analytics:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Unsent:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 31
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;

    .line 33
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 34
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 35
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 36
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 37
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 39
    iput v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalUrlsSent:I

    .line 40
    iput v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I

    .line 41
    iput v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I

    .line 43
    iput-boolean v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_isLoading:Z

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->addLoader(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    return-void
.end method

.method static synthetic access$1(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->startNextLoader()V

    return-void
.end method

.method static synthetic access$2(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I

    return v0
.end method

.method static synthetic access$3(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersCreated:I

    return-void
.end method

.method static synthetic access$4(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I

    return v0
.end method

.method static synthetic access$5(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalLoadersHaveRun:I

    return-void
.end method

.method static synthetic access$6(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->urlLoadFailed(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    return-void
.end method

.method static synthetic access$7(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->urlLoadCompleted(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    return-void
.end method

.method private addLoader(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method private campaignDataFailed()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;

    invoke-interface {v0}, Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;->onWebDataFailed()V

    .line 548
    :cond_0
    return-void
.end method

.method private campaignDataReceived(Ljava/lang/String;)V
    .locals 14
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const-string v8, "analyticsUrl"

    const-string v8, "allowSkipVideoInSeconds"

    const-string v8, "Parsed total of "

    const-string v13, "Malformed JSON: "

    .line 437
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 440
    .local v7, "validData":Ljava/lang/Boolean;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 441
    const/4 v2, 0x0

    .line 443
    .local v2, "data":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v9, "data"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_11

    .line 445
    :try_start_1
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v9, "data"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 451
    :goto_0
    :try_start_2
    const-string v8, "webViewUrl"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 452
    :cond_0
    const-string v8, "analyticsUrl"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 453
    :cond_1
    const-string v8, "impactUrl"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 454
    :cond_2
    const-string v8, "gamerId"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 455
    :cond_3
    const-string v8, "campaigns"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 456
    :cond_4
    const-string v8, "item"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 459
    :cond_5
    const-string v8, "webViewUrl"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 460
    const-string v8, "analyticsUrl"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 461
    const-string v8, "impactUrl"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_BASE_URL:Ljava/lang/String;

    .line 462
    const-string v8, "gamerId"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    .line 465
    const-string v8, "allowSkipVideoInSeconds"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 466
    const-string v8, "allowSkipVideoInSeconds"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_VIDEO_SKIP:I

    .line 470
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 471
    const-string v8, "campaigns"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 472
    .local v0, "campaigns":Lorg/json/JSONArray;
    if-eqz v0, :cond_7

    .line 473
    invoke-direct {p0, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    .line 477
    .end local v0    # "campaigns":Lorg/json/JSONArray;
    :cond_7
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-nez v8, :cond_8

    .line 478
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    .line 480
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Parsed total of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " campaigns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 484
    new-instance v8, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    const-string v9, "item"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;-><init>(Lorg/json/JSONObject;)V

    iput-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 485
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v8}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->hasValidData()Z

    move-result v8

    if-nez v8, :cond_a

    .line 486
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->campaignDataFailed()V

    .line 541
    .end local v2    # "data":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 447
    .restart local v2    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 448
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "Malformed data JSON"

    invoke-static {v8, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 521
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 522
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Malformed JSON: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 525
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    array-length v9, v8

    :goto_2
    if-lt v10, v9, :cond_12

    .line 530
    :cond_9
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->campaignDataFailed()V

    goto :goto_1

    .line 490
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "data":Lorg/json/JSONObject;
    :cond_a
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Parsed default rewardItem: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v9}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v9}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    iput-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 494
    :cond_b
    const-string v8, "disableBackButtonForSeconds"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 495
    const-string v8, "disableBackButtonForSeconds"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_BACK_BUTTON_SKIP:I

    .line 499
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "items"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 500
    const-string v8, "items"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 501
    .local v6, "rewardItems":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 503
    .local v1, "currentRewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v5, v8, :cond_e

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Parsed total of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reward items"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 534
    .end local v1    # "currentRewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    .end local v5    # "i":I
    .end local v6    # "rewardItems":Lorg/json/JSONArray;
    :cond_d
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;

    if-eqz v8, :cond_13

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_13

    .line 535
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WebDataCompleted: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;

    invoke-interface {v8}, Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;->onWebDataCompleted()V

    goto/16 :goto_1

    .line 504
    .restart local v1    # "currentRewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    .restart local v5    # "i":I
    .restart local v6    # "rewardItems":Lorg/json/JSONArray;
    :cond_e
    :try_start_4
    new-instance v1, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .end local v1    # "currentRewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;-><init>(Lorg/json/JSONObject;)V

    .line 505
    .restart local v1    # "currentRewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    invoke-virtual {v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->hasValidData()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 506
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    if-nez v8, :cond_f

    .line 507
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    .line 509
    :cond_f
    iget-object v8, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 517
    .end local v1    # "currentRewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    .end local v5    # "i":I
    .end local v6    # "rewardItems":Lorg/json/JSONArray;
    :cond_11
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->campaignDataFailed()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 525
    .end local v2    # "data":Lorg/json/JSONObject;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_12
    aget-object v4, v8, v10

    .line 526
    .local v4, "element":Ljava/lang/StackTraceElement;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Malformed JSON: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 540
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    .restart local v2    # "data":Lorg/json/JSONObject;
    :cond_13
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->campaignDataFailed()V

    goto/16 :goto_1
.end method

.method private checkFailedUrls()V
    .locals 15

    .prologue
    .line 361
    new-instance v11, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusepowered/a1/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pendingrequests.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v11, "pendingRequestFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lcom/fusepowered/a1/ApplifierImpactUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "contents":Ljava/lang/String;
    const/4 v13, 0x0

    .line 366
    .local v13, "pendingRequestsJson":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 370
    .local v12, "pendingRequestsArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    .local v14, "pendingRequestsJson":Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "data"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 373
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 374
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-lt v10, v1, :cond_1

    move-object v13, v14

    .line 393
    .end local v10    # "i":I
    .end local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/a1/ApplifierImpactUtils;->removeFile(Ljava/lang/String;)V

    .line 396
    .end local v7    # "contents":Ljava/lang/String;
    .end local v12    # "pendingRequestsArray":Lorg/json/JSONArray;
    .end local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->startNextLoader()V

    .line 397
    return-void

    .line 375
    .restart local v7    # "contents":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v12    # "pendingRequestsArray":Lorg/json/JSONArray;
    .restart local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 377
    .local v9, "failedUrl":Lorg/json/JSONObject;
    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;

    .line 378
    const-string v1, "url"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    const-string v1, "body"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    const-string v1, "methodType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 381
    const-string v1, "requestType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->getValueOf(Ljava/lang/String;)Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v5

    .line 382
    const-string v1, "retries"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move-object v1, p0

    .line 377
    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 384
    .local v0, "ulc":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 385
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 374
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "ulc":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    .end local v9    # "failedUrl":Lorg/json/JSONObject;
    .end local v10    # "i":I
    .end local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 390
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    const-string v1, "Problems while sending some of the failed urls."

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 389
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v13, v14

    .end local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    goto :goto_2

    .end local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    :cond_3
    move-object v13, v14

    .end local v14    # "pendingRequestsJson":Lorg/json/JSONObject;
    .restart local v13    # "pendingRequestsJson":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "campaignsArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v5, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_0

    move-object v6, v5

    .line 573
    .end local v0    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .end local v3    # "i":I
    .end local v5    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;"
    :goto_1
    return-object v6

    .line 557
    .restart local v0    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .restart local v3    # "i":I
    .restart local v5    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;"
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 558
    .local v4, "jsonCampaign":Lorg/json/JSONObject;
    new-instance v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-direct {v1, v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v0    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .local v1, "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    :try_start_1
    invoke-virtual {v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->hasValidData()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 561
    const-string v6, "Adding campaign to cache"

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 555
    .end local v1    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .end local v4    # "jsonCampaign":Lorg/json/JSONObject;
    .restart local v0    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 566
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v6, "Problem with the campaign, skipping."

    invoke-static {v6, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 573
    .end local v0    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v5    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 565
    .restart local v1    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .restart local v3    # "i":I
    .restart local v4    # "jsonCampaign":Lorg/json/JSONObject;
    .restart local v5    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;"
    :catch_1
    move-exception v6

    move-object v2, v6

    move-object v0, v1

    .end local v1    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .restart local v0    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    goto :goto_3

    .end local v0    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .restart local v1    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    :cond_2
    move-object v0, v1

    .end local v1    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .restart local v0    # "campaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    goto :goto_2
.end method

.method private startNextLoader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_isLoading:Z

    if-nez v0, :cond_0

    .line 303
    const-string v0, "Starting next URL loader"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_isLoading:Z

    .line 305
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    iput-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 307
    :cond_0
    return-void
.end method

.method private urlLoadCompleted(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->clear()V

    .line 329
    :goto_1
    iget v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalUrlsSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalUrlsSent:I

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total urls sent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_totalUrlsSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_isLoading:Z

    .line 334
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->startNextLoader()V

    .line 335
    return-void

    .line 313
    :pswitch_1
    invoke-virtual {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->campaignDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private urlLoadFailed(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .prologue
    .line 338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    invoke-virtual {p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->clear()V

    .line 356
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_isLoading:Z

    .line 357
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->startNextLoader()V

    .line 358
    return-void

    .line 343
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->writeFailedUrl(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V

    goto :goto_0

    .line 346
    :pswitch_1
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->campaignDataFailed()V

    goto :goto_0

    .line 353
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeFailedUrl(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;)V
    .locals 10
    .param p1, "loader"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .prologue
    .line 400
    if-nez p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 402
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 404
    :cond_2
    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 405
    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 409
    .local v5, "failedUrlsJson":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 412
    .local v4, "failedUrlsArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 413
    .local v2, "failedUrl":Lorg/json/JSONObject;
    :try_start_0
    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v3, v2

    .end local v2    # "failedUrl":Lorg/json/JSONObject;
    .local v3, "failedUrl":Lorg/json/JSONObject;
    :goto_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 424
    const-string v7, "data"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 430
    .end local v3    # "failedUrl":Lorg/json/JSONObject;
    :goto_2
    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-static {}, Lcom/fusepowered/a1/ApplifierImpactUtils;->canUseExternalStorage()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fusepowered/a1/ApplifierImpactUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pendingrequests.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v6, "pendingRequestFile":Ljava/io/File;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fusepowered/a1/ApplifierImpactUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_0

    .line 413
    .end local v6    # "pendingRequestFile":Ljava/io/File;
    .restart local v3    # "failedUrl":Lorg/json/JSONObject;
    :cond_4
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 414
    .local v1, "failedLoader":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 415
    .end local v3    # "failedUrl":Lorg/json/JSONObject;
    .restart local v2    # "failedUrl":Lorg/json/JSONObject;
    :try_start_3
    const-string v8, "url"

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v8, "requestType"

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRequestType()Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string v8, "methodType"

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getHTTPMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v8, "body"

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getQueryParams()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string v8, "retries"

    invoke-virtual {v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->getRetries()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v2

    .end local v2    # "failedUrl":Lorg/json/JSONObject;
    .restart local v3    # "failedUrl":Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 426
    .end local v1    # "failedLoader":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;
    .end local v3    # "failedUrl":Lorg/json/JSONObject;
    .restart local v2    # "failedUrl":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v7, "Error collecting failed urls"

    invoke-static {v7, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "failedUrl":Lorg/json/JSONObject;
    .restart local v3    # "failedUrl":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .end local v3    # "failedUrl":Lorg/json/JSONObject;
    .restart local v2    # "failedUrl":Lorg/json/JSONObject;
    goto :goto_3
.end method


# virtual methods
.method public clearData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 198
    iput-object v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->clearData()V

    .line 203
    iput-object v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 210
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 211
    iput-object v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->clearData()V

    .line 216
    iput-object v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 219
    :cond_3
    iput-object v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 220
    return-void

    .line 207
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 208
    .local v0, "rewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->clearData()V

    goto :goto_0
.end method

.method public getCampaignById(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .locals 2
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 114
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    .end local p0    # "this":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
    :goto_1
    return-object v1

    .line 109
    .restart local v0    # "i":I
    .restart local p0    # "this":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-virtual {v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
    check-cast p0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    move-object v1, p0

    goto :goto_1

    .line 108
    .restart local p0    # "this":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCurrentRewardItemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDefaultRewardItem()Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    return-object v0
.end method

.method public getRewardItemByKey(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    .locals 3
    .param p1, "rewardItemKey"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v1}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_defaultRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 279
    :goto_0
    return-object v1

    .line 270
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 271
    .local v0, "rewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 272
    goto :goto_0

    .line 279
    .end local v0    # "rewardItem":Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRewardItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_rewardItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoPlan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaignJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewableVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, "currentCampaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    iget-object v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .restart local v2    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-object v2

    .line 124
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentCampaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    check-cast v0, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .line 125
    .restart local v0    # "currentCampaign":Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignStatus()Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v3, v4}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 126
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initCampaigns()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 134
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->BASE_ACTIVITY:Landroid/app/Activity;

    invoke-static {v1}, Lcom/fusepowered/a1/ApplifierImpactUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DATA:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->TEST_DATA:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->campaignDataReceived(Ljava/lang/String;)V

    move v1, v9

    .line 148
    :goto_0
    return v1

    .line 139
    :cond_0
    invoke-static {}, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->getCampaignQueryUrl()Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "url":Ljava/lang/String;
    const-string v1, "\\?"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "parts":[Ljava/lang/String;
    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;

    aget-object v2, v7, v6

    aget-object v3, v7, v9

    const-string v4, "GET"

    sget-object v5, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoPlan:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 143
    .local v0, "ulc":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 144
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->checkFailedUrls()V

    move v1, v9

    .line 148
    goto :goto_0
.end method

.method public sendAnalyticsRequest(Ljava/lang/String;Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;)V
    .locals 11
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "campaign"    # Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "%s&%s=%s"

    .line 178
    if-eqz p2, :cond_1

    .line 179
    const-string v1, "%s"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "viewUrl":Ljava/lang/String;
    const-string v1, "%s=%s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "gameId"

    aput-object v5, v4, v6

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "analyticsUrl":Ljava/lang/String;
    const-string v1, "%s&%s=%s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v4, "type"

    aput-object v4, v1, v7

    aput-object p1, v1, v8

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 182
    const-string v1, "%s&%s=%s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v4, "trackingId"

    aput-object v4, v1, v7

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    aput-object v4, v1, v8

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 183
    const-string v1, "%s&%s=%s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v4, "providerId"

    aput-object v4, v1, v7

    invoke-virtual {p2}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    const-string v1, "%s&%s=%s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v4, "rewardItem"

    aput-object v4, v1, v7

    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 186
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->GAMER_SID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "%s&%s=%s"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v3, v1, v6

    const-string v4, "sid"

    aput-object v4, v1, v7

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->GAMER_SID:Ljava/lang/String;

    aput-object v4, v1, v8

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 189
    :cond_0
    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;

    const-string v4, "GET"

    sget-object v5, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->Analytics:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 190
    .local v0, "ulc":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 191
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    .end local v0    # "ulc":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    .end local v2    # "viewUrl":Ljava/lang/String;
    .end local v3    # "analyticsUrl":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public sendCampaignViewProgress(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)Z
    .locals 12
    .param p1, "campaign"    # Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
    .param p2, "position"    # Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 152
    const/4 v7, 0x0

    .line 153
    .local v7, "progressSent":Z
    if-nez p1, :cond_0

    move v8, v7

    .line 174
    .end local v7    # "progressSent":Z
    .local v8, "progressSent":I
    :goto_0
    return v8

    .line 155
    .end local v8    # "progressSent":I
    .restart local v7    # "progressSent":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "VP: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    if-eqz p2, :cond_3

    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 158
    const-string v1, "%s%s"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_BASE_URL:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string v5, "gamers/"

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "viewUrl":Ljava/lang/String;
    const-string v1, "%s%s/video/%s/%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAMER_ID:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {p2}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p1}, Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v1, "%s/%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v6

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_GAME_ID:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v1, "%s=%s"

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "rewardItem"

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "queryParams":Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->GAMER_SID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 165
    const-string v1, "%s&%s=%s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "sid"

    aput-object v5, v4, v9

    sget-object v5, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->GAMER_SID:Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 167
    :cond_1
    new-instance v0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;

    const-string v4, "POST"

    sget-object v5, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;->VideoViewed:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;-><init>(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V

    .line 168
    .local v0, "ulc":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 169
    sget-object v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    :cond_2
    const/4 v7, 0x1

    .end local v0    # "ulc":Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
    .end local v2    # "viewUrl":Ljava/lang/String;
    .end local v3    # "queryParams":Ljava/lang/String;
    :cond_3
    move v8, v7

    .line 174
    .restart local v8    # "progressSent":I
    goto/16 :goto_0
.end method

.method public setCurrentRewardItem(Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;)V
    .locals 2
    .param p1, "rewardItem"    # Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iput-object p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problem setting current reward item: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentRewardItem:Lcom/fusepowered/a1/campaign/ApplifierImpactRewardItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWebDataListener(Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_listener:Lcom/fusepowered/a1/webapp/IApplifierImpactWebDataListener;

    .line 100
    return-void
.end method

.method public stopAllRequests()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 230
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_failedUrlLoaders:Ljava/util/ArrayList;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;->cancel(Z)Z

    .line 235
    iput-object v2, p0, Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;->_currentLoader:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;

    .line 237
    :cond_2
    return-void
.end method
