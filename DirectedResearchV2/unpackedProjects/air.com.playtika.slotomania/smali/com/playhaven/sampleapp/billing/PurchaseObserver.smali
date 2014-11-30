.class public abstract Lcom/playhaven/sampleapp/billing/PurchaseObserver;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class;

.field private static final TAG:Ljava/lang/String; = "PurchaseObserver"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mShouldShowMarket:Z

.field private mStartIntentSender:Ljava/lang/reflect/Method;

.field private mStartIntentSenderArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 37
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

    .line 36
    sput-object v0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mHandler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mShouldShowMarket:Z

    .line 44
    invoke-direct {p0}, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->initCompatibilityLayer()V

    .line 45
    return-void
.end method

.method private initCompatibilityLayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startIntentSender"

    .line 109
    sget-object v3, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    .line 108
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, "e":Ljava/lang/SecurityException;
    iput-object v4, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iput-object v4, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method protected getShouldShowMarket()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mShouldShowMarket:Z

    return v0
.end method

.method public abstract onBillingSupported(ZLjava/lang/String;)V
.end method

.method public abstract onPurchaseStateChange(Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lcom/playhaven/sampleapp/billing/BillingService$RequestPurchase;Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;)V
.end method

.method public abstract onRestoreTransactionsResponse(Lcom/playhaven/sampleapp/billing/BillingService$RestoreTransactions;Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;)V
.end method

.method postPurchaseStateChange(Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 9
    .param p1, "purchaseState"    # Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v8, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/playhaven/sampleapp/billing/PurchaseObserver$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/playhaven/sampleapp/billing/PurchaseObserver$1;-><init>(Lcom/playhaven/sampleapp/billing/PurchaseObserver;Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method protected setShouldShowMarket(Z)V
    .locals 0
    .param p1, "shouldShowMarket"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mShouldShowMarket:Z

    .line 123
    return-void
.end method

.method protected startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 6
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v5, "error starting activity"

    const-string v4, "PurchaseObserver"

    .line 126
    invoke-virtual {p0}, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->getShouldShowMarket()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    aput-object v3, v1, v2

    .line 136
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 137
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 138
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 139
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 140
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PurchaseObserver"

    const-string v1, "error starting activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseObserver;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "PurchaseObserver"

    const-string v1, "error starting activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
