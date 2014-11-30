.class Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;
.super Landroid/os/AsyncTask;
.source "InAppPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseUpdatesAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;",
        "Ljava/lang/Void;",
        "Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus()[I
    .locals 3

    .prologue
    .line 418
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->values()[Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    .locals 12
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    const-string v9, "PurchaseUpdatesAsyncTask"

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 424
    aget-object v2, p1, v10

    .line 425
    .local v2, "purchaseUpdatesResponse":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    iget-object v8, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # invokes: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;
    invoke-static {v8}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$5(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v8}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getCurrentAmazonUser()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "userId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 429
    iget-object v8, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->fromGetUserId:Z
    invoke-static {v8}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$6(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 430
    iget-object v8, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v8}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->notifyActionDone()V

    :goto_0
    move-object v2, v7

    .line 474
    .end local v2    # "purchaseUpdatesResponse":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    :cond_0
    :goto_1
    return-object v2

    .line 432
    .restart local v2    # "purchaseUpdatesResponse":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    :cond_1
    iget-object v8, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-static {v8, v10}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$2(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Z)V

    goto :goto_0

    .line 440
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRevokedSkus()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, "revoked":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 448
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 450
    :cond_3
    if-eqz v3, :cond_4

    .line 451
    iget-object v8, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v8}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v8

    const-string v9, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_STORE_ERROR_REVOKED_ITEM"

    invoke-virtual {v8, v3, v9}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_4
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus()[I

    move-result-object v8

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :goto_3
    move-object v2, v7

    .line 474
    goto :goto_1

    .line 441
    .end local v3    # "revoked":Ljava/lang/String;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 442
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Revoked SKU:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 461
    .end local v4    # "s":Ljava/lang/String;
    .restart local v3    # "revoked":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getOffset()Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v1

    .line 462
    .local v1, "newOffset":Lcom/amazon/inapp/purchasing/Offset;
    const-string v7, "com.gamesys.android.billing.amazon.ane.offset"

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 464
    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->isMore()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 465
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Initiating Another Purchase Updates with offset: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    goto/16 :goto_1

    .line 470
    .end local v1    # "newOffset":Lcom/amazon/inapp/purchasing/Offset;
    :pswitch_1
    iget-object v8, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v8}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v8

    const-string v9, "com.gamesys.android.billing.common.ane.CODE_BUY_ITEM_ERROR"

    const-string v10, "com.gamesys.android.billing.common.ane.LEVEL_BUY_ITEM"

    invoke-virtual {v8, v9, v10}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 6
    .param p1, "pur"    # Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    const/4 v5, 0x0

    .line 479
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 480
    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getReceipts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->fromGetUserId:Z
    invoke-static {v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$6(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 486
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->notifyActionDone()V

    .line 490
    :goto_1
    return-void

    .line 481
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/Receipt;

    .line 482
    .local v0, "r":Lcom/amazon/inapp/purchasing/Receipt;
    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    iget-object v3, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getPayload(Ljava/lang/String;)Lcom/gamesys/android/billing/common/fwk/BuyableItem;

    move-result-object v3

    iget-object v3, v3, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->thirdPartyId:Ljava/lang/String;

    # invokes: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->verifySignatures(Lcom/amazon/inapp/purchasing/Receipt;ZLjava/lang/String;)V
    invoke-static {v2, v0, v5, v3}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$4(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/amazon/inapp/purchasing/Receipt;ZLjava/lang/String;)V

    goto :goto_0

    .line 488
    .end local v0    # "r":Lcom/amazon/inapp/purchasing/Receipt;
    :cond_2
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-static {v1, v5}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$2(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Z)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$PurchaseUpdatesAsyncTask;->onPostExecute(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V

    return-void
.end method
