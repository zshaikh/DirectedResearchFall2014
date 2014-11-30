.class public Lcom/playhaven/src/publishersdk/content/PHPurchase;
.super Lv2/com/playhaven/model/PHPurchase;
.source "PHPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    }
.end annotation


# instance fields
.field public quantity:I

.field public resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lv2/com/playhaven/model/PHPurchase;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lv2/com/playhaven/model/PHPurchase;)V
    .locals 2
    .param p1, "purchase"    # Lv2/com/playhaven/model/PHPurchase;

    .prologue
    .line 18
    invoke-virtual {p1}, Lv2/com/playhaven/model/PHPurchase;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lv2/com/playhaven/model/PHPurchase;-><init>(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->quantity:I

    .line 21
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    iput-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 24
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-static {v0}, Lcom/playhaven/src/utils/EnumConversion;->convertToOldBillingResult(Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;)Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 25
    iget-wide v0, p1, Lv2/com/playhaven/model/PHPurchase;->price:D

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->price:D

    .line 26
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->currencyLocale:Ljava/util/Currency;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->currencyLocale:Ljava/util/Currency;

    .line 28
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->receipt:Ljava/lang/String;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->name:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->marketplace:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->marketplace:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 32
    iget-object v0, p1, Lv2/com/playhaven/model/PHPurchase;->error:Lv2/com/playhaven/model/PHError;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->error:Lv2/com/playhaven/model/PHError;

    .line 34
    return-void
.end method


# virtual methods
.method public reportResolution(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;Landroid/app/Activity;)V
    .locals 1
    .param p1, "resolution"    # Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 71
    invoke-static {p1}, Lcom/playhaven/src/utils/EnumConversion;->convertToNewBillingResult(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lv2/com/playhaven/model/PHPurchase;->reportAndroidBillingResult(Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;Landroid/content/Context;)V

    .line 72
    return-void
.end method
