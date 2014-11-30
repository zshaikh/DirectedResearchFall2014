.class public Lcom/playtika/extensions/amazon/AmazonExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AmazonExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;
    }
.end annotation


# static fields
.field private static final AS_EVENT_ERROR:Ljava/lang/String; = "ERROR"

.field private static final AS_EVENT_IS_AVAILABLE:Ljava/lang/String; = "IS_AVAILABLE"

.field private static final AS_EVENT_PURCHASED:Ljava/lang/String; = "PURCHASED"

.field private static final TAG:Ljava/lang/String; = "AmazonExtensionContext"

.field public static transaction_id:Ljava/lang/String;


# instance fields
.field private mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

.field private mPurchaseObserver:Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct/range {p0 .. p6}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct/range {p0 .. p7}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToASWithError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/playtika/extensions/amazon/AmazonExtensionContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToASWithSandboxAvailability(Ljava/lang/String;)V

    return-void
.end method

.method private pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "purchaseToken"    # Ljava/lang/String;
    .param p5, "userId"    # Ljava/lang/String;
    .param p6, "requestId"    # Ljava/lang/String;
    .param p7, "error_code"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "level":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&signedData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&signature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&orderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&transaction_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_4
    if-eqz p7, :cond_5

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private pushEventToASWithError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "error_code"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private pushEventToASWithSandboxAvailability(Ljava/lang/String;)V
    .locals 2
    .param p1, "isPaymentsAvailable"    # Ljava/lang/String;

    .prologue
    .line 173
    move-object v0, p1

    .line 174
    .local v0, "level":Ljava/lang/String;
    const-string v1, "IS_AVAILABLE"

    invoke-virtual {p0, v1, v0}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "developerPayload"    # Ljava/lang/String;
    .param p5, "signedData"    # Ljava/lang/String;
    .param p6, "signature"    # Ljava/lang/String;

    .prologue
    .line 126
    if-eqz p4, :cond_0

    .line 127
    iget-object v0, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->insertOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPurchase(Ljava/lang/String;)V
    .locals 1
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v0, p1}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->removeOrder(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->close()V

    .line 41
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/playtika/extensions/amazon/AmazonPaymentsInitFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/amazon/AmazonPaymentsInitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "purchase"

    new-instance v2, Lcom/playtika/extensions/amazon/AmazonPaymentsPurchaseFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/amazon/AmazonPaymentsPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "confirmPurchase"

    new-instance v2, Lcom/playtika/extensions/amazon/AmazonConfirmPurchaseFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/amazon/AmazonConfirmPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "getTransactions"

    new-instance v2, Lcom/playtika/extensions/amazon/AmazonGetTransactionsFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/amazon/AmazonGetTransactionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method public getTransactions()Ljava/lang/String;
    .locals 12

    .prologue
    .line 85
    const-string v6, ""

    .line 89
    .local v6, "result":Ljava/lang/String;
    iget-object v10, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v10}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->queryAllPurchasedItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 91
    .local v8, "transactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v8, :cond_0

    .line 95
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 96
    .local v3, "jarray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 111
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .end local v3    # "jarray":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v6

    .line 96
    .restart local v3    # "jarray":Lorg/json/JSONArray;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 98
    .local v7, "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v1, "holder":Lorg/json/JSONObject;
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 108
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v1    # "holder":Lorg/json/JSONObject;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "jarray":Lorg/json/JSONArray;
    .end local v7    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v6, ""

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "holder":Lorg/json/JSONObject;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "jarray":Lorg/json/JSONArray;
    .restart local v7    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 104
    .local v5, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 106
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method initPayments()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {p0}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/playtika/nativecode/payments/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    .line 61
    new-instance v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;-><init>(Lcom/playtika/extensions/amazon/AmazonExtensionContext;)V

    iput-object v0, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->mPurchaseObserver:Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;

    .line 62
    iget-object v0, p0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->mPurchaseObserver:Lcom/playtika/extensions/amazon/AmazonExtensionContext$AmazonPaymentExtensionPurchaseObserver;

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 63
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->transaction_id:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "product_id"    # Ljava/lang/String;
    .param p2, "transaction_id"    # Ljava/lang/String;

    .prologue
    .line 71
    sput-object p2, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->transaction_id:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "requestId":Ljava/lang/String;
    return-object v0
.end method
