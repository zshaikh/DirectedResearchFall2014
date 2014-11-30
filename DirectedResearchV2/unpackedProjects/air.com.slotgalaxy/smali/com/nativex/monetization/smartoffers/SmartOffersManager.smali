.class public Lcom/nativex/monetization/smartoffers/SmartOffersManager;
.super Ljava/lang/Object;
.source "SmartOffersManager.java"


# static fields
.field private static final enabled:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static final checkForInstalledApps(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/smartoffers/SmartOffer;>;"
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 49
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/nativex/monetization/smartoffers/SmartOffersManager$1;

    invoke-direct {v3, v1, p0}, Lcom/nativex/monetization/smartoffers/SmartOffersManager$1;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static final configureSmartOffers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/smartoffers/SmartOffer;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 30
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/nativex/monetization/smartoffers/SmartOffersManager;->checkForInstalledApps(Ljava/util/List;)V

    .line 35
    :cond_0
    return-void
.end method

.method public static final doSmartOffersCheck()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/communication/ServerRequestManager;->getSmartOfferRules()V

    .line 24
    return-void
.end method
