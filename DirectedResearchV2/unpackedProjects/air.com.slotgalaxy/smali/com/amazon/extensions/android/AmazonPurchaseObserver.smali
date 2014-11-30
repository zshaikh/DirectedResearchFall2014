.class public Lcom/amazon/extensions/android/AmazonPurchaseObserver;
.super Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.source "AmazonPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;,
        Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;,
        Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;,
        Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;
    }
.end annotation


# static fields
.field private static final OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG:Ljava/lang/String; = "Amazon-IAP"


# instance fields
.field private final extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

.field private final flashActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/inapp/purchasing/BasePurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    .line 42
    invoke-virtual {p1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->flashActivity:Landroid/app/Activity;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    return-object v0
.end method

.method static synthetic access$1(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->flashActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/inapp/purchasing/Receipt;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->printReceipt(Lcom/amazon/inapp/purchasing/Receipt;)V

    return-void
.end method

.method private printReceipt(Lcom/amazon/inapp/purchasing/Receipt;)V
    .locals 5
    .param p1, "receipt"    # Lcom/amazon/inapp/purchasing/Receipt;

    .prologue
    .line 129
    const-string v0, "Amazon-IAP"

    .line 130
    const-string v1, "Receipt: ItemType: %s Sku: %s SubscriptionPeriod: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 131
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    move-result-object v4

    aput-object v4, v2, v3

    .line 130
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method


# virtual methods
.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 3
    .param p1, "getUserIdResponse"    # Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    const-string v2, "Amazon-IAP"

    .line 69
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetUserIdResponse recieved: Response -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdRequestStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 3
    .param p1, "itemDataResponse"    # Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    const-string v2, "Amazon-IAP"

    .line 86
    const-string v0, "Amazon-IAP"

    const-string v0, "onItemDataResponse recieved"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemDataRequestStatus"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ItemDataRequestId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$ItemDataAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 3
    .param p1, "purchaseResponse"    # Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    const-string v2, "Amazon-IAP"

    .line 102
    const-string v0, "Amazon-IAP"

    const-string v0, "onPurchaseResponse recieved"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseRequestStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/PurchaseResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 3
    .param p1, "purchaseUpdatesResponse"    # Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    const-string v2, "Amazon-IAP"

    .line 118
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPurchaseUpdatesRecived recieved: Response -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseUpdatesRequestStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v0, "Amazon-IAP"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method public onSdkAvailable(Z)V
    .locals 3
    .param p1, "isSandboxMode"    # Z

    .prologue
    .line 54
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSdkAvailable recieved: Response -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    invoke-virtual {v0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onSdkAvailable(Z)V

    .line 57
    return-void
.end method
