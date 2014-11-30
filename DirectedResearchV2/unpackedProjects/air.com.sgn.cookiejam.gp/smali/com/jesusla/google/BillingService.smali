.class public Lcom/jesusla/google/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jesusla/google/BillingService$RestoreTransactions;,
        Lcom/jesusla/google/BillingService$GetPurchaseInformation;,
        Lcom/jesusla/google/BillingService$ConfirmNotifications;,
        Lcom/jesusla/google/BillingService$RequestPurchase;,
        Lcom/jesusla/google/BillingService$CheckBillingSupported;,
        Lcom/jesusla/google/BillingService$BillingRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mListener:Lcom/jesusla/google/BillingListener;

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/jesusla/google/BillingService$BillingRequest;",
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
            "Lcom/jesusla/google/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/jesusla/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jesusla/google/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 389
    return-void
.end method

.method static synthetic access$000(Lcom/jesusla/google/BillingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/google/BillingService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jesusla/google/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/jesusla/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/IMarketBillingService;

    .prologue
    .line 52
    sput-object p0, Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/jesusla/google/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jesusla/google/BillingService;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/jesusla/google/BillingService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jesusla/google/BillingService;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private bindToMarketBillingService()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v4, "BillingService"

    .line 452
    :try_start_0
    const-string v2, "BillingService"

    const-string v3, "binding to Market billing service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, p0, v3}, Lcom/jesusla/google/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 459
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    move v2, v5

    .line 467
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 462
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 465
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/jesusla/google/Consts$ResponseCode;)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/jesusla/google/Consts$ResponseCode;

    .prologue
    .line 581
    sget-object v1, Lcom/jesusla/google/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jesusla/google/BillingService$BillingRequest;

    .line 582
    .local v0, "request":Lcom/jesusla/google/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 584
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {v0, p3}, Lcom/jesusla/google/BillingService$BillingRequest;->responseCodeReceived(Lcom/jesusla/google/Consts$ResponseCode;)V

    .line 588
    :cond_0
    sget-object v1, Lcom/jesusla/google/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-void
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 544
    new-instance v0, Lcom/jesusla/google/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/jesusla/google/BillingService$GetPurchaseInformation;-><init>(Lcom/jesusla/google/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jesusla/google/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 556
    sget-object v3, Lcom/jesusla/google/BillingService;->mListener:Lcom/jesusla/google/BillingListener;

    if-nez v3, :cond_1

    .line 566
    :cond_0
    return-void

    .line 560
    :cond_1
    invoke-static {p2, p3}, Lcom/jesusla/google/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 561
    .local v2, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jesusla/google/VerifiedPurchase;>;"
    if-eqz v2, :cond_0

    .line 563
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jesusla/google/VerifiedPurchase;

    .line 564
    .local v1, "purchase":Lcom/jesusla/google/VerifiedPurchase;
    sget-object v3, Lcom/jesusla/google/BillingService;->mListener:Lcom/jesusla/google/BillingListener;

    invoke-interface {v3, p1, p2, p3, v1}, Lcom/jesusla/google/BillingListener;->verifyTransaction(ILjava/lang/String;Ljava/lang/String;Lcom/jesusla/google/VerifiedPurchase;)V

    goto :goto_0
.end method

.method private runPendingRequests()V
    .locals 5

    .prologue
    .line 596
    const/4 v0, -0x1

    .line 598
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/jesusla/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jesusla/google/BillingService$BillingRequest;

    .local v1, "request":Lcom/jesusla/google/BillingService$BillingRequest;
    if-eqz v1, :cond_3

    .line 599
    invoke-virtual {v1}, Lcom/jesusla/google/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    sget-object v2, Lcom/jesusla/google/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 605
    invoke-virtual {v1}, Lcom/jesusla/google/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 606
    invoke-virtual {v1}, Lcom/jesusla/google/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/jesusla/google/BillingService;->bindToMarketBillingService()Z

    .line 625
    :cond_2
    :goto_1
    return-void

    .line 619
    :cond_3
    if-ltz v0, :cond_2

    .line 621
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopping service, startId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0, v0}, Lcom/jesusla/google/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported(Lcom/jesusla/google/BillingSupportedCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/jesusla/google/BillingSupportedCallback;

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/jesusla/google/BillingService;->checkBillingSupported(Ljava/lang/String;Lcom/jesusla/google/BillingSupportedCallback;)Z

    move-result v0

    return v0
.end method

.method public checkBillingSupported(Ljava/lang/String;Lcom/jesusla/google/BillingSupportedCallback;)Z
    .locals 1
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/jesusla/google/BillingSupportedCallback;

    .prologue
    .line 486
    new-instance v0, Lcom/jesusla/google/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0, p1, p2}, Lcom/jesusla/google/BillingService$CheckBillingSupported;-><init>(Lcom/jesusla/google/BillingService;Ljava/lang/String;Lcom/jesusla/google/BillingSupportedCallback;)V

    invoke-virtual {v0}, Lcom/jesusla/google/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 527
    new-instance v0, Lcom/jesusla/google/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/jesusla/google/BillingService$ConfirmNotifications;-><init>(Lcom/jesusla/google/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jesusla/google/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const-string v12, "notification_id"

    .line 421
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "action":Ljava/lang/String;
    const-string v9, "BillingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleCommand() action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v9, "com.example.subscriptions.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 426
    const-string v9, "notification_id"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "notifyIds":[Ljava/lang/String;
    invoke-virtual {p0, p2, v2}, Lcom/jesusla/google/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 442
    .end local v2    # "notifyIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string v9, "com.example.subscriptions.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 429
    const-string v9, "notification_id"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "notifyId":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/jesusla/google/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 431
    .end local v1    # "notifyId":Ljava/lang/String;
    :cond_2
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 432
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, "signedData":Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, "signature":Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/jesusla/google/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 436
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 437
    .local v3, "requestId":J
    const-string v9, "response_code"

    sget-object v10, Lcom/jesusla/google/Consts$ResponseCode;->RESULT_ERROR:Lcom/jesusla/google/Consts$ResponseCode;

    invoke-virtual {v10}, Lcom/jesusla/google/Consts$ResponseCode;->ordinal()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 439
    .local v6, "responseCodeIndex":I
    invoke-static {v6}, Lcom/jesusla/google/Consts$ResponseCode;->valueOf(I)Lcom/jesusla/google/Consts$ResponseCode;

    move-result-object v5

    .line 440
    .local v5, "responseCode":Lcom/jesusla/google/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/jesusla/google/BillingService;->checkResponseCode(JLcom/jesusla/google/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 634
    const-string v0, "BillingService"

    const-string v1, "Billing service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 637
    invoke-direct {p0}, Lcom/jesusla/google/BillingService;->runPendingRequests()V

    .line 638
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 645
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v0, 0x0

    sput-object v0, Lcom/jesusla/google/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 647
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p0, p1, p2}, Lcom/jesusla/google/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 412
    :cond_0
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jesusla/google/RequestPurchaseCallback;)Z
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "itemType"    # Ljava/lang/String;
    .param p3, "developerPayload"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/jesusla/google/RequestPurchaseCallback;

    .prologue
    .line 502
    new-instance v0, Lcom/jesusla/google/BillingService$RequestPurchase;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jesusla/google/BillingService$RequestPurchase;-><init>(Lcom/jesusla/google/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jesusla/google/RequestPurchaseCallback;)V

    invoke-virtual {v0}, Lcom/jesusla/google/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions(Lcom/jesusla/google/RestoreTransactionsCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/jesusla/google/RestoreTransactionsCallback;

    .prologue
    .line 512
    new-instance v0, Lcom/jesusla/google/BillingService$RestoreTransactions;

    invoke-direct {v0, p0, p1}, Lcom/jesusla/google/BillingService$RestoreTransactions;-><init>(Lcom/jesusla/google/BillingService;Lcom/jesusla/google/RestoreTransactionsCallback;)V

    invoke-virtual {v0}, Lcom/jesusla/google/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/jesusla/google/BillingService;->mActivity:Landroid/app/Activity;

    .line 393
    invoke-virtual {p0, p1}, Lcom/jesusla/google/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 394
    return-void
.end method

.method public setListener(Lcom/jesusla/google/BillingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/jesusla/google/BillingListener;

    .prologue
    .line 397
    sput-object p1, Lcom/jesusla/google/BillingService;->mListener:Lcom/jesusla/google/BillingListener;

    .line 398
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 655
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/jesusla/google/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    goto :goto_0
.end method
