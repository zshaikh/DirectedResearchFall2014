.class Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;
.super Landroid/os/AsyncTask;
.source "AmazonPurchaseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/extensions/android/AmazonPurchaseObserver;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus()[I
    .locals 3

    .prologue
    .line 280
    sget-object v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I

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
    sput-object v0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;-><init>(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    const/4 v4, 0x0

    .line 284
    aget-object v0, p1, v4

    .line 286
    .local v0, "purchaseUpdatesResponse":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    iget-object v2, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v2}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "userId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 303
    :goto_0
    return-object v2

    .line 292
    :cond_0
    invoke-static {}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 303
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 294
    :pswitch_0
    iget-object v2, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v2}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getReceipts()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRevokedSkus()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onPurchaseUpdate(Ljava/util/Set;Ljava/util/Set;)V

    .line 295
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v2, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v2}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->onPurchaseUpdateFailed()V

    .line 301
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 292
    nop

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

    invoke-virtual {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->this$0:Lcom/amazon/extensions/android/AmazonPurchaseObserver;

    # getter for: Lcom/amazon/extensions/android/AmazonPurchaseObserver;->extensionContext:Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;
    invoke-static {v0}, Lcom/amazon/extensions/android/AmazonPurchaseObserver;->access$0(Lcom/amazon/extensions/android/AmazonPurchaseObserver;)Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/extensions/android/AmazonPurchaseExtensionContext;->update()V

    .line 312
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/extensions/android/AmazonPurchaseObserver$PurchaseUpdatesAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
