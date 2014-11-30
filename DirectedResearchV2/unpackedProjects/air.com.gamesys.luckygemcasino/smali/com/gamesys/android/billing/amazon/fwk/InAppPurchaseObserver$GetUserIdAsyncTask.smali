.class Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;
.super Landroid/os/AsyncTask;
.source "InAppPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUserIdAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/GetUserIdResponse;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;


# direct methods
.method private constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;-><init>(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/GetUserIdResponse;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "GetUserIdAsyncTask"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 221
    aget-object v0, p1, v4

    .line 223
    .local v0, "getUserIdResponse":Lcom/amazon/inapp/purchasing/GetUserIdResponse;
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v2

    sget-object v3, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v2, v3, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v2}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->setCurrentAmazonUser(Ljava/lang/String;)V

    .line 228
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 231
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 230
    :cond_0
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onGetUserIdResponse: Unable to get user ID."

    invoke-static {v2, v3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/GetUserIdResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$2(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;Z)V

    .line 245
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->interfaceActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$3(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->getCurrentAmazonUser()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    const-string v1, "com.gamesys.android.billing.amazon.ane.offset"

    sget-object v2, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/Offset;->fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;

    # getter for: Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->asContext:Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;
    invoke-static {v0}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;->access$0(Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver;)Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;

    move-result-object v0

    const-string v1, "com.gamesys.android.billing.common.ane.CODE_SETUP_RESULT_ERROR"

    const-string v2, "com.gamesys.android.billing.common.ane.LEVEL_SETUP"

    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/billing/amazon/ane/InAppPurchaseContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/amazon/fwk/InAppPurchaseObserver$GetUserIdAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
