.class public Lcom/stuv/ane/trialpay/extensions/TrialPayWrapper;
.super Ljava/lang/Object;
.source "TrialPayWrapper.java"


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

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 28
    sput-object p1, Lcom/stuv/ane/trialpay/extensions/TrialPayWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 30
    sput-object p0, Lcom/stuv/ane/trialpay/extensions/TrialPayWrapper;->_baseActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method public static showOffers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "apiCode"    # Ljava/lang/String;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v1, "TrialPayActivity"

    const-string v2, "showOffers"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/stuv/ane/trialpay/extensions/TrialPayWrapper;->_baseActivity:Landroid/app/Activity;

    const-class v2, Lcom/stuv/ane/trialpay/TrialPayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "apiCode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    sget-object v1, Lcom/stuv/ane/trialpay/extensions/TrialPayWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method
