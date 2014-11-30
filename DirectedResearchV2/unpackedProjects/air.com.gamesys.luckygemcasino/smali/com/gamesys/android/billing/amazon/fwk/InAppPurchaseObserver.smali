.class public Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;
.super Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.source "InAppPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;,
        Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;,
        Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;,
        Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

.field private fromGetUserId:Z

.field private final interfaceActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "asContext"    # Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/BasePurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->fromGetUserId:Z

    .line 71
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->interfaceActivity:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->fromGetUserId:Z

    return-void
.end method

.method static synthetic access$3(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->interfaceActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/amazon/inapp/purchasing/Receipt;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->verifySignatures(Lcom/amazon/inapp/purchasing/Receipt;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->fromGetUserId:Z

    return v0
.end method

.method private getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->getSharedPreferencesForCurrentUser()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private getSharedPreferencesForCurrentUser()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->interfaceActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getCurrentAmazonUser()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    .local v0, "settings":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method private verifySignatures(Lcom/amazon/inapp/purchasing/Receipt;ZLjava/lang/String;)V
    .locals 9
    .param p1, "receipt"    # Lcom/amazon/inapp/purchasing/Receipt;
    .param p2, "autoClose"    # Z
    .param p3, "thirdPartyId"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    .line 156
    const-string v1, "Receipt: ItemType: %s Sku: %s SubscriptionPeriod: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 157
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    move-result-object v4

    aput-object v4, v2, v3

    .line 156
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getPayload(Ljava/lang/String;)Lcom/gamesys/android/billing/common/fwk/BuyableItem;

    move-result-object v0

    iget-object v5, v0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->signed_item:Ljava/lang/String;

    .line 161
    .local v5, "thePayload":Ljava/lang/String;
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_RECEIPT_VERIFICATION_STARTING"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getContentServerUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getDivisionProfileId()Ljava/lang/String;

    move-result-object v3

    .line 169
    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getCurrentAmazonUser()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->isBuyItemForDebug()Z

    move-result v7

    new-instance v8, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;

    invoke-direct {v8, p0, p1, p2}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$1;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/amazon/inapp/purchasing/Receipt;Z)V

    move-object v2, p1

    move-object v6, p3

    .line 168
    invoke-static/range {v0 .. v8}, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->verifyPurchaseSignature(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;)V

    .line 202
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 3
    .param p1, "getUserIdResponse"    # Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    .line 96
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetUserIdResponse recieved: Response -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IdRequestStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 3
    .param p1, "itemDataResponse"    # Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    .line 111
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    const-string v1, "onItemDataResponse recieved"

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemDataRequestStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemDataRequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$ItemDataAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 3
    .param p1, "purchaseResponse"    # Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    .line 125
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    const-string v1, "onPurchaseResponse recieved"

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PurchaseRequestStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/PurchaseResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 3
    .param p1, "purchaseUpdatesResponse"    # Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    .line 139
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseUpdatesRecived recieved: Response -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PurchaseUpdatesRequestStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    return-void
.end method

.method public onSdkAvailable(Z)V
    .locals 3
    .param p1, "isSandboxMode"    # Z

    .prologue
    .line 83
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSdkAvailable recieved: Response -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    invoke-virtual {v0, p1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->setSandboxMode(Z)V

    .line 85
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 86
    return-void
.end method
