.class public Lcom/bitrhymes/iab/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;,
        Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugLog:Z

    .line 60
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSetupDone:Z

    .line 66
    iput-boolean v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSubscriptionsSupported:Z

    .line 70
    iput-boolean v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncInProgress:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 148
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 7
    .param p0, "code"    # I

    .prologue
    const/16 v5, -0x3e8

    const-string v6, "/"

    .line 717
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 720
    const-string v4, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 730
    const-string v4, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    if-gt p0, v5, :cond_1

    .line 733
    sub-int v2, v5, p0

    .line 734
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 740
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 735
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 737
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 738
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 740
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 748
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    return-void
.end method

.method consume(Lcom/bitrhymes/iab/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/bitrhymes/iab/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bitrhymes/iab/util/IabException;
        }
    .end annotation

    .prologue
    .line 626
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/bitrhymes/iab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 628
    iget-object v4, p1, Lcom/bitrhymes/iab/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 629
    new-instance v4, Lcom/bitrhymes/iab/util/IabException;

    const/16 v5, -0x3f2

    .line 630
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Items of type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/bitrhymes/iab/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 629
    invoke-direct {v4, v5, v6}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 634
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/bitrhymes/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 637
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t consume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 638
    new-instance v4, Lcom/bitrhymes/iab/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 638
    invoke-direct {v4, v5, v6}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/bitrhymes/iab/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 642
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Consuming sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 643
    iget-object v4, p0, Lcom/bitrhymes/iab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 644
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 655
    return-void

    .line 648
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 649
    new-instance v4, Lcom/bitrhymes/iab/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/bitrhymes/iab/util/Purchase;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/bitrhymes/iab/util/Purchase;
    .param p2, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 693
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/bitrhymes/iab/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/bitrhymes/iab/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 697
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bitrhymes/iab/util/Purchase;",
            ">;",
            "Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/bitrhymes/iab/util/Purchase;>;"
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bitrhymes/iab/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 707
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bitrhymes/iab/util/Purchase;",
            ">;",
            "Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 906
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/bitrhymes/iab/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 907
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 908
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/bitrhymes/iab/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bitrhymes/iab/util/IabHelper$3;-><init>(Lcom/bitrhymes/iab/util/IabHelper;Ljava/util/List;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/bitrhymes/iab/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 937
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 938
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSetupDone:Z

    .line 267
    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 270
    :cond_0
    iput-object v2, p0, Lcom/bitrhymes/iab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 271
    iput-object v2, p0, Lcom/bitrhymes/iab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 272
    iput-object v2, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 274
    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugLog:Z

    .line 161
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugLog:Z

    .line 156
    iput-object p2, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 157
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 794
    const-string v0, ""

    iput-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncInProgress:Z

    .line 796
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_0
    iput-object p1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mAsyncInProgress:Z

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 754
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 755
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 756
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 757
    const/4 v1, 0x0

    .line 760
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 759
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 760
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 762
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 764
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 770
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 771
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 772
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 773
    const/4 v1, 0x0

    .line 776
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 775
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 776
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 778
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 780
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 409
    const-string v8, "IABHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Purchase item response = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 491
    :goto_0
    return v8

    .line 414
    :cond_0
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/bitrhymes/iab/util/IabHelper;->flagEndAsync()V

    .line 419
    if-nez p3, :cond_2

    .line 420
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 421
    new-instance v6, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 422
    .local v6, "result":Lcom/bitrhymes/iab/util/IabResult;
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    .line 423
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 426
    .end local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 427
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "dataSignature":Ljava/lang/String;
    const-string v8, "IabHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 432
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 433
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 434
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Data signature: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 435
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 436
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expected item type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 438
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 439
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 441
    new-instance v6, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 442
    .restart local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    .line 443
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 446
    .end local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 448
    .local v2, "purchase":Lcom/bitrhymes/iab/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/bitrhymes/iab/util/Purchase;

    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/bitrhymes/iab/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v2    # "purchase":Lcom/bitrhymes/iab/util/Purchase;
    .local v3, "purchase":Lcom/bitrhymes/iab/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/bitrhymes/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 452
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/bitrhymes/iab/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 453
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 454
    new-instance v6, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Signature verification failed for sku "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 455
    .restart local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    .line 456
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 458
    .end local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 468
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 469
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/bitrhymes/iab/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    .line 491
    .end local v3    # "purchase":Lcom/bitrhymes/iab/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 460
    .restart local v2    # "purchase":Lcom/bitrhymes/iab/util/Purchase;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 461
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 463
    new-instance v6, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 464
    .restart local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    .line 465
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 472
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/bitrhymes/iab/util/Purchase;
    .end local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 475
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 476
    new-instance v6, Lcom/bitrhymes/iab/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 477
    .restart local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    goto :goto_1

    .line 480
    .end local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 481
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase canceled - Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 482
    new-instance v6, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 483
    .restart local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    goto :goto_1

    .line 486
    .end local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase failed. Result code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 487
    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 486
    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 488
    new-instance v6, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 489
    .restart local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    goto/16 :goto_1

    .line 460
    .end local v6    # "result":Lcom/bitrhymes/iab/util/IabResult;
    .restart local v3    # "purchase":Lcom/bitrhymes/iab/util/Purchase;
    :catch_1
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .end local v3    # "purchase":Lcom/bitrhymes/iab/util/Purchase;
    .restart local v2    # "purchase":Lcom/bitrhymes/iab/util/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 303
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bitrhymes/iab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bitrhymes/iab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 16
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v3, "launchPurchaseFlow"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 342
    const-string v3, "launchPurchaseFlow"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 344
    const-string v3, "IABHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Purchase item request = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v3, "subs"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bitrhymes/iab/util/IabHelper;->mSubscriptionsSupported:Z

    move v3, v0

    if-nez v3, :cond_1

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/bitrhymes/iab/util/IabHelper;->flagEndAsync()V

    .line 348
    new-instance v13, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v3, -0x3f1

    .line 349
    const-string v4, "Subscriptions are not available."

    .line 348
    invoke-direct {v13, v3, v4}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 350
    .local v13, "r":Lcom/bitrhymes/iab/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object v1, v13

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    .line 391
    .end local v13    # "r":Lcom/bitrhymes/iab/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Constructing buy intent for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bitrhymes/iab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object v3, v0

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    invoke-interface/range {v3 .. v8}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 357
    .local v10, "buyIntentBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v14

    .line 358
    .local v14, "response":I
    if-eqz v14, :cond_2

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/bitrhymes/iab/util/IabHelper;->flagEndAsync()V

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to buy item, Error response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 362
    new-instance v15, Lcom/bitrhymes/iab/util/IabResult;

    const-string v3, "Unable to buy item"

    invoke-direct {v15, v14, v3}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 363
    .local v15, "result":Lcom/bitrhymes/iab/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object v1, v15

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 377
    .end local v10    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v14    # "response":I
    .end local v15    # "result":Lcom/bitrhymes/iab/util/IabResult;
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 378
    .local v11, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v11}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 381
    new-instance v15, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v3, -0x3ec

    const-string v4, "Failed to send intent."

    invoke-direct {v15, v3, v4}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 382
    .restart local v15    # "result":Lcom/bitrhymes/iab/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object v1, v15

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    goto/16 :goto_0

    .line 367
    .end local v11    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v15    # "result":Lcom/bitrhymes/iab/util/IabResult;
    .restart local v10    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v14    # "response":I
    :cond_2
    :try_start_1
    const-string v3, "BUY_INTENT"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .line 368
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launching buy intent for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 369
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bitrhymes/iab/util/IabHelper;->mRequestCode:I

    .line 370
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bitrhymes/iab/util/IabHelper;->mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 371
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bitrhymes/iab/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 372
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    .line 373
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 374
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 375
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v3, p1

    move/from16 v5, p4

    .line 372
    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 384
    .end local v10    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "response":I
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 385
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RemoteException while launching purchase flow for sku "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    new-instance v15, Lcom/bitrhymes/iab/util/IabResult;

    const/16 v3, -0x3e9

    const-string v4, "Remote exception while starting purchase flow"

    invoke-direct {v15, v3, v4}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 389
    .restart local v15    # "result":Lcom/bitrhymes/iab/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object v1, v15

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 313
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bitrhymes/iab/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bitrhymes/iab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 949
    iget-object v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/bitrhymes/iab/util/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bitrhymes/iab/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bitrhymes/iab/util/IabException;
        }
    .end annotation

    .prologue
    .line 495
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bitrhymes/iab/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/bitrhymes/iab/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/bitrhymes/iab/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bitrhymes/iab/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bitrhymes/iab/util/IabException;
        }
    .end annotation

    .prologue
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "subs"

    const-string v3, "inapp"

    .line 513
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/bitrhymes/iab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 515
    :try_start_0
    new-instance v1, Lcom/bitrhymes/iab/util/Inventory;

    invoke-direct {v1}, Lcom/bitrhymes/iab/util/Inventory;-><init>()V

    .line 516
    .local v1, "inv":Lcom/bitrhymes/iab/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/bitrhymes/iab/util/IabHelper;->queryPurchases(Lcom/bitrhymes/iab/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 517
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 518
    new-instance v3, Lcom/bitrhymes/iab/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    .end local v1    # "inv":Lcom/bitrhymes/iab/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/bitrhymes/iab/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 521
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/bitrhymes/iab/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 522
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/bitrhymes/iab/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/bitrhymes/iab/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 523
    if-eqz v2, :cond_1

    .line 524
    new-instance v3, Lcom/bitrhymes/iab/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    .end local v1    # "inv":Lcom/bitrhymes/iab/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 549
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/bitrhymes/iab/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 529
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/bitrhymes/iab/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 530
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/bitrhymes/iab/util/IabHelper;->queryPurchases(Lcom/bitrhymes/iab/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 531
    if-eqz v2, :cond_2

    .line 532
    new-instance v3, Lcom/bitrhymes/iab/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 535
    :cond_2
    if-eqz p1, :cond_3

    .line 536
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/bitrhymes/iab/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/bitrhymes/iab/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 537
    if-eqz v2, :cond_3

    .line 538
    new-instance v3, Lcom/bitrhymes/iab/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/bitrhymes/iab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 543
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 608
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/bitrhymes/iab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 609
    return-void
.end method

.method public queryInventoryAsync(ZLcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bitrhymes/iab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 613
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 580
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 581
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 582
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/bitrhymes/iab/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 583
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/bitrhymes/iab/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bitrhymes/iab/util/IabHelper$2;-><init>(Lcom/bitrhymes/iab/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/bitrhymes/iab/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 605
    return-void
.end method

.method queryPurchases(Lcom/bitrhymes/iab/util/Inventory;Ljava/lang/String;)I
    .locals 20
    .param p1, "inv"    # Lcom/bitrhymes/iab/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Querying owned items, item type: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 802
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Package name: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 803
    const/16 v16, 0x0

    .line 804
    .local v16, "verificationFailed":Z
    const/4 v5, 0x0

    .line 807
    .local v5, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Calling getPurchases with continuation token: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bitrhymes/iab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p2

    move-object v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 811
    .local v7, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 812
    .local v12, "response":I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Owned items response: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 813
    if-eqz v12, :cond_1

    .line 814
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "getPurchases() failed: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move/from16 v17, v12

    .line 859
    :goto_0
    return v17

    .line 817
    :cond_1
    const-string v17, "INAPP_PURCHASE_ITEM_LIST"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 818
    const-string v17, "INAPP_PURCHASE_DATA_LIST"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 819
    const-string v17, "INAPP_DATA_SIGNATURE_LIST"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 820
    :cond_2
    const-string v17, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 821
    const/16 v17, -0x3ea

    goto :goto_0

    .line 825
    :cond_3
    const-string v17, "INAPP_PURCHASE_ITEM_LIST"

    .line 824
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 827
    .local v8, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "INAPP_PURCHASE_DATA_LIST"

    .line 826
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 829
    .local v11, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "INAPP_DATA_SIGNATURE_LIST"

    .line 828
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 831
    .local v14, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 855
    const-string v17, "INAPP_CONTINUATION_TOKEN"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 856
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Continuation token: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 857
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 859
    if-eqz v16, :cond_7

    const/16 v17, -0x3eb

    goto :goto_0

    .line 832
    :cond_4
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 833
    .local v10, "purchaseData":Ljava/lang/String;
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 834
    .local v13, "signature":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 835
    .local v15, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bitrhymes/iab/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/bitrhymes/iab/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 836
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Sku is owned: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 837
    new-instance v9, Lcom/bitrhymes/iab/util/Purchase;

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v10

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/bitrhymes/iab/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    .local v9, "purchase":Lcom/bitrhymes/iab/util/Purchase;
    invoke-virtual {v9}, Lcom/bitrhymes/iab/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 840
    const-string v17, "BUG: empty/null token!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 841
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Purchase data: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 845
    :cond_5
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/Inventory;->addPurchase(Lcom/bitrhymes/iab/util/Purchase;)V

    .line 831
    .end local v9    # "purchase":Lcom/bitrhymes/iab/util/Purchase;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 848
    :cond_6
    const-string v17, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 849
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "   Purchase data: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 850
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "   Signature: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 851
    const/16 v16, 0x1

    goto :goto_2

    .line 859
    .end local v10    # "purchaseData":Ljava/lang/String;
    .end local v13    # "signature":Ljava/lang/String;
    .end local v15    # "sku":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/bitrhymes/iab/util/Inventory;Ljava/util/List;)I
    .locals 12
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/bitrhymes/iab/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bitrhymes/iab/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const-string v11, "DETAILS_LIST"

    .line 864
    const-string v7, "Querying SKU details."

    invoke-virtual {p0, v7}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 865
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v5, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/bitrhymes/iab/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 867
    if-eqz p3, :cond_0

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 869
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 870
    const-string v7, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v7}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move v7, v10

    .line 899
    :goto_0
    return v7

    .line 874
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 875
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v7, "ITEM_ID_LIST"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 876
    iget-object v7, p0, Lcom/bitrhymes/iab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 879
    .local v4, "skuDetails":Landroid/os/Bundle;
    const-string v7, "DETAILS_LIST"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 880
    invoke-virtual {p0, v4}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 881
    .local v2, "response":I
    if-eqz v2, :cond_2

    .line 882
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSkuDetails() failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bitrhymes/iab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move v7, v2

    .line 883
    goto :goto_0

    .line 886
    :cond_2
    const-string v7, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v7}, Lcom/bitrhymes/iab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 887
    const/16 v7, -0x3ea

    goto :goto_0

    .line 892
    .end local v2    # "response":I
    :cond_3
    const-string v7, "DETAILS_LIST"

    .line 891
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 894
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    move v7, v10

    .line 899
    goto :goto_0

    .line 894
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 895
    .local v6, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/bitrhymes/iab/util/SkuDetails;

    invoke-direct {v0, p1, v6}, Lcom/bitrhymes/iab/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .local v0, "d":Lcom/bitrhymes/iab/util/SkuDetails;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got sku details: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2, v0}, Lcom/bitrhymes/iab/util/Inventory;->addSkuDetails(Lcom/bitrhymes/iab/util/SkuDetails;)V

    goto :goto_1
.end method

.method public startSetup(Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 185
    iget-boolean v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 189
    new-instance v1, Lcom/bitrhymes/iab/util/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/bitrhymes/iab/util/IabHelper$1;-><init>(Lcom/bitrhymes/iab/util/IabHelper;Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/bitrhymes/iab/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bitrhymes/iab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    if-eqz p1, :cond_1

    .line 252
    new-instance v1, Lcom/bitrhymes/iab/util/IabResult;

    const/4 v2, 0x3

    .line 253
    const-string v3, "Billing service unavailable on device."

    .line 252
    invoke-direct {v1, v2, v3}, Lcom/bitrhymes/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 251
    invoke-interface {p1, v1}, Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/bitrhymes/iab/util/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/bitrhymes/iab/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
