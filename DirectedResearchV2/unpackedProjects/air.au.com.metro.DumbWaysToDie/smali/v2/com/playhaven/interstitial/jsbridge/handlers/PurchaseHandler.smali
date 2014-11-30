.class public Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;
.super Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;
.source "PurchaseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/jsbridge/handlers/AbstractHandler;-><init>()V

    return-void
.end method

.method private validatePurchase(Lorg/json/JSONObject;)Z
    .locals 11
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, ""

    .line 77
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v9

    .line 101
    .end local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;
    :goto_0
    return v6

    .line 79
    .restart local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;
    :cond_1
    sget-object v6, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ProductIDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "productID":Ljava/lang/String;
    sget-object v6, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->NameKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "name":Ljava/lang/String;
    sget-object v6, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "receipt":Ljava/lang/String;
    sget-object v6, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->SignatureKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-virtual {v6}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->key()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "signature":Ljava/lang/String;
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 91
    .local v0, "config":Lv2/com/playhaven/configuration/PHConfiguration;
    const-string v7, "%s:%s:%s:%s:%s:%s"

    const/4 v6, 0x6

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v9

    .line 92
    aput-object v2, v8, v10

    const/4 v6, 0x2

    .line 93
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x3

    .line 94
    iget-object v6, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v6}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x4

    .line 95
    aput-object v4, v8, v6

    const/4 v6, 0x5

    .line 96
    iget-object v9, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;
    check-cast p0, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {p0}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->getSecret()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 91
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {v6}, Lv2/com/playhaven/utils/PHStringUtil;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "generatedSig":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Checking purchase signature:  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " against: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_0
.end method


# virtual methods
.method public handle(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "jsonPayload"    # Lorg/json/JSONObject;

    .prologue
    const-string v9, "purchases"

    const-string v9, "callback"

    const-string v9, ""

    .line 27
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 29
    :cond_0
    :try_start_0
    const-string v9, "purchases"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 30
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move-object v8, v9

    .line 34
    .local v8, "purchases":Lorg/json/JSONArray;
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_2

    .line 67
    iget-object v9, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v10, "callback"

    invoke-virtual {v9, v10}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;->sendResponseToWebview(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    .end local v8    # "purchases":Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "PHInterstitialActivity - handlePurchase"

    sget-object v10, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v1, v9, v10}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0

    .line 31
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v9, "purchases"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move-object v8, v9

    goto :goto_1

    .line 36
    .restart local v3    # "i":I
    .restart local v8    # "purchases":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 38
    .local v6, "purchase":Lorg/json/JSONObject;
    invoke-direct {p0, v6}, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;->validatePurchase(Lorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 41
    new-instance v5, Lv2/com/playhaven/model/PHPurchase;

    iget-object v9, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v9}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lv2/com/playhaven/model/PHPurchase;-><init>(Ljava/lang/String;)V

    .line 43
    .local v5, "p":Lv2/com/playhaven/model/PHPurchase;
    sget-object v9, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ProductIDKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-virtual {v9}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->key()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    .line 45
    sget-object v9, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->NameKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-virtual {v9}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->key()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lv2/com/playhaven/model/PHPurchase;->name:Ljava/lang/String;

    .line 47
    sget-object v9, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->ReceiptKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-virtual {v9}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->key()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lv2/com/playhaven/model/PHPurchase;->receipt:Ljava/lang/String;

    .line 49
    iget-object v9, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;->bridge:Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;

    const-string v10, "callback"

    invoke-virtual {v9, v10}, Lv2/com/playhaven/interstitial/jsbridge/PHJSBridge;->getCurrentQueryVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    .line 51
    sget-object v9, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->CookieKey:Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;

    invoke-virtual {v9}, Lv2/com/playhaven/interstitial/PHContentEnums$Purchase;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "cookie":Ljava/lang/String;
    iget-object v9, v5, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    invoke-static {v9, v0}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->setConversionCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v4, "message":Landroid/os/Bundle;
    sget-object v9, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Purchase:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v9}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "purchase_key":Ljava/lang/String;
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    sget-object v9, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->MadePurchase:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v9}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "event":Ljava/lang/String;
    iget-object v9, p0, Lv2/com/playhaven/interstitial/jsbridge/handlers/PurchaseHandler;->contentDisplayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;

    invoke-interface {v9, v2, v4}, Lv2/com/playhaven/interstitial/jsbridge/ManipulatableContentDisplayer;->sendEventToRequester(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v2    # "event":Ljava/lang/String;
    .end local v4    # "message":Landroid/os/Bundle;
    .end local v5    # "p":Lv2/com/playhaven/model/PHPurchase;
    .end local v7    # "purchase_key":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method
