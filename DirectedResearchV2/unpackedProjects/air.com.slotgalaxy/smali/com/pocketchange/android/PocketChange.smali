.class public Lcom/pocketchange/android/PocketChange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_NOTIFY_PENDING_DISPLAY_REWARD_INTENT:Ljava/lang/String; = "com.pocketchange.android.rewards.NOTIFY_PENDING_DISPLAY_REWARD_INTENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_NOTIFY_PENDING_NOTIFICATION_INTENT:Ljava/lang/String; = "com.pocketchange.android.rewards.NOTIFY_PENDING_NOTIFICATION_INTENT"

.field public static final ACTION_NOTIFY_PRODUCT_TRANSACTION:Ljava/lang/String; = "com.pocketchange.android.rewards.NOTIFY_PRODUCT_TRANSACTION"

.field public static final ACTION_UPDATE_PRODUCT_TRANSACTIONS:Ljava/lang/String; = "com.pocketchange.android.rewards.UPDATE_PRODUCT_TRANSACTIONS"

.field public static final INTENT_EXTRA_LAUNCHED_FROM_OFFER:Ljava/lang/String; = "com.pocketchange.android.IsOfferLaunch"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRODUCT_TRANSACTION_NOTIFICATION_EXTRA_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final PRODUCT_TRANSACTION_NOTIFICATION_EXTRA_SIGNED_DATA:Ljava/lang/String; = "signed_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acknowledgeProductTransactions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "transactionIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pocketchange/android/PCSingleton;->acknowledgeProductTransactions(Ljava/util/Collection;)V

    .line 129
    return-void
.end method

.method public static getPendingNotificationIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pocketchange/android/PCSingleton;->getPendingNotificationIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getQuantityPurchasedForProduct(Ljava/lang/String;)I
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pocketchange/android/PCSingleton;->getQuantityPurchasedForProduct(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getShopIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->getShopIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static grantReward(Ljava/lang/String;I)V
    .locals 1
    .param p0, "rewardId"    # Ljava/lang/String;
    .param p1, "amount"    # I

    .prologue
    .line 112
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/pocketchange/android/PCSingleton;->grantReward(Ljava/lang/String;I)V

    .line 113
    return-void
.end method

.method public static hasPurchasedProduct(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pocketchange/android/PCSingleton;->hasPurchasedProduct(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/pocketchange/android/PocketChange;->initialize(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "testMode"    # Z

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/pocketchange/android/PCSingleton;->initialize(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onAppEventTriggered(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pocketchange/android/PCSingleton;->onAppEventTriggered(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static openShop()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/PCSingleton;->openShop(Ljava/lang/String;)V

    .line 109
    return-void
.end method
