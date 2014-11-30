.class public Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;
.super Ljava/lang/Object;
.source "ChartboostWrapper.java"


# static fields
.field private static _baseActivity:Landroid/app/Activity;

.field private static _cb:Lcom/chartboost/sdk/Chartboost;

.field private static _context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 27
    sput-object p1, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 29
    sput-object p0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_baseActivity:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method public static initialise(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    sput-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    .line 38
    sget-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    sget-object v1, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_baseActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 41
    sget-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->startSession()V

    .line 46
    return-void
.end method

.method public static onBackPressed()Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onStart()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    sget-object v1, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 63
    return-void
.end method

.method public static onStop()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    sget-object v1, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, ""

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial()V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->_cb:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    goto :goto_0
.end method
