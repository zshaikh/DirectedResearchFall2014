.class public Lcom/stuv/ane/applifier/ApplifierWrapper;
.super Ljava/lang/Object;
.source "ApplifierWrapper.java"

# interfaces
.implements Lcom/applifier/impact/android/IApplifierImpactListener;


# instance fields
.field private _appId:Ljava/lang/String;

.field private _baseActivity:Landroid/app/Activity;

.field private _context:Lcom/adobe/fre/FREContext;

.field private _impact:Lcom/applifier/impact/android/ApplifierImpact;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p1, "baseActivity"    # Landroid/app/Activity;
    .param p2, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 31
    iput-object p1, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_baseActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method public changeActivity()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_impact:Lcom/applifier/impact/android/ApplifierImpact;

    iget-object v1, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/ApplifierImpact;->changeActivity(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public initialise(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "debugMode"    # Z
    .param p3, "testMode"    # Z

    .prologue
    .line 37
    iput-object p1, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_appId:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Lcom/applifier/impact/android/ApplifierImpact;->setDebugMode(Z)V

    .line 40
    invoke-static {p3}, Lcom/applifier/impact/android/ApplifierImpact;->setTestMode(Z)V

    .line 42
    new-instance v0, Lcom/applifier/impact/android/ApplifierImpact;

    iget-object v1, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_baseActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_appId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/applifier/impact/android/ApplifierImpact;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/applifier/impact/android/IApplifierImpactListener;)V

    iput-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_impact:Lcom/applifier/impact/android/ApplifierImpact;

    .line 43
    return-void
.end method

.method public onCampaignsAvailable()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "campaignsAvailable"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onCampaignsFetchFailed()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "campaignsFetchFailed"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onImpactClose()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "impactClose"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onImpactOpen()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "impactOpen"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "itemKey"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 97
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "videoCompleted"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "videoSkipped"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoStarted()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_context:Lcom/adobe/fre/FREContext;

    const-string v1, "videoStarted"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setItemKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_impact:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v0, p1}, Lcom/applifier/impact/android/ApplifierImpact;->setRewardItemKey(Ljava/lang/String;)Z

    .line 61
    return-void
.end method

.method public showImpact(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "noOfferScreen"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "noOfferScreen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/stuv/ane/applifier/ApplifierWrapper;->_impact:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-virtual {v1, v0}, Lcom/applifier/impact/android/ApplifierImpact;->showImpact(Ljava/util/Map;)Z

    .line 56
    return-void
.end method
