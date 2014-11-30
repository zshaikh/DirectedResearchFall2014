.class Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;
.super Lcom/playtika/nativecode/payments/PurchaseObserver;
.source "PaymentsExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/payments/PaymentsExtensionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentExtensionPurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/payments/PaymentsExtensionContext;


# direct methods
.method public constructor <init>(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    .line 218
    invoke-direct {p0, p2, p3}, Lcom/playtika/nativecode/payments/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 234
    return-void
.end method

.method public onPurchaseStateChange(Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "purchaseState"    # Lcom/playtika/nativecode/payments/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "notificationId"    # Ljava/lang/String;
    .param p5, "quantity"    # I
    .param p6, "purchaseTime"    # J
    .param p8, "developerPayload"    # Ljava/lang/String;
    .param p9, "signedData"    # Ljava/lang/String;
    .param p10, "signature"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseStateChange() itemId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lcom/playtika/nativecode/payments/Consts$PurchaseState;->PURCHASED:Lcom/playtika/nativecode/payments/Consts$PurchaseState;

    if-ne p1, v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    # invokes: Lcom/playtika/extensions/payments/PaymentsExtensionContext;->trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->access$0(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    const-string v1, "PURCHASED"

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    # invokes: Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->access$1(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    sget-object v0, Lcom/playtika/nativecode/payments/Consts$PurchaseState;->CANCELED:Lcom/playtika/nativecode/payments/Consts$PurchaseState;

    if-ne p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    const-string v1, "ERROR"

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object/from16 v5, p8

    # invokes: Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->access$2(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPurchaseResponse(Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V
    .locals 7
    .param p1, "request"    # Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    .prologue
    const-string v2, ""

    .line 267
    sget-object v0, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->RESULT_OK:Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 274
    :cond_0
    sget-object v0, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    const-string v1, "CANCELED"

    const-string v3, ""

    const-string v3, ""

    iget-object v4, p1, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    iget-object v5, p1, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    move-object v3, v2

    # invokes: Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->access$2(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/playtika/extensions/payments/PaymentsExtensionContext$PaymentExtensionPurchaseObserver;->this$0:Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    const-string v1, "ERROR"

    .line 290
    const-string v3, ""

    const-string v3, ""

    iget-object v4, p1, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    iget-object v5, p1, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v2

    .line 289
    # invokes: Lcom/playtika/extensions/payments/PaymentsExtensionContext;->pushEventToAS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->access$3(Lcom/playtika/extensions/payments/PaymentsExtensionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V
    .locals 1
    .param p1, "request"    # Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    .prologue
    .line 300
    sget-object v0, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->RESULT_OK:Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 314
    :cond_0
    return-void
.end method
