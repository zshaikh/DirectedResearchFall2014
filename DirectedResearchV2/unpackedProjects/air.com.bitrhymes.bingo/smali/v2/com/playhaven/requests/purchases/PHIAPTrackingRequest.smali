.class public Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;
.super Lv2/com/playhaven/requests/base/PHAPIRequest;
.source "PHIAPTrackingRequest.java"


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
.field private listener:Lv2/com/playhaven/listeners/PHIAPRequestListener;

.field private purchase:Lv2/com/playhaven/model/PHPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lv2/com/playhaven/listeners/PHIAPRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHIAPRequestListener;

    .prologue
    .line 44
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->setIAPListener(Lv2/com/playhaven/listeners/PHIAPRequestListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lv2/com/playhaven/listeners/PHIAPRequestListener;Lv2/com/playhaven/model/PHPurchase;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHIAPRequestListener;
    .param p2, "purchase"    # Lv2/com/playhaven/model/PHPurchase;

    .prologue
    .line 49
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 50
    iput-object p2, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    .line 51
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->setIAPListener(Lv2/com/playhaven/listeners/PHIAPRequestListener;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lv2/com/playhaven/model/PHPurchase;)V
    .locals 0
    .param p1, "purchase"    # Lv2/com/playhaven/model/PHPurchase;

    .prologue
    .line 54
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 55
    iput-object p1, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    .line 56
    return-void
.end method

.method public static getAndExpireCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "product"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v1, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v2, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "cookie":Ljava/lang/String;
    sget-object v2, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v1

    return-object v0

    .line 104
    .end local v0    # "cookie":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static setConversionCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "product"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v1, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public baseURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string v0, "/v3/publisher/iap/"

    invoke-super {p0, p1, v0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->createAPIURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
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
    const/4 v6, 0x0

    const-string v5, ""

    .line 129
    iget-object v2, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 156
    :goto_0
    return-object v2

    .line 132
    :cond_0
    iget-object v2, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v3

    iput-object v3, v2, Lv2/com/playhaven/model/PHPurchase;->currencyLocale:Ljava/util/Currency;

    .line 134
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 136
    .local v1, "purchaseData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "product"

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "resolution"

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v3}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->getType()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "price"

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-wide v3, v3, Lv2/com/playhaven/model/PHPurchase;->price:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "quantity"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    invoke-virtual {v2}, Lv2/com/playhaven/model/PHPurchase;->hasError()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v2, v2, Lv2/com/playhaven/model/PHPurchase;->error:Lv2/com/playhaven/model/PHError;

    invoke-virtual {v2}, Lv2/com/playhaven/model/PHError;->getErrorCode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const-string v2, "error"

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->error:Lv2/com/playhaven/model/PHError;

    invoke-virtual {v3}, Lv2/com/playhaven/model/PHError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    const-string v2, "price_locale"

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->currencyLocale:Ljava/util/Currency;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->currencyLocale:Ljava/util/Currency;

    invoke-virtual {v3}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "store"

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->marketplace:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v3, v3, Lv2/com/playhaven/model/PHPurchase;->marketplace:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    invoke-virtual {v3}, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->getOrigin()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v2, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v2, v2, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    iget-object v2, v2, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    :goto_5
    invoke-static {v2}, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->getAndExpireCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "cookie":Ljava/lang/String;
    const-string v2, "cookie"

    if-eqz v0, :cond_7

    move-object v3, v0

    :goto_6
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 156
    goto/16 :goto_0

    .line 136
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto/16 :goto_1

    .line 138
    :cond_3
    const-string v3, ""

    move-object v3, v5

    goto/16 :goto_2

    .line 147
    :cond_4
    const-string v3, ""

    move-object v3, v5

    goto :goto_3

    :cond_5
    move-object v3, v6

    .line 149
    goto :goto_4

    :cond_6
    move-object v2, v6

    .line 152
    goto :goto_5

    .line 154
    .restart local v0    # "cookie":Ljava/lang/String;
    :cond_7
    const-string v3, ""

    move-object v3, v5

    goto :goto_6
.end method

.method public getIAPListener()Lv2/com/playhaven/listeners/PHIAPRequestListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->listener:Lv2/com/playhaven/listeners/PHIAPRequestListener;

    return-object v0
.end method

.method public handleRequestFailure(Lv2/com/playhaven/model/PHError;)V
    .locals 1
    .param p1, "error"    # Lv2/com/playhaven/model/PHError;

    .prologue
    .line 118
    iget-object v0, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->listener:Lv2/com/playhaven/listeners/PHIAPRequestListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->listener:Lv2/com/playhaven/listeners/PHIAPRequestListener;

    invoke-interface {v0, p0, p1}, Lv2/com/playhaven/listeners/PHIAPRequestListener;->onIAPRequestFailed(Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;Lv2/com/playhaven/model/PHError;)V

    .line 120
    :cond_0
    return-void
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 112
    iget-object v0, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->listener:Lv2/com/playhaven/listeners/PHIAPRequestListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->listener:Lv2/com/playhaven/listeners/PHIAPRequestListener;

    invoke-interface {v0, p0}, Lv2/com/playhaven/listeners/PHIAPRequestListener;->onIAPRequestSucceeded(Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setIAPListener(Lv2/com/playhaven/listeners/PHIAPRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lv2/com/playhaven/listeners/PHIAPRequestListener;

    .prologue
    .line 63
    iput-object p1, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->listener:Lv2/com/playhaven/listeners/PHIAPRequestListener;

    .line 64
    return-void
.end method

.method public setPurchase(Lv2/com/playhaven/model/PHPurchase;)V
    .locals 0
    .param p1, "purchase"    # Lv2/com/playhaven/model/PHPurchase;

    .prologue
    .line 59
    iput-object p1, p0, Lv2/com/playhaven/requests/purchases/PHIAPTrackingRequest;->purchase:Lv2/com/playhaven/model/PHPurchase;

    .line 60
    return-void
.end method
