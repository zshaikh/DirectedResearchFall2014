.class public Lcom/playtika/nativecode/payments/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/playtika/nativecode/payments/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .param p0, "supported"    # Z

    .prologue
    .line 59
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    invoke-virtual {v0, p0}, Lcom/playtika/nativecode/payments/PurchaseObserver;->onBillingSupported(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseState"    # Lcom/playtika/nativecode/payments/Consts$PurchaseState;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "notificationId"    # Ljava/lang/String;
    .param p5, "purchaseTime"    # J
    .param p7, "developerPayload"    # Ljava/lang/String;
    .param p8, "signedData"    # Ljava/lang/String;
    .param p9, "signature"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object p0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    .end local p0    # "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 109
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    .line 110
    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 109
    invoke-virtual/range {v0 .. v10}, Lcom/playtika/nativecode/payments/PurchaseObserver;->postPurchaseStateChange(Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public static declared-synchronized register(Lcom/playtika/nativecode/payments/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/playtika/nativecode/payments/PurchaseObserver;

    .prologue
    .line 41
    const-class v0, Lcom/playtika/nativecode/payments/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    .prologue
    .line 130
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/playtika/nativecode/payments/PurchaseObserver;->onRequestPurchaseResponse(Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    .prologue
    .line 146
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/playtika/nativecode/payments/PurchaseObserver;->onRestoreTransactionsResponse(Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V

    .line 149
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/playtika/nativecode/payments/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/playtika/nativecode/payments/PurchaseObserver;

    .prologue
    .line 49
    const-class v0, Lcom/playtika/nativecode/payments/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/playtika/nativecode/payments/ResponseHandler;->sPurchaseObserver:Lcom/playtika/nativecode/payments/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
