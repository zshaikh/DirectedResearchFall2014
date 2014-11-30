.class public Lcom/playtika/extensions/paypal/PaypalExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "PaypalExtensionContext.java"


# static fields
.field private static final AS_EVENT_CANCELED:Ljava/lang/String; = "CANCELED"

.field private static final AS_EVENT_ERROR:Ljava/lang/String; = "ERROR"

.field private static final AS_EVENT_PURCHASED:Ljava/lang/String; = "PURCHASED"

.field private static paypalExtCtxInstance:Lcom/playtika/extensions/paypal/PaypalExtensionContext;


# instance fields
.field private mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

.field private transaction_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/playtika/extensions/paypal/PaypalExtensionContext;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->paypalExtCtxInstance:Lcom/playtika/extensions/paypal/PaypalExtensionContext;

    return-object v0
.end method

.method private pushEventToAS(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, ""

    .line 157
    .local v0, "level":Ljava/lang/String;
    iget-object v1, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->transaction_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->transaction_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "orderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->transaction_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&transaction_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->transaction_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method


# virtual methods
.method public confirmPurchase(Ljava/lang/String;)V
    .locals 1
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v0, p1}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->removeOrder(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->close()V

    .line 35
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
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/playtika/extensions/paypal/PaypalPaymentsInitFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/paypal/PaypalPaymentsInitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "purchase"

    new-instance v2, Lcom/playtika/extensions/paypal/PaypalPaymentsPurchaseFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/paypal/PaypalPaymentsPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "confirmPurchase"

    new-instance v2, Lcom/playtika/extensions/paypal/PaypalConfirmPurchaseFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/paypal/PaypalConfirmPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "getTransactions"

    new-instance v2, Lcom/playtika/extensions/paypal/PaypalGetTransactionsFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/paypal/PaypalGetTransactionsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-object v0
.end method

.method public getTransactions()Ljava/lang/String;
    .locals 12

    .prologue
    .line 109
    const-string v6, ""

    .line 113
    .local v6, "result":Ljava/lang/String;
    iget-object v10, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {v10}, Lcom/playtika/nativecode/payments/PurchaseDatabase;->queryAllPurchasedItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 114
    .local v8, "transactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v8, :cond_0

    .line 118
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 119
    .local v3, "jarray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 134
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    .end local v3    # "jarray":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v6

    .line 119
    .restart local v3    # "jarray":Lorg/json/JSONArray;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 121
    .local v7, "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v1, "holder":Lorg/json/JSONObject;
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 131
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1    # "holder":Lorg/json/JSONObject;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "jarray":Lorg/json/JSONArray;
    .end local v7    # "row":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string v6, ""

    goto :goto_1

    .line 126
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

    .line 127
    .local v5, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 129
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public initPayments()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/playtika/nativecode/payments/PurchaseDatabase;

    invoke-virtual {p0}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/playtika/nativecode/payments/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->mPurchaseDatabase:Lcom/playtika/nativecode/payments/PurchaseDatabase;

    .line 81
    sput-object p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->paypalExtCtxInstance:Lcom/playtika/extensions/paypal/PaypalExtensionContext;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->transaction_id:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public paypalResponseCallback(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 57
    sparse-switch p2, :sswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 63
    :sswitch_0
    const-string v0, "PURCHASED"

    invoke-direct {p0, v0}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->pushEventToAS(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :sswitch_1
    const-string v0, "CANCELED"

    invoke-direct {p0, v0}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->pushEventToAS(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v0, "ERROR"

    invoke-direct {p0, v0}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->pushEventToAS(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        -0xd -> :sswitch_2
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public purchase(Ljava/lang/String;)V
    .locals 4
    .param p1, "transaction_id"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->transaction_id:Ljava/lang/String;

    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/playtika/extensions/paypal/PaypalSlotomaniaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "transaction_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
