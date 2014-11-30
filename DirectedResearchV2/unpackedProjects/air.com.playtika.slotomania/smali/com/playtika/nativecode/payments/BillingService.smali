.class public Lcom/playtika/nativecode/payments/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/nativecode/payments/BillingService$BillingRequest;,
        Lcom/playtika/nativecode/payments/BillingService$CheckBillingSupported;,
        Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;,
        Lcom/playtika/nativecode/payments/BillingService$GetPurchaseInformation;,
        Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;,
        Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/playtika/nativecode/payments/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/playtika/nativecode/payments/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/playtika/nativecode/payments/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    sput-object v0, Lcom/playtika/nativecode/payments/BillingService;->mSentRequests:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 352
    return-void
.end method

.method static synthetic access$0(Lcom/playtika/nativecode/payments/BillingService;)Z
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/playtika/nativecode/payments/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/playtika/nativecode/payments/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/playtika/nativecode/payments/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/playtika/nativecode/payments/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/vending/billing/IMarketBillingService;)V
    .locals 0

    .prologue
    .line 54
    sput-object p0, Lcom/playtika/nativecode/payments/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "BillingService"

    .line 413
    .line 414
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    const/4 v3, 0x1

    .line 413
    invoke-virtual {p0, v2, p0, v3}, Lcom/playtika/nativecode/payments/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 418
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    move v2, v4

    .line 426
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 421
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 424
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/playtika/nativecode/payments/Consts$ResponseCode;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    .prologue
    .line 539
    sget-object v1, Lcom/playtika/nativecode/payments/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;

    .line 540
    .local v0, "request":Lcom/playtika/nativecode/payments/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0, p3}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;->responseCodeReceived(Lcom/playtika/nativecode/payments/Consts$ResponseCode;)V

    .line 546
    :cond_0
    sget-object v1, Lcom/playtika/nativecode/payments/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    return-void
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 490
    new-instance v0, Lcom/playtika/nativecode/payments/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/playtika/nativecode/payments/BillingService$GetPurchaseInformation;-><init>(Lcom/playtika/nativecode/payments/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-static/range {p2 .. p3}, Lcom/playtika/nativecode/payments/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 504
    .local v11, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;>;"
    if-nez v11, :cond_1

    .line 524
    .end local v11    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;>;"
    :cond_0
    return-void

    .line 508
    .restart local v11    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;>;"
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v10, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;

    .line 510
    .local v12, "vp":Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;
    iget-object v0, v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_2
    iget-object v1, v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;->purchaseState:Lcom/playtika/nativecode/payments/Consts$PurchaseState;

    iget-object v2, v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 514
    iget-object v3, v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-object v4, v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    iget-wide v5, v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v7, v12, Lcom/playtika/nativecode/payments/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    move-object v8, p2

    move-object/from16 v9, p3

    .line 513
    invoke-static/range {v0 .. v9}, Lcom/playtika/nativecode/payments/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/playtika/nativecode/payments/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 554
    const/4 v0, -0x1

    .line 556
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/playtika/nativecode/payments/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;

    .local v1, "request":Lcom/playtika/nativecode/payments/BillingService$BillingRequest;
    if-nez v1, :cond_2

    .line 577
    if-ltz v0, :cond_1

    .line 581
    invoke-virtual {p0, v0}, Lcom/playtika/nativecode/payments/BillingService;->stopSelf(I)V

    .line 583
    :cond_1
    :goto_1
    return-void

    .line 557
    :cond_2
    invoke-virtual {v1}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    sget-object v2, Lcom/playtika/nativecode/payments/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 563
    invoke-virtual {v1}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 564
    invoke-virtual {v1}, Lcom/playtika/nativecode/payments/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 569
    :cond_3
    invoke-direct {p0}, Lcom/playtika/nativecode/payments/BillingService;->bindToMarketBillingService()Z

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcom/playtika/nativecode/payments/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/playtika/nativecode/payments/BillingService$CheckBillingSupported;-><init>(Lcom/playtika/nativecode/payments/BillingService;)V

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 473
    new-instance v0, Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;-><init>(Lcom/playtika/nativecode/payments/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const-string v10, "notification_id"

    .line 380
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "action":Ljava/lang/String;
    const-string v9, "com.playtika.ane.payments.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 385
    const-string v9, "notification_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "notifyIds":[Ljava/lang/String;
    invoke-virtual {p0, p2, v2}, Lcom/playtika/nativecode/payments/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 401
    .end local v2    # "notifyIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const-string v9, "com.playtika.ane.payments.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 388
    const-string v9, "notification_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "notifyId":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/playtika/nativecode/payments/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 390
    .end local v1    # "notifyId":Ljava/lang/String;
    :cond_2
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 391
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "signedData":Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, "signature":Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/playtika/nativecode/payments/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 395
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 396
    .local v3, "requestId":J
    const-string v9, "response_code"

    .line 397
    sget-object v10, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->RESULT_ERROR:Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    invoke-virtual {v10}, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->ordinal()I

    move-result v10

    .line 396
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 398
    .local v6, "responseCodeIndex":I
    invoke-static {v6}, Lcom/playtika/nativecode/payments/Consts$ResponseCode;->valueOf(I)Lcom/playtika/nativecode/payments/Consts$ResponseCode;

    move-result-object v5

    .line 399
    .local v5, "responseCode":Lcom/playtika/nativecode/payments/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/playtika/nativecode/payments/BillingService;->checkResponseCode(JLcom/playtika/nativecode/payments/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 593
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/playtika/nativecode/payments/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 594
    invoke-direct {p0}, Lcom/playtika/nativecode/payments/BillingService;->runPendingRequests()V

    .line 595
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 601
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    sput-object v0, Lcom/playtika/nativecode/payments/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 603
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 368
    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/playtika/nativecode/payments/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 371
    :cond_0
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 448
    new-instance v0, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;-><init>(Lcom/playtika/nativecode/payments/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;-><init>(Lcom/playtika/nativecode/payments/BillingService;)V

    invoke-virtual {v0}, Lcom/playtika/nativecode/payments/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/playtika/nativecode/payments/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 356
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 611
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/playtika/nativecode/payments/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    goto :goto_0
.end method
