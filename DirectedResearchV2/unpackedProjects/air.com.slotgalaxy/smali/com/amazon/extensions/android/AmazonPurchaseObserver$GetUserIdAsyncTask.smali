.class Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;
.super Landroid/os/AsyncTask;
.source "AmazonPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/extensions/android/AmazonPurchaseObserver;
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
.field final synthetic this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;


# direct methods
.method private constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/GetUserIdResponse;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    const/4 v4, 0x0

    .line 142
    aget-object v0, p1, v4

    .line 144
    .local v0, "getUserIdResponse":Lcom/amazon/inapp/purchasing/GetUserIdResponse;
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v2

    sget-object v3, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v2, v3, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v2}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->setCurrentUser(Ljava/lang/String;)V

    .line 149
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 152
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 151
    :cond_0
    const-string v2, "Amazon-IAP"

    const-string v3, "onGetUserIdResponse: Unable to get user ID."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/GetUserIdResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->flashActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$1(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    const-string v1, "offset"

    sget-object v2, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Offset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/Offset;->fromString(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    .line 167
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$GetUserIdAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
