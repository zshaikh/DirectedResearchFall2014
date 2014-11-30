.class public Lcom/fusepowered/a1/ndk/AndroidNativeBridge;
.super Ljava/lang/Object;
.source "AndroidNativeBridge.java"

# interfaces
.implements Lcom/fusepowered/a1/IApplifierImpactListener;


# static fields
.field private static EVENT_IMPACT_CAMPAIGNS_AVAILABLE:I

.field private static EVENT_IMPACT_CAMPAIGNS_FAILED:I

.field private static EVENT_IMPACT_CLOSE:I

.field private static EVENT_IMPACT_OPEN:I

.field private static EVENT_IMPACT_VIDEO_COMPLETE:I

.field private static EVENT_IMPACT_VIDEO_SKIPPED:I

.field private static EVENT_IMPACT_VIDEO_START:I

.field private static final self:Lcom/fusepowered/a1/ndk/AndroidNativeBridge;


# instance fields
.field private bridgeInitBroadcast:Z

.field private impact:Lcom/fusepowered/a1/ApplifierImpact;

.field private parentActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    invoke-direct {v0}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;-><init>()V

    sput-object v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->self:Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_CLOSE:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_OPEN:I

    .line 29
    const/4 v0, 0x3

    sput v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_START:I

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_COMPLETE:I

    .line 31
    const/4 v0, 0x5

    sput v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_CAMPAIGNS_AVAILABLE:I

    .line 32
    const/4 v0, 0x6

    sput v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_CAMPAIGNS_FAILED:I

    .line 33
    const/4 v0, 0x7

    sput v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_SKIPPED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->parentActivity:Landroid/app/Activity;

    .line 46
    iput-object v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->bridgeInitBroadcast:Z

    .line 48
    sget-object v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->self:Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-instantiate AndroidNativeBridge, something is wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method public static __getDefaultReward()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->getInstance()Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v0}, Lcom/fusepowered/a1/ApplifierImpact;->getDefaultRewardItemKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static __getRewardUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->getInstance()Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    move-result-object v0

    iget-object v0, v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v0, p0}, Lcom/fusepowered/a1/ApplifierImpact;->getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 111
    const-string v1, "picture"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "key":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public static __init(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 41
    sget-object v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->self:Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    invoke-virtual {v0, p0}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->__initImpact(I)V

    .line 42
    return-void
.end method

.method public static __showImpact(ZZ)V
    .locals 3
    .param p0, "offerScreen"    # Z
    .param p1, "animated"    # Z

    .prologue
    .line 92
    invoke-static {}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->getInstance()Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Impact has not yet been initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "noOfferScreen"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "openAnimated"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->getInstance()Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v1, v0}, Lcom/fusepowered/a1/ApplifierImpact;->showImpact(Ljava/util/Map;)Z

    .line 99
    return-void
.end method

.method public static getInstance()Lcom/fusepowered/a1/ndk/AndroidNativeBridge;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->self:Lcom/fusepowered/a1/ndk/AndroidNativeBridge;

    return-object v0
.end method


# virtual methods
.method public __initImpact(I)V
    .locals 4
    .param p1, "appId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impact has already been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setRootActivity(Activity) in your Java code prior to initializing impact."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact;->setDebugMode(Z)V

    .line 124
    new-instance v0, Lcom/fusepowered/a1/ApplifierImpact;

    iget-object v1, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->parentActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/fusepowered/a1/ApplifierImpact;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/a1/IApplifierImpactListener;)V

    iput-object v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    .line 125
    const-string v0, "applifier"

    const-string v1, "new ApplifierImpact done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public native bridgeReady()V
.end method

.method public native dispatchEvent(ILjava/lang/String;)V
.end method

.method public onCampaignsAvailable()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v0}, Lcom/fusepowered/a1/ApplifierImpact;->getRewardItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->setRewardItems([Ljava/lang/String;)V

    .line 84
    sget v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_CAMPAIGNS_AVAILABLE:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 85
    return-void
.end method

.method public onCampaignsFetchFailed()V
    .locals 2

    .prologue
    .line 88
    sget v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_CAMPAIGNS_FAILED:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 89
    return-void
.end method

.method public onImpactClose()V
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_CLOSE:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public onImpactOpen()V
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_OPEN:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 75
    if-eqz p2, :cond_0

    .line 76
    sget v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_SKIPPED:I

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    sget v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_COMPLETE:I

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoStarted()V
    .locals 2

    .prologue
    .line 71
    sget v0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->EVENT_IMPACT_VIDEO_START:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->dispatchEvent(ILjava/lang/String;)V

    .line 72
    return-void
.end method

.method public native setRewardItems([Ljava/lang/String;)V
.end method

.method public setRootActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->parentActivity:Landroid/app/Activity;

    .line 54
    iget-object v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->impact:Lcom/fusepowered/a1/ApplifierImpact;

    invoke-virtual {v0, p1}, Lcom/fusepowered/a1/ApplifierImpact;->changeActivity(Landroid/app/Activity;)V

    .line 56
    :cond_0
    iget-boolean v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->bridgeInitBroadcast:Z

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->bridgeReady()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/a1/ndk/AndroidNativeBridge;->bridgeInitBroadcast:Z

    .line 60
    :cond_1
    return-void
.end method
