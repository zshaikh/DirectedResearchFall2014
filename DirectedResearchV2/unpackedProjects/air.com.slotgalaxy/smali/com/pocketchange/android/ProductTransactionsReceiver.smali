.class public Lcom/pocketchange/android/ProductTransactionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "rewards"

    const-string v6, "ProductTransactionsReceiver"

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    const-string v1, "com.pocketchange.android.rewards.NOTIFY_PRODUCT_TRANSACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v0, "signed_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "signature"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v0, "rewards"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "rewards"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 46
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 47
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 48
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 49
    const-string v5, "transaction_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "ProductTransactionsReceiver"

    const-string v1, "Error processing transaction notification"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lcom/pocketchange/android/PocketChange;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-static {v2}, Lcom/pocketchange/android/PocketChange;->acknowledgeProductTransactions(Ljava/util/Collection;)V

    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "ProductTransactionsReceiver"

    const-string v0, "SDK not initialized, cannot acknowledge transactions"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
