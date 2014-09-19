.class public Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
.super Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;
.source "PHPublisherIAPTrackingRequest.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;
    }
.end annotation


# static fields
.field private static cookies:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public currencyLocale:Ljava/util/Currency;

.field public error:Lv2/com/playhaven/model/PHError;

.field public price:D

.field public product:Ljava/lang/String;

.field public quantity:I

.field public resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

.field public store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    .line 27
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->price:D

    .line 40
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->context:Ljava/lang/ref/WeakReference;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 2
    .parameter "context"
    .parameter "delegate"

    .prologue
    .line 70
    new-instance v0, Lcom/playhaven/src/publishersdk/purchases/TrackingDelegateAdapter;

    invoke-direct {v0, p2}, Lcom/playhaven/src/publishersdk/purchases/TrackingDelegateAdapter;-><init>(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-direct {p0, v0}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;-><init>(Lv2/com/playhaven/listeners/PHIAPRequestListener;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    .line 27
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->price:D

    .line 40
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/publishersdk/content/PHPurchase;)V
    .locals 3
    .parameter "context"
    .parameter "purchase"

    .prologue
    .line 83
    iget-object v0, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    iget v1, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->quantity:I

    iget-object v2, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)V
    .locals 2
    .parameter "context"
    .parameter "product_id"
    .parameter "quantity"
    .parameter "resolution"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Lv2/com/playhaven/model/PHPurchase;

    invoke-direct {v0}, Lv2/com/playhaven/model/PHPurchase;-><init>()V

    .line 98
    .local v0, purchase:Lv2/com/playhaven/model/PHPurchase;
    iput-object p2, v0, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    .line 99
    invoke-static {p4}, Lcom/playhaven/src/utils/EnumConversion;->convertToNewBillingResult(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    move-result-object v1

    iput-object v1, v0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 100
    iput p3, v0, Lv2/com/playhaven/model/PHPurchase;->quantity:I

    .line 103
    iput-object p4, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 104
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    .line 105
    iput p3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    .line 107
    invoke-super {p0, v0}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->setPurchase(Lv2/com/playhaven/model/PHPurchase;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv2/com/playhaven/model/PHError;)V
    .locals 1
    .parameter "context"
    .parameter "error"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lv2/com/playhaven/model/PHPurchase;

    invoke-direct {v0}, Lv2/com/playhaven/model/PHPurchase;-><init>()V

    .line 77
    .local v0, purchase:Lv2/com/playhaven/model/PHPurchase;
    iput-object p2, v0, Lv2/com/playhaven/model/PHPurchase;->error:Lv2/com/playhaven/model/PHError;

    .line 79
    invoke-super {p0, v0}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->setPurchase(Lv2/com/playhaven/model/PHPurchase;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lv2/com/playhaven/model/PHPurchase;

    invoke-direct {v0}, Lv2/com/playhaven/model/PHPurchase;-><init>()V

    .line 135
    .local v0, purchase:Lv2/com/playhaven/model/PHPurchase;
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->error:Lv2/com/playhaven/model/PHError;

    iput-object v1, v0, Lv2/com/playhaven/model/PHPurchase;->error:Lv2/com/playhaven/model/PHError;

    .line 136
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    iput-object v1, v0, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    .line 137
    iget-wide v1, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->price:D

    iput-wide v1, v0, Lv2/com/playhaven/model/PHPurchase;->price:D

    .line 138
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->currencyLocale:Ljava/util/Currency;

    iput-object v1, v0, Lv2/com/playhaven/model/PHPurchase;->currencyLocale:Ljava/util/Currency;

    .line 139
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-static {v1}, Lcom/playhaven/src/utils/EnumConversion;->convertToNewBillingResult(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    move-result-object v1

    iput-object v1, v0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 144
    invoke-super {p0, v0}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->setPurchase(Lv2/com/playhaven/model/PHPurchase;)V

    .line 147
    invoke-super {p0, p1}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;

    move-result-object v1

    return-object v1
.end method

.method public send()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 123
    .local v0, config:Lv2/com/playhaven/configuration/PHConfiguration;
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    sget-object v3, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lv2/com/playhaven/configuration/PHConfiguration;->setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-super {p0, v1}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->send(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 113
    new-instance v0, Lcom/playhaven/src/publishersdk/purchases/TrackingDelegateAdapter;

    invoke-direct {v0, p1}, Lcom/playhaven/src/publishersdk/purchases/TrackingDelegateAdapter;-><init>(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-super {p0, v0}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->setIAPListener(Lv2/com/playhaven/listeners/PHIAPRequestListener;)V

    .line 114
    return-void
.end method
