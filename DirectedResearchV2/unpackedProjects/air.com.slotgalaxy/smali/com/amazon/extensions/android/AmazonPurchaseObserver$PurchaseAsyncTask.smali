.class Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "AmazonPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/extensions/android/AmazonPurchaseObserver;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus()[I
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I

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
    sput-object v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I

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

.method private constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/PurchaseResponse;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "Amazon-IAP"

    .line 216
    aget-object v0, p1, v7

    .line 217
    .local v0, "purchaseResponse":Lcom/amazon/inapp/purchasing/PurchaseResponse;
    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->getCurrentUser()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "userId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->setCurrentUser(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->flashActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$1(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v5}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->getCurrentUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 223
    const-string v5, "offset"

    sget-object v6, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    invoke-virtual {v6}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v4}, Lcom/amazon/inapp/purchasing/Offset;->fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    .line 226
    :cond_0
    invoke-static {}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus()[I

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 264
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    return-object v4

    .line 231
    :pswitch_0
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v1

    .line 233
    .local v1, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v5

    # invokes: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->printReceipt(Lcom/amazon/inapp/purchasing/Receipt;)V
    invoke-static {v4, v5}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$2(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/inapp/purchasing/Receipt;)V

    .line 234
    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onPurchaseSuccess(Lcom/amazon/inapp/purchasing/Receipt;)V

    .line 235
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 242
    .end local v1    # "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    :pswitch_1
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "requestId":Ljava/lang/String;
    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onPurchaseAlreadyEntitled(Ljava/lang/String;)V

    .line 245
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 251
    .end local v2    # "requestId":Ljava/lang/String;
    :pswitch_2
    const-string v4, "Amazon-IAP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "Failed purchase for request"

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v4

    iget-object v4, v4, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->requestIds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onPurchaseFailed(Ljava/lang/String;)V

    .line 253
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 260
    :pswitch_3
    const-string v4, "Amazon-IAP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "Invalid Sku for request "

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v4

    iget-object v4, v4, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->requestIds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v4, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v4}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onPurchaseInvalidSku(Ljava/lang/String;)V

    .line 262
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 226
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

    invoke-virtual {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/PurchaseResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v0}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->update()V

    .line 273
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
