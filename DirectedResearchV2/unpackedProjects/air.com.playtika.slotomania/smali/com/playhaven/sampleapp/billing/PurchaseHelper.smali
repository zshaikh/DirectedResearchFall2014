.class public Lcom/playhaven/sampleapp/billing/PurchaseHelper;
.super Ljava/lang/Object;
.source "PurchaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;
    }
.end annotation


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mBillingService:Lcom/playhaven/sampleapp/billing/BillingService;

.field private mHandler:Landroid/os/Handler;

.field private mPurchaseObserver:Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;

.field private purchases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/playhaven/src/publishersdk/content/PHPurchase;",
            ">;"
        }
    .end annotation
.end field

.field private trackingRequest:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;

    iget-object v1, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1}, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;-><init>(Lcom/playhaven/sampleapp/billing/PurchaseHelper;Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mPurchaseObserver:Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;

    .line 39
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mPurchaseObserver:Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;

    sget-boolean v1, Lcom/playhaven/src/common/PHConfig;->runningTests:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;->setShouldShowMarket(Z)V

    .line 41
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mPurchaseObserver:Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;

    invoke-static {v0}, Lcom/playhaven/sampleapp/billing/ResponseHandler;->register(Lcom/playhaven/sampleapp/billing/PurchaseObserver;)V

    .line 43
    new-instance v0, Lcom/playhaven/sampleapp/billing/BillingService;

    invoke-direct {v0}, Lcom/playhaven/sampleapp/billing/BillingService;-><init>()V

    iput-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mBillingService:Lcom/playhaven/sampleapp/billing/BillingService;

    .line 44
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mBillingService:Lcom/playhaven/sampleapp/billing/BillingService;

    invoke-virtual {v0, p1}, Lcom/playhaven/sampleapp/billing/BillingService;->setContext(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->context:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->purchases:Ljava/util/HashMap;

    .line 51
    return-void

    .line 39
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->context:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->purchases:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/playhaven/sampleapp/billing/PurchaseHelper;Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->trackingRequest:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    return-void
.end method

.method static synthetic access$3(Lcom/playhaven/sampleapp/billing/PurchaseHelper;)Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->trackingRequest:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    return-object v0
.end method


# virtual methods
.method public bindPurchaseObserver()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mPurchaseObserver:Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;

    invoke-static {v0}, Lcom/playhaven/sampleapp/billing/ResponseHandler;->register(Lcom/playhaven/sampleapp/billing/PurchaseObserver;)V

    .line 71
    return-void
.end method

.method public makePurchase(Lcom/playhaven/src/publishersdk/content/PHPurchase;)V
    .locals 4
    .param p1, "purchase"    # Lcom/playhaven/src/publishersdk/content/PHPurchase;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->purchases:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mBillingService:Lcom/playhaven/sampleapp/billing/BillingService;

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    .line 57
    const-string v2, "inapp"

    .line 58
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Lcom/playhaven/sampleapp/billing/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    return-void
.end method

.method public unbindPurchaseObserver()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mPurchaseObserver:Lcom/playhaven/sampleapp/billing/PurchaseHelper$PHPurchaseObserver;

    invoke-static {v0}, Lcom/playhaven/sampleapp/billing/ResponseHandler;->unregister(Lcom/playhaven/sampleapp/billing/PurchaseObserver;)V

    .line 67
    return-void
.end method

.method public unbindService()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/playhaven/sampleapp/billing/PurchaseHelper;->mBillingService:Lcom/playhaven/sampleapp/billing/BillingService;

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/billing/BillingService;->unbind()V

    .line 63
    return-void
.end method
