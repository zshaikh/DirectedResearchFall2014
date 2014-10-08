.class public Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;
.super Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
.source "RewardHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;-><init>()V

    return-void
.end method

.method private validateReward(Lorg/json/JSONObject;)Z
    .locals 11
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v9, ""

    .line 71
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v7, v10

    .line 96
    .end local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;
    :goto_0
    return v7

    .line 73
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;
    :cond_1
    sget-object v7, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->IDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "reward":Ljava/lang/String;
    sget-object v7, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->QuantityKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "quantity":Ljava/lang/String;
    sget-object v7, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "receipt":Ljava/lang/String;
    sget-object v7, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->SignatureKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "signature":Ljava/lang/String;
    iget-object v7, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v7}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "device_id":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 81
    const-string v1, "null"

    .line 83
    :cond_2
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 85
    .local v0, "config":Lv2/com/playhaven/configuration/PHConfiguration;
    const-string v7, "%s:%s:%s:%s:%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v10

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;
    check-cast p0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {p0}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->getSecret()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lv2/com/playhaven/utils/PHStringUtil;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "generatedSig":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking reward signature:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " against: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0
.end method


# virtual methods
.method public handle(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jsonPayload"    # Lorg/json/JSONObject;

    .prologue
    const-string v7, "rewards"

    const-string v7, ""

    .line 28
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 30
    :cond_0
    :try_start_0
    const-string v7, "rewards"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move-object v6, v7

    .line 34
    .local v6, "rewards":Lorg/json/JSONArray;
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 36
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 38
    .local v5, "reward":Lorg/json/JSONObject;
    invoke-direct {p0, v5}, Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;->validateReward(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 40
    new-instance v4, Lv2/com/playhaven/model/PHReward;

    invoke-direct {v4}, Lv2/com/playhaven/model/PHReward;-><init>()V

    .line 42
    .local v4, "r":Lv2/com/playhaven/model/PHReward;
    sget-object v7, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->IDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lv2/com/playhaven/model/PHReward;->name:Ljava/lang/String;

    .line 44
    sget-object v7, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->QuantityKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v4, Lv2/com/playhaven/model/PHReward;->quantity:I

    .line 46
    sget-object v7, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Reward;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/PHContentEnums$Reward;->key()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lv2/com/playhaven/model/PHReward;->receipt:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    sget-object v7, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Reward:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    sget-object v7, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->UnlockedReward:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v7}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "event":Ljava/lang/String;
    iget-object v7, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v7, v2, v0}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "event":Ljava/lang/String;
    .end local v4    # "r":Lv2/com/playhaven/model/PHReward;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 30
    .end local v3    # "i":I
    .end local v5    # "reward":Lorg/json/JSONObject;
    .end local v6    # "rewards":Lorg/json/JSONArray;
    :cond_2
    const-string v7, "rewards"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 59
    .restart local v3    # "i":I
    .restart local v6    # "rewards":Lorg/json/JSONArray;
    :cond_3
    iget-object v7, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v8, "callback"

    invoke-virtual {v7, v8}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lv2/com/playhaven/interstitial/jsbridge/handlers/RewardHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 61
    .end local v3    # "i":I
    .end local v6    # "rewards":Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "PHInterstitialActivity - handleRewards"

    sget-object v8, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v1, v7, v8}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto/16 :goto_0
.end method
