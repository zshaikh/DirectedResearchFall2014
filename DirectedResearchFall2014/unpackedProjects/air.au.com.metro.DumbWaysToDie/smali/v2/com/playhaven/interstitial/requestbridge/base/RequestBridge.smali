.class public abstract Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;
.super Ljava/lang/Object;
.source "RequestBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$Message;
    }
.end annotation


# static fields
.field public static final BROADCAST_METADATA_KEY:Ljava/lang/String; = "v2.com.playhaven.notification"


# instance fields
.field private displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

.field private displayerReceiver:Landroid/content/BroadcastReceiver;

.field private requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

.field private requesterReceiver:Landroid/content/BroadcastReceiver;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->tag:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic access$0(Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private registerDisplayerReceiver()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    invoke-interface {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$1;

    invoke-direct {v0, p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$1;-><init>(Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayerReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    invoke-interface {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->getDisplayerIntentFilter()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerRequesterReceiver()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    invoke-interface {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$2;

    invoke-direct {v0, p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge$2;-><init>(Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;)V

    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requesterReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    invoke-interface {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requesterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->getRequesterIntentFilter()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public attachDisplayer(Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;)V
    .locals 0
    .parameter "displayer"

    .prologue
    .line 119
    iput-object p1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    .line 122
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->registerDisplayerReceiver()V

    .line 125
    invoke-virtual {p0, p1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->onDisplayerAttached(Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;)V

    .line 126
    return-void
.end method

.method public attachRequester(Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;)V
    .locals 0
    .parameter "requester"

    .prologue
    .line 87
    iput-object p1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    .line 90
    invoke-direct {p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->registerRequesterReceiver()V

    .line 93
    invoke-virtual {p0, p1}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->onRequesterAttached(Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;)V

    .line 94
    return-void
.end method

.method public abstract cleanup()V
.end method

.method public close()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->detachRequester()V

    .line 154
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->detachDisplayer()V

    .line 156
    invoke-virtual {p0}, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->cleanup()V

    .line 158
    return-void
.end method

.method public detachDisplayer()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    invoke-interface {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    .line 136
    return-void
.end method

.method public detachRequester()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    invoke-interface {v0}, Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requesterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    .line 104
    return-void
.end method

.method public getDisplayer()Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    return-object v0
.end method

.method public abstract getDisplayerIntentFilter()Ljava/lang/String;
.end method

.method public getRequester()Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    return-object v0
.end method

.method public abstract getRequesterIntentFilter()Ljava/lang/String;
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public onDisplayerAttached(Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;)V
    .locals 0
    .parameter "displayer"

    .prologue
    .line 254
    return-void
.end method

.method public abstract onDisplayerSentMessage(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public onRequesterAttached(Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;)V
    .locals 0
    .parameter "requester"

    .prologue
    .line 251
    return-void
.end method

.method public abstract onRequesterSentMessage(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public onTagChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "new_tag"

    .prologue
    .line 237
    iput-object p1, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->tag:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->requester:Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;

    invoke-interface {v0, p1}, Lv2/com/playhaven/interstitial/requestbridge/base/ContentRequester;->onTagChanged(Ljava/lang/String;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lv2/com/playhaven/interstitial/requestbridge/base/RequestBridge;->displayer:Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;

    invoke-interface {v0, p1}, Lv2/com/playhaven/interstitial/requestbridge/base/ContentDisplayer;->onTagChanged(Ljava/lang/String;)V

    .line 244
    :cond_1
    return-void
.end method
