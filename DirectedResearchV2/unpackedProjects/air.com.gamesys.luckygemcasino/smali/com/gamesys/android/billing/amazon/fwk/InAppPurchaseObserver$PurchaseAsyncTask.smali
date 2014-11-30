.class Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "InAppPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/PurchaseResponse;",
        "Ljava/lang/Void;",
        "Lcom/amazon/inapp/purchasing/Receipt;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus()[I
    .locals 3

    .prologue
    .line 334
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->values()[Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ALREADY_ENTITLED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I

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

.method private constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)V

    return-void
.end method

.method static synthetic access$4(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;)Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/PurchaseResponse;)Lcom/amazon/inapp/purchasing/Receipt;
    .locals 7
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    const/4 v6, 0x0

    .line 338
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "PurchaseAsyncTask"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 340
    aget-object v1, p1, v6

    .line 341
    .local v1, "purchaseResponse":Lcom/amazon/inapp/purchasing/PurchaseResponse;
    iget-object v3, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getCurrentAmazonUser()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "userId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->setCurrentAmazonUser(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/util/HashMap;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000

    invoke-direct {v0, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 349
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "com.gamesys.android.billing.amazon.ane.offset"

    .line 350
    iget-object v4, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->interfaceActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$3(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v5}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getCurrentAmazonUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 351
    const-string v5, "com.gamesys.android.billing.amazon.ane.offset"

    sget-object v6, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    invoke-virtual {v6}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v3, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->interfaceActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$3(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask$1;

    invoke-direct {v4, p0, v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask$1;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 363
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 395
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 368
    :pswitch_0
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v3

    goto :goto_1

    .line 373
    :pswitch_1
    iget-object v3, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v3

    const-string v4, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_ALREADY_OWNED"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The item is already owned by the current user - request "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v3, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v3

    const-string v4, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR_USER_CANCEL"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed purchase for request "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :pswitch_3
    iget-object v3, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v3

    const-string v4, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR"

    const-string v5, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v3, v4, v5}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid Sku for request "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/PurchaseResponse;)Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/amazon/inapp/purchasing/Receipt;)V
    .locals 4
    .param p1, "receipt"    # Lcom/amazon/inapp/purchasing/Receipt;

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 401
    if-eqz p1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getPayload(Ljava/lang/String;)Lcom/gamesys/android/billing/common/fwk/BuyableItem;

    move-result-object v0

    .line 403
    .local v0, "item":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    if-nez v0, :cond_0

    .line 404
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 405
    const-string v3, " not found. Initialization must have failed. It might be impossible to check receipts for this item"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->thirdPartyId:Ljava/lang/String;

    :goto_0
    # invokes: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->verifySignatures(Lcom/amazon/inapp/purchasing/Receipt;ZLjava/lang/String;)V
    invoke-static {v2, p1, v3, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$4(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/amazon/inapp/purchasing/Receipt;ZLjava/lang/String;)V

    .line 412
    .end local v0    # "item":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    :goto_1
    return-void

    .line 407
    .restart local v0    # "item":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 409
    .end local v0    # "item":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    :cond_2
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$2(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Z)V

    .line 410
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->notifyActionDone()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/amazon/inapp/purchasing/Receipt;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseAsyncTask;->onPostExecute(Lcom/amazon/inapp/purchasing/Receipt;)V

    return-void
.end method
