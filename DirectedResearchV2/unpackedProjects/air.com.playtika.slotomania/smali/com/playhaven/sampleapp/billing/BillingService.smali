.class public Lcom/playhaven/sampleapp/billing/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;,
        Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;,
        Lcom/playhaven/sampleapp/billing/BillingService$ConfirmNotifications;,
        Lcom/playhaven/sampleapp/billing/BillingService$GetPurchaseInformation;,
        Lcom/playhaven/sampleapp/billing/BillingService$RequestPurchase;,
        Lcom/playhaven/sampleapp/billing/BillingService$RestoreTransactions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;",
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
            "Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/playhaven/sampleapp/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    sput-object v0, Lcom/playhaven/sampleapp/billing/BillingService;->mSentRequests:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 373
    return-void
.end method

.method static synthetic access$0(Lcom/playhaven/sampleapp/billing/BillingService;)Z
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/playhaven/sampleapp/billing/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/playhaven/sampleapp/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/playhaven/sampleapp/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/playhaven/sampleapp/billing/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/vending/billing/IMarketBillingService;)V
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lcom/playhaven/sampleapp/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "BillingService"

    .line 436
    .line 437
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    const/4 v3, 0x1

    .line 436
    invoke-virtual {p0, v2, p0, v3}, Lcom/playhaven/sampleapp/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 441
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    move v2, v4

    .line 449
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 444
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 447
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

.method private checkResponseCode(JLcom/playhaven/sampleapp/billing/Consts$ResponseCode;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;

    .prologue
    .line 563
    sget-object v1, Lcom/playhaven/sampleapp/billing/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;

    .line 564
    .local v0, "request":Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0, p3}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->responseCodeReceived(Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;)V

    .line 570
    :cond_0
    sget-object v1, Lcom/playhaven/sampleapp/billing/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 501
    new-instance v0, Lcom/playhaven/sampleapp/billing/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/playhaven/sampleapp/billing/BillingService$ConfirmNotifications;-><init>(Lcom/playhaven/sampleapp/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 518
    new-instance v0, Lcom/playhaven/sampleapp/billing/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/playhaven/sampleapp/billing/BillingService$GetPurchaseInformation;-><init>(Lcom/playhaven/sampleapp/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-static {p2, p3}, Lcom/playhaven/sampleapp/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 532
    .local v9, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;>;"
    if-nez v9, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v8, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 544
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 546
    .local v7, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/playhaven/sampleapp/billing/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 537
    .end local v7    # "notifyIds":[Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;

    .line 538
    .local v10, "vp":Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;
    iget-object v0, v10, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, v10, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_3
    iget-object v1, v10, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->purchaseState:Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;

    iget-object v2, v10, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 542
    iget-object v3, v10, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v10, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v10, Lcom/playhaven/sampleapp/billing/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    .line 541
    invoke-static/range {v0 .. v6}, Lcom/playhaven/sampleapp/billing/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/playhaven/sampleapp/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 578
    const/4 v0, -0x1

    .line 580
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/playhaven/sampleapp/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;

    .local v1, "request":Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;
    if-nez v1, :cond_2

    .line 601
    if-ltz v0, :cond_1

    .line 605
    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/billing/BillingService;->stopSelf(I)V

    .line 607
    :cond_1
    :goto_1
    return-void

    .line 581
    :cond_2
    invoke-virtual {v1}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 583
    sget-object v2, Lcom/playhaven/sampleapp/billing/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 587
    invoke-virtual {v1}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 588
    invoke-virtual {v1}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 593
    :cond_3
    invoke-direct {p0}, Lcom/playhaven/sampleapp/billing/BillingService;->bindToMarketBillingService()Z

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "itemType"    # Ljava/lang/String;

    .prologue
    .line 460
    new-instance v0, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0, p1}, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;-><init>(Lcom/playhaven/sampleapp/billing/BillingService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const-string v10, "notification_id"

    .line 399
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "action":Ljava/lang/String;
    const-string v9, "com.example.subscriptions.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 408
    const-string v9, "notification_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/playhaven/sampleapp/billing/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 410
    .end local v2    # "notifyIds":[Ljava/lang/String;
    :cond_2
    const-string v9, "com.example.subscriptions.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 411
    const-string v9, "notification_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "notifyId":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/playhaven/sampleapp/billing/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 413
    .end local v1    # "notifyId":Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 414
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, "signedData":Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 416
    .local v7, "signature":Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/playhaven/sampleapp/billing/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :cond_4
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 418
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 419
    .local v3, "requestId":J
    const-string v9, "response_code"

    .line 420
    sget-object v10, Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;->RESULT_ERROR:Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;

    invoke-virtual {v10}, Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;->ordinal()I

    move-result v10

    .line 419
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 421
    .local v6, "responseCodeIndex":I
    invoke-static {v6}, Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;->valueOf(I)Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;

    move-result-object v5

    .line 422
    .local v5, "responseCode":Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/playhaven/sampleapp/billing/BillingService;->checkResponseCode(JLcom/playhaven/sampleapp/billing/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 618
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/playhaven/sampleapp/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 619
    invoke-direct {p0}, Lcom/playhaven/sampleapp/billing/BillingService;->runPendingRequests()V

    .line 620
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 627
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x0

    sput-object v0, Lcom/playhaven/sampleapp/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 629
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 389
    invoke-virtual {p0, p1, p2}, Lcom/playhaven/sampleapp/billing/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 390
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "itemType"    # Ljava/lang/String;
    .param p3, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v0, Lcom/playhaven/sampleapp/billing/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/playhaven/sampleapp/billing/BillingService$RequestPurchase;-><init>(Lcom/playhaven/sampleapp/billing/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 486
    new-instance v0, Lcom/playhaven/sampleapp/billing/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/playhaven/sampleapp/billing/BillingService$RestoreTransactions;-><init>(Lcom/playhaven/sampleapp/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/playhaven/sampleapp/billing/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 377
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 637
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/playhaven/sampleapp/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    goto :goto_0
.end method
