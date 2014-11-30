.class public Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;
.super Ljava/lang/Object;
.source "PocketChangeWrapper.java"


# static fields
.field private static _baseActivity:Landroid/app/Activity;

.field private static _context:Lcom/adobe/fre/FREContext;

.field private static _redeemData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPendingNotificationIntent()V
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Lcom/pocketchange/android/PocketChange;->getPendingNotificationIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string v1, "moo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pocketchange: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-eqz v0, :cond_0

    .line 55
    sget-object v1, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static getQuantityPurchasedForProduct(Ljava/lang/String;)I
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/pocketchange/android/PocketChange;->getQuantityPurchasedForProduct(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 28
    sput-object p1, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 30
    sput-object p0, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->_baseActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method public static initialise(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "testMode"    # Z

    .prologue
    .line 37
    sget-object v0, Lcom/stuv/ane/pocketchange/extensions/PocketChangeWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/pocketchange/android/PocketChange;->initialize(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public static openShop()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/pocketchange/android/PocketChange;->openShop()V

    .line 46
    return-void
.end method
