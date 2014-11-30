.class public abstract Lcom/playtika/nativecode/payments/PurchaseObserver;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class;

.field private static final TAG:Ljava/lang/String; = "PurchaseObserver"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mStartIntentSender:Ljava/lang/reflect/Method;

.field private mStartIntentSenderArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 36
    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 35
    sput-object v0, Lcom/playtika/nativecode/payments/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mActivity:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mHandler:Landroid/os/Handler;

    .line 42
    invoke-direct {p0}, Lcom/playtika/nativecode/payments/PurchaseObserver;->initCompatibilityLayer()V

    .line 43
    return-void
.end method

.method private initCompatibilityLayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startIntentSender"

    .line 108
    sget-object v3, Lcom/playtika/nativecode/payments/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    .line 107
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 110
    .local v0, "e":Ljava/lang/SecurityException;
    iput-object v4, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iput-object v4, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public abstract onBillingSupported(Z)V
.end method

.method public abstract onPurchaseStateChange(Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V
.end method

.method public abstract onRestoreTransactionsResponse(Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V
.end method

.method postPurchaseStateChange(Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
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
    .line 156
    iget-object v12, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/playtika/nativecode/payments/PurchaseObserver$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/playtika/nativecode/payments/PurchaseObserver$1;-><init>(Lcom/playtika/nativecode/payments/PurchaseObserver;Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v5, "error starting activity"

    const-string v4, "PurchaseObserver"

    .line 117
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    aput-object v3, v1, v2

    .line 125
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 126
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 127
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 128
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 129
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PurchaseObserver"

    const-string v1, "error starting activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/playtika/nativecode/payments/PurchaseObserver;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 140
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "PurchaseObserver"

    const-string v1, "error starting activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
