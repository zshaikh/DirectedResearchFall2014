.class final Lcom/nativex/monetization/smartoffers/SmartOffersManager$1;
.super Ljava/lang/Object;
.source "SmartOffersManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/smartoffers/SmartOffersManager;->checkForInstalledApps(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$offers:Ljava/util/List;

.field final synthetic val$packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/SmartOffersManager$1;->val$packageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/nativex/monetization/smartoffers/SmartOffersManager$1;->val$offers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 51
    iget-object v8, p0, Lcom/nativex/monetization/smartoffers/SmartOffersManager$1;->val$packageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x2001

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 52
    .local v4, "packagesInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v3, "packageNamesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 55
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 56
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/smartoffers/SmartOfferResult;>;"
    iget-object v8, p0, Lcom/nativex/monetization/smartoffers/SmartOffersManager$1;->val$offers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nativex/monetization/smartoffers/SmartOffer;

    .line 63
    .local v2, "offer":Lcom/nativex/monetization/smartoffers/SmartOffer;
    new-instance v6, Lcom/nativex/monetization/smartoffers/SmartOfferResult;

    invoke-direct {v6}, Lcom/nativex/monetization/smartoffers/SmartOfferResult;-><init>()V

    .line 64
    .local v6, "result":Lcom/nativex/monetization/smartoffers/SmartOfferResult;
    invoke-virtual {v2}, Lcom/nativex/monetization/smartoffers/SmartOffer;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->setId(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Lcom/nativex/monetization/smartoffers/SmartOffer;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 67
    invoke-virtual {v2}, Lcom/nativex/monetization/smartoffers/SmartOffer;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 68
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_3

    .line 69
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->setValue(Ljava/lang/Boolean;)V

    .line 70
    iget-wide v8, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->setFirstTimeUTC(Ljava/lang/String;)V

    .line 74
    :goto_2
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_3
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->setValue(Ljava/lang/Boolean;)V

    goto :goto_2

    .line 78
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "offer":Lcom/nativex/monetization/smartoffers/SmartOffer;
    .end local v6    # "result":Lcom/nativex/monetization/smartoffers/SmartOfferResult;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 79
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/nativex/monetization/communication/ServerRequestManager;->commitSmartOffers(Ljava/util/List;)V

    .line 82
    :cond_5
    return-void
.end method
