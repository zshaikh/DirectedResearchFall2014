.class public Lcom/bitrhymes/flurry/FlurryAdListenerClass;
.super Ljava/lang/Object;
.source "FlurryAdListenerClass.java"

# interfaces
.implements Lcom/flurry/android/FlurryAdListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field static flurryAdListenerClassObj:Lcom/bitrhymes/flurry/FlurryAdListenerClass;


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "FlurryAdListenerClass"

    sput-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    .line 10
    return-void
.end method

.method public static getInstance(Lcom/adobe/fre/FREContext;)Lcom/bitrhymes/flurry/FlurryAdListenerClass;
    .locals 1
    .param p0, "freContext1"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 23
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->flurryAdListenerClassObj:Lcom/bitrhymes/flurry/FlurryAdListenerClass;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;

    invoke-direct {v0}, Lcom/bitrhymes/flurry/FlurryAdListenerClass;-><init>()V

    sput-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->flurryAdListenerClassObj:Lcom/bitrhymes/flurry/FlurryAdListenerClass;

    .line 27
    :cond_0
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->flurryAdListenerClassObj:Lcom/bitrhymes/flurry/FlurryAdListenerClass;

    invoke-direct {v0, p0}, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 29
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->flurryAdListenerClassObj:Lcom/bitrhymes/flurry/FlurryAdListenerClass;

    return-object v0
.end method

.method private setFREContext(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p1, "freContext1"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    .line 19
    return-void
.end method


# virtual methods
.method public onAdClicked(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method

.method public onAdClosed(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flurry spaceDidFailToReceiveAd-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "FLURRY_AD_CLOSED"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    const-string v1, "flurry onAdClosed, but context was null so not returned event to flash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdOpened(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public onApplicationExit(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method

.method public onRenderFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flurry spaceDidFailToReceiveAd-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "FLURRY_VIDEO_DISPLAY_FAILED"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    const-string v1, "flurry onRenderFailed, but context was null so not returned event to flash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onVideoCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    const-string v1, "flurry video completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "VIDEO_COMPLETED_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    const-string v1, "flurry video completed, but context was null so not returned event to flash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/flurry/android/FlurryAdType;

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public spaceDidFailToReceiveAd(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flurry spaceDidFailToReceiveAd-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "FLURRY_AD_DOWNLOADED"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    const-string v1, "flurry spaceDidFailToReceiveAd, but context was null so not returned event to flash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public spaceDidReceiveAd(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    const-string v1, "flurry spaceDidReceiveAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "FLURRY_AD_DOWNLOADED"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/bitrhymes/flurry/FlurryAdListenerClass;->TAG:Ljava/lang/String;

    const-string v1, "flurry spaceDidReceiveAd, but context was null so not returned event to flash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
