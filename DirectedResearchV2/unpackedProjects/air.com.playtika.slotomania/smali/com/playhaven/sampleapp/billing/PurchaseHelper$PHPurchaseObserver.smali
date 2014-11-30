.class Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;
.super Lcom/playhaven/sampleapp/billing/PurchaseObserver;
.source "PurchaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/sampleapp/billing/PurchaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PHPurchaseObserver"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$playhaven$sampleapp$billing$Consts$PurchaseState:[I


# instance fields
.field final synthetic this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;


# direct methods
.method static synthetic $SWITCH_TABLE$com$playhaven$sampleapp$billing$Consts$PurchaseState()[I
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->$SWITCH_TABLE$com$playhaven$sampleapp$billing$Consts$PurchaseState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->values()[Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->CANCELED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    invoke-virtual {v1}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->PURCHASED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    invoke-virtual {v1}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->REFUNDED:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    invoke-virtual {v1}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->$SWITCH_TABLE$com$playhaven$sampleapp$billing$Consts$PurchaseState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/playhaven/sampleapp/billing/PurchaseHelper;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/playhaven/sampleapp/billing/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onBillingSupported(ZLjava/lang/String;)V
    .locals 2
    .param p1, "supported"    # Z
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onPurchaseStateChange(Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 5
    .param p1, "purchaseState"    # Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Purchase: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->context:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$0(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->purchases:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$1(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->context:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$0(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->purchases:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$1(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->purchases:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$1(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPurchase;

    .line 95
    .local v0, "purchase":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 97
    .local v1, "res":Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    invoke-static {}, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->$SWITCH_TABLE$com$playhaven$sampleapp$billing$Consts$PurchaseState()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 108
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reporting purchase resolution: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->context:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$0(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/playhaven/src/publishersdk/content/PHPurchase;->reportResolution(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;Landroid/app/Activity;)V

    .line 112
    iget-object v3, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    new-instance v4, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->context:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$0(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v4, v2, v0}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;-><init>(Landroid/content/Context;Lcom/playhaven/src/publishersdk/content/PHPurchase;)V

    invoke-static {v3, v4}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$2(Lcom/playhaven/sampleapp/billing/PurchaseHelper;Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;)V

    .line 114
    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->trackingRequest:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
    invoke-static {v2}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$3(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    move-result-object v2

    new-instance v3, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver$1;

    invoke-direct {v3, p0}, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver$1;-><init>(Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;)V

    invoke-virtual {v2, v3}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 128
    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->this$0:Lcom/playhaven/sampleapp/billing/PurchaseHelper;

    # getter for: Lcom/playhaven/sampleapp/billing/PurchaseHelper;->trackingRequest:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
    invoke-static {v2}, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->access$3(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->send()V

    .line 132
    .end local v0    # "purchase":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    .end local v1    # "res":Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    :cond_0
    return-void

    .line 99
    .restart local v0    # "purchase":Lcom/playhaven/src/publishersdk/content/PHPurchase;
    .restart local v1    # "res":Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    :pswitch_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 100
    goto :goto_0

    .line 102
    :pswitch_1
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 103
    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRequestPurchaseResponse(Lcom/playhaven/sampleapp/billing/BillingService$RequestPurchase;Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;)V
    .locals 2
    .param p1, "request"    # Lcom/playhaven/sampleapp/billing/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/playhaven/sampleapp/billing/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onRestoreTransactionsResponse(Lcom/playhaven/sampleapp/billing/BillingService$RestoreTransactions;Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;)V
    .locals 2
    .param p1, "request"    # Lcom/playhaven/sampleapp/billing/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restored Transaction with result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 146
    return-void
.end method
