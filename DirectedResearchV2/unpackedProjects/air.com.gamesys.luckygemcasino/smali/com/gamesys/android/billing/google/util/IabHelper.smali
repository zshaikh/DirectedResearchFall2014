.class public Lcom/gamesys/android/billing/google/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;,
        Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/gamesys/android/billing/google/util/IabHelper$OnIabSetupFinishedListener;,
        Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$gamesys$android$billing$google$util$IabHelper$HelperOperation:[I = null

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

.field private static lastQueryStoreFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private static lastQueryStoreTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

.field private static testingContext:Lcom/gamesys/android/billing/common/facade/INativeBillingContext;


# instance fields
.field mAsyncPurchaseInProgress:Z

.field mAsyncQueryInProgress:Z

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$gamesys$android$billing$google$util$IabHelper$HelperOperation()[I
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/gamesys/android/billing/google/util/IabHelper;->$SWITCH_TABLE$com$gamesys$android$billing$google$util$IabHelper$HelperOperation:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->values()[Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ACTIVITY_RESULT:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->CONSUME:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->PURCHASE_ITEM:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->QUERY_INVENTORY:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper;->$SWITCH_TABLE$com$gamesys$android$billing$google$util$IabHelper$HelperOperation:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    .line 99
    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreFuture:Ljava/util/concurrent/Future;

    .line 170
    sput-object v0, Lcom/gamesys/android/billing/google/util/IabHelper;->testingContext:Lcom/gamesys/android/billing/common/facade/INativeBillingContext;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugLog:Z

    .line 65
    const-class v0, Lcom/gamesys/android/billing/google/util/IabHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSetupDone:Z

    .line 71
    iput-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSubscriptionsSupported:Z

    .line 74
    iput-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mAsyncQueryInProgress:Z

    .line 75
    iput-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mAsyncPurchaseInProgress:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 187
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 759
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 760
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 763
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 766
    rsub-int v2, p0, -0x3e8

    .line 767
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 768
    aget-object v3, v1, v2

    .line 775
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 770
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

    .line 772
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 773
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

    .line 775
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method

.method public static setTestingContext(Lcom/gamesys/android/billing/common/facade/INativeBillingContext;)V
    .locals 0
    .param p0, "context"    # Lcom/gamesys/android/billing/common/facade/INativeBillingContext;

    .prologue
    .line 173
    sput-object p0, Lcom/gamesys/android/billing/google/util/IabHelper;->testingContext:Lcom/gamesys/android/billing/common/facade/INativeBillingContext;

    .line 174
    return-void
.end method


# virtual methods
.method checkSetupDone(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V
    .locals 3
    .param p1, "operation"    # Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    return-void
.end method

.method consume(Lcom/gamesys/android/billing/google/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/gamesys/android/billing/google/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gamesys/android/billing/google/util/IabException;
        }
    .end annotation

    .prologue
    .line 672
    sget-object v4, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->CONSUME:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {p0, v4}, Lcom/gamesys/android/billing/google/util/IabHelper;->checkSetupDone(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V

    .line 674
    iget-object v4, p1, Lcom/gamesys/android/billing/google/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 675
    new-instance v4, Lcom/gamesys/android/billing/google/util/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Items of type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/gamesys/android/billing/google/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 679
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 682
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

    invoke-virtual {p0, v4}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 683
    new-instance v4, Lcom/gamesys/android/billing/google/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/gamesys/android/billing/google/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 686
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

    invoke-virtual {p0, v4}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 687
    iget-object v4, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 688
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 697
    return-void

    .line 691
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 692
    new-instance v4, Lcom/gamesys/android/billing/google/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/gamesys/android/billing/google/util/Purchase;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/gamesys/android/billing/google/util/Purchase;
    .param p2, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 735
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->CONSUME:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->checkSetupDone(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/gamesys/android/billing/google/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 739
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gamesys/android/billing/google/util/Purchase;",
            ">;",
            "Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 748
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/gamesys/android/billing/google/util/Purchase;>;"
    sget-object v0, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->CONSUME:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->checkSetupDone(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/gamesys/android/billing/google/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 750
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 5
    .param p2, "singleListener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gamesys/android/billing/google/util/Purchase;",
            ">;",
            "Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 996
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/gamesys/android/billing/google/util/Purchase;>;"
    new-instance v1, Lcom/gamesys/android/billing/google/util/IabHelper$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gamesys/android/billing/google/util/IabHelper$3;-><init>(Lcom/gamesys/android/billing/google/util/IabHelper;Ljava/util/List;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 1032
    .local v1, "task":Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;
    new-instance v0, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 1033
    const-string v4, "Consuming items"

    .line 1032
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;)V

    .line 1034
    .local v0, "futureTask":Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;
    invoke-static {v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->submitWorker(Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;)Ljava/util/concurrent/Future;

    .line 1035
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSetupDone:Z

    .line 305
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 306
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 310
    :cond_0
    iput-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 311
    iput-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 312
    iput-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 314
    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugLog:Z

    .line 200
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugLog:Z

    .line 195
    iput-object p2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 196
    return-void
.end method

.method flagEndAsync(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V
    .locals 3
    .param p1, "operationToEnd"    # Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    .prologue
    const/4 v2, 0x0

    .line 854
    invoke-static {}, Lcom/gamesys/android/billing/google/util/IabHelper;->$SWITCH_TABLE$com$gamesys$android$billing$google$util$IabHelper$HelperOperation()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 864
    :pswitch_0
    const-string v0, "No async operation in progress"

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 867
    :goto_0
    return-void

    .line 856
    :pswitch_1
    iput-boolean v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mAsyncPurchaseInProgress:Z

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :pswitch_2
    iput-boolean v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mAsyncQueryInProgress:Z

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method flagStartAsync(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V
    .locals 3
    .param p1, "operation"    # Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    .prologue
    const/4 v2, 0x1

    .line 831
    invoke-static {}, Lcom/gamesys/android/billing/google/util/IabHelper;->$SWITCH_TABLE$com$gamesys$android$billing$google$util$IabHelper$HelperOperation()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 850
    :goto_0
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 851
    return-void

    .line 833
    :pswitch_1
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mAsyncPurchaseInProgress:Z

    if-eqz v0, :cond_0

    .line 834
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 835
    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_0
    iput-boolean v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mAsyncPurchaseInProgress:Z

    goto :goto_0

    .line 840
    :pswitch_2
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mAsyncQueryInProgress:Z

    if-eqz v0, :cond_1

    .line 841
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 842
    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    iput-boolean v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mAsyncQueryInProgress:Z

    goto :goto_0

    .line 831
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 797
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 798
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 799
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 800
    const/4 v1, 0x0

    .line 804
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 801
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 802
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 803
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 804
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 806
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 808
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
    .line 815
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 816
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 817
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 818
    const/4 v1, 0x0

    .line 822
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 819
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 820
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 821
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 822
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 824
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 826
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
    .line 454
    sget-object v8, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->PURCHASE_ITEM:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->flagEndAsync(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V

    .line 456
    iget v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    .line 457
    const/4 v8, 0x0

    .line 540
    :goto_0
    return v8

    .line 460
    :cond_0
    sget-object v8, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->ACTIVITY_RESULT:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->checkSetupDone(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V

    .line 462
    if-nez p3, :cond_2

    .line 463
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 464
    new-instance v6, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 465
    .local v6, "result":Lcom/gamesys/android/billing/google/util/IabResult;
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    .line 466
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 468
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 471
    .end local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 472
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 476
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 477
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Data signature: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 479
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expected item type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 482
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 483
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 484
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

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 485
    new-instance v6, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 486
    .restart local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    .line 487
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 489
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 492
    .end local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 494
    .local v2, "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/gamesys/android/billing/google/util/Purchase;

    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/gamesys/android/billing/google/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v2    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    .local v3, "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/gamesys/android/billing/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 498
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/gamesys/android/billing/google/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 499
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 500
    new-instance v6, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Signature verification failed for sku "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 501
    .restart local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    .line 502
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 504
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 506
    .end local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 518
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/gamesys/android/billing/google/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 540
    .end local v3    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 507
    .restart local v2    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 510
    new-instance v6, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 511
    .restart local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    .line 512
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 514
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 520
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    .end local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 522
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 523
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 524
    new-instance v6, Lcom/gamesys/android/billing/google/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 525
    .restart local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    goto :goto_1

    .line 527
    .end local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 528
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase canceled - Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 529
    new-instance v6, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 530
    .restart local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 531
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    goto :goto_1

    .line 534
    .end local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase failed. Result code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 535
    new-instance v6, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 536
    .restart local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 537
    iget-object v8, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    goto/16 :goto_1

    .line 507
    .end local v6    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    .restart local v3    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    .restart local v2    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    goto/16 :goto_2
.end method

.method public isDebugLoggingEnabled()Z
    .locals 1

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugLog:Z

    return v0
.end method

.method public isSetup()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSetupDone:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 341
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gamesys/android/billing/google/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gamesys/android/billing/google/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 377
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->PURCHASE_ITEM:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->checkSetupDone(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V

    .line 381
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 383
    new-instance v11, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 384
    .local v11, "r":Lcom/gamesys/android/billing/google/util/IabResult;
    if-eqz p5, :cond_0

    .line 385
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 431
    .end local v11    # "r":Lcom/gamesys/android/billing/google/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 393
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 394
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 398
    new-instance v13, Lcom/gamesys/android/billing/google/util/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 399
    .local v13, "result":Lcom/gamesys/android/billing/google/util/IabResult;
    if-eqz p5, :cond_0

    .line 400
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 412
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    :catch_0
    move-exception v9

    .line 413
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 416
    new-instance v13, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 418
    .restart local v13    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    if-eqz p5, :cond_0

    .line 419
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    goto/16 :goto_0

    .line 405
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 406
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 407
    move/from16 v0, p4

    iput v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mRequestCode:I

    .line 408
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchaseListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 409
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 410
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 411
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 410
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 421
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 422
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 425
    new-instance v13, Lcom/gamesys/android/billing/google/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 427
    .restart local v13    # "result":Lcom/gamesys/android/billing/google/util/IabResult;
    if-eqz p5, :cond_0

    .line 428
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/gamesys/android/billing/google/util/IabResult;Lcom/gamesys/android/billing/google/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 352
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gamesys/android/billing/google/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 358
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gamesys/android/billing/google/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/gamesys/android/billing/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-void
.end method

.method public queryInventory(ZLjava/util/Set;)Lcom/gamesys/android/billing/google/util/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gamesys/android/billing/google/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gamesys/android/billing/google/util/IabException;
        }
    .end annotation

    .prologue
    .line 544
    .local p2, "moreSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gamesys/android/billing/google/util/IabHelper;->queryInventory(ZLjava/util/Set;Ljava/util/Set;)Lcom/gamesys/android/billing/google/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/Set;Ljava/util/Set;)Lcom/gamesys/android/billing/google/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gamesys/android/billing/google/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gamesys/android/billing/google/util/IabException;
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "moreItemSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v3, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->QUERY_INVENTORY:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {p0, v3}, Lcom/gamesys/android/billing/google/util/IabHelper;->checkSetupDone(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V

    .line 559
    :try_start_0
    new-instance v1, Lcom/gamesys/android/billing/google/util/Inventory;

    invoke-direct {v1}, Lcom/gamesys/android/billing/google/util/Inventory;-><init>()V

    .line 560
    .local v1, "inv":Lcom/gamesys/android/billing/google/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/gamesys/android/billing/google/util/IabHelper;->queryPurchases(Lcom/gamesys/android/billing/google/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 561
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 562
    new-instance v3, Lcom/gamesys/android/billing/google/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    .end local v1    # "inv":Lcom/gamesys/android/billing/google/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/gamesys/android/billing/google/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 565
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/gamesys/android/billing/google/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 566
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/gamesys/android/billing/google/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/gamesys/android/billing/google/util/Inventory;Ljava/util/Set;)I

    move-result v2

    .line 567
    if-eqz v2, :cond_1

    .line 568
    new-instance v3, Lcom/gamesys/android/billing/google/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    .end local v1    # "inv":Lcom/gamesys/android/billing/google/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 591
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/gamesys/android/billing/google/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 573
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/gamesys/android/billing/google/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 574
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/gamesys/android/billing/google/util/IabHelper;->queryPurchases(Lcom/gamesys/android/billing/google/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 575
    if-eqz v2, :cond_2

    .line 576
    new-instance v3, Lcom/gamesys/android/billing/google/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 579
    :cond_2
    if-eqz p1, :cond_3

    .line 580
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p3}, Lcom/gamesys/android/billing/google/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/gamesys/android/billing/google/util/Inventory;Ljava/util/Set;)I

    move-result v2

    .line 581
    if-eqz v2, :cond_3

    .line 582
    new-instance v3, Lcom/gamesys/android/billing/google/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/gamesys/android/billing/google/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 587
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 657
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/gamesys/android/billing/google/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 658
    return-void
.end method

.method public queryInventoryAsync(ZLcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/gamesys/android/billing/google/util/IabHelper;->queryInventoryAsync(ZLjava/util/Set;Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 662
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/Set;Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 5
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "moreSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 618
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;->QUERY_INVENTORY:Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->checkSetupDone(Lcom/gamesys/android/billing/google/util/IabHelper$HelperOperation;)V

    .line 620
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    if-eqz v1, :cond_0

    .line 621
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    invoke-virtual {v1, v2}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->cancel(Z)Z

    .line 624
    :cond_0
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 625
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 628
    :cond_1
    new-instance v0, Lcom/gamesys/android/billing/google/util/IabHelper$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gamesys/android/billing/google/util/IabHelper$2;-><init>(Lcom/gamesys/android/billing/google/util/IabHelper;ZLjava/util/Set;Lcom/gamesys/android/billing/google/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 652
    .local v0, "task":Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;
    new-instance v1, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mDebugTag:Ljava/lang/String;

    const-string v4, "Query Play Inventory"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;)V

    sput-object v1, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    .line 653
    sget-object v1, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    invoke-static {v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->submitWorker(Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;)Ljava/util/concurrent/Future;

    move-result-object v1

    sput-object v1, Lcom/gamesys/android/billing/google/util/IabHelper;->lastQueryStoreFuture:Ljava/util/concurrent/Future;

    .line 654
    return-void
.end method

.method queryPurchases(Lcom/gamesys/android/billing/google/util/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/gamesys/android/billing/google/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 880
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Querying owned items, item type: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 881
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Package name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 882
    const/4 v12, 0x0

    .line 883
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 886
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gamesys/android/billing/google/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 889
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 890
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Owned items response: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 891
    if-eqz v8, :cond_1

    .line 892
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getPurchases() failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 933
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 895
    .restart local v8    # "response":I
    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 896
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 897
    :cond_2
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 898
    const/16 v8, -0x3ea

    goto :goto_0

    .line 901
    :cond_3
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 902
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 903
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 906
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_4

    .line 929
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 930
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 931
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 933
    if-eqz v12, :cond_7

    const/16 v13, -0x3eb

    :goto_2
    move v8, v13

    goto :goto_0

    .line 907
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 908
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 909
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 910
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/gamesys/android/billing/google/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 911
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Sku is owned: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 912
    new-instance v5, Lcom/gamesys/android/billing/google/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/gamesys/android/billing/google/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    .local v5, "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    invoke-virtual {v5}, Lcom/gamesys/android/billing/google/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 915
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 916
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 920
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/gamesys/android/billing/google/util/Inventory;->addPurchaseDetails(Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 906
    .end local v5    # "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 922
    :cond_6
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 923
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 924
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Signature: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 925
    const/4 v12, 0x1

    goto :goto_3

    .line 933
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/gamesys/android/billing/google/util/Inventory;Ljava/util/Set;)I
    .locals 10
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/gamesys/android/billing/google/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gamesys/android/billing/google/util/Inventory;",
            "Ljava/util/Set",
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
    .local p3, "moreSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 947
    const-string v7, "Querying SKU details."

    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 948
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v5, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/gamesys/android/billing/google/util/Inventory;->getAllOwnedItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 952
    if-eqz p3, :cond_0

    .line 953
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 956
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 957
    const-string v7, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 984
    :cond_1
    :goto_0
    return v2

    .line 962
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 963
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v7, "ITEM_ID_LIST"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 964
    iget-object v7, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 966
    .local v4, "skuDetails":Landroid/os/Bundle;
    const-string v7, "DETAILS_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 967
    invoke-virtual {p0, v4}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 968
    .local v2, "response":I
    if-eqz v2, :cond_3

    .line 969
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSkuDetails() failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gamesys/android/billing/google/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :cond_3
    const-string v7, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v7}, Lcom/gamesys/android/billing/google/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 973
    const/16 v2, -0x3ea

    goto :goto_0

    .line 977
    .end local v2    # "response":I
    :cond_4
    const-string v7, "DETAILS_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 979
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 980
    .local v6, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/gamesys/android/billing/google/util/SkuDetails;

    invoke-direct {v0, p1, v6}, Lcom/gamesys/android/billing/google/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    .local v0, "d":Lcom/gamesys/android/billing/google/util/SkuDetails;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got sku details: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2, v0}, Lcom/gamesys/android/billing/google/util/Inventory;->addSkuDetails(Lcom/gamesys/android/billing/google/util/SkuDetails;)V

    goto :goto_1
.end method

.method public startSetup(Lcom/gamesys/android/billing/google/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/gamesys/android/billing/google/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 223
    iget-boolean v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/gamesys/android/billing/google/util/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/gamesys/android/billing/google/util/IabHelper$1;-><init>(Lcom/gamesys/android/billing/google/util/IabHelper;Lcom/gamesys/android/billing/google/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    if-eqz p1, :cond_1

    .line 293
    new-instance v1, Lcom/gamesys/android/billing/google/util/IabResult;

    const/4 v2, 0x3

    const-string v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/gamesys/android/billing/google/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/gamesys/android/billing/google/util/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
