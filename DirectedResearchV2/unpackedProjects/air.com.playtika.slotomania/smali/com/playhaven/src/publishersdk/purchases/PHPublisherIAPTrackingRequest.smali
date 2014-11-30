.class public Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherIAPTrackingRequest.java"


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
.field public currencyLocale:Ljava/util/Currency;

.field public error:Lcom/playhaven/src/common/PHError;

.field public price:D

.field public product:Ljava/lang/String;

.field public quantity:I

.field public resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

.field public store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->price:D

    .line 47
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 53
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->error:Lcom/playhaven/src/common/PHError;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->price:D

    .line 47
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 53
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->error:Lcom/playhaven/src/common/PHError;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHError;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # Lcom/playhaven/src/common/PHError;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->price:D

    .line 47
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 53
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 69
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->error:Lcom/playhaven/src/common/PHError;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/publishersdk/content/PHPurchase;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "purchase"    # Lcom/playhaven/src/publishersdk/content/PHPurchase;

    .prologue
    .line 73
    iget-object v0, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    iget v1, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->quantity:I

    iget-object v2, p2, Lcom/playhaven/src/publishersdk/content/PHPurchase;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "product_id"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "resolution"    # Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->price:D

    .line 47
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->Google:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    .line 53
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 79
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    .line 81
    iput-object p4, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->error:Lcom/playhaven/src/common/PHError;

    .line 83
    return-void
.end method

.method public static getAndExpireCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "product"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "cookie":Ljava/lang/String;
    sget-object v1, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object v0
.end method

.method public static setConversionCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "product"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "/v3/publisher/iap/"

    invoke-super {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->createAPIURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams()Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, ""

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->currencyLocale:Ljava/util/Currency;

    .line 113
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 115
    .local v1, "purchaseData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "product"

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v2, "quantity"

    iget v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->quantity:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "resolution"

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v3}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->getType()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "price"

    iget-wide v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->price:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->error:Lcom/playhaven/src/common/PHError;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->error:Lcom/playhaven/src/common/PHError;

    invoke-virtual {v2}, Lcom/playhaven/src/common/PHError;->getErrorCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "error"

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->error:Lcom/playhaven/src/common/PHError;

    invoke-virtual {v3}, Lcom/playhaven/src/common/PHError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    const-string v2, "price_locale"

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->currencyLocale:Ljava/util/Currency;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->currencyLocale:Ljava/util/Currency;

    invoke-virtual {v3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "store"

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->store:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;

    invoke-virtual {v3}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest$PHPurchaseOrigin;->getOrigin()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->product:Ljava/lang/String;

    invoke-static {v2}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->getAndExpireCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "cookie":Ljava/lang/String;
    const-string v2, "cookie"

    if-eqz v0, :cond_5

    move-object v3, v0

    :goto_4
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-object v1

    .line 115
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    move-object v3, v5

    goto :goto_0

    .line 117
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_1

    .line 123
    :cond_3
    const-string v3, ""

    move-object v3, v5

    goto :goto_2

    .line 124
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 128
    .restart local v0    # "cookie":Ljava/lang/String;
    :cond_5
    const-string v3, ""

    move-object v3, v5

    goto :goto_4
.end method
