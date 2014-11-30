.class public Lcom/fusepowered/m2/m2l/M2RvpActivity;
.super Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;
.source "MraidVideoPlayerActivity.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;


# static fields
.field private static final VIDEO_CLASS_EXTRAS_KEY:Ljava/lang/String; = "video_view_class_name"

.field static final VIDEO_URL:Ljava/lang/String; = "video_url"


# instance fields
.field private mVideoView:Lcom/fusepowered/m2/m2l/BaseVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method private broadcastVastInterstitialAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RvpActivity;->mVideoView:Lcom/fusepowered/m2/m2l/BaseVideoView;

    instance-of v0, v0, Lcom/fusepowered/m2/m2l/VastVideoView;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 218
    :cond_0
    return-void
.end method

.method static createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fusepowered/m2/m2l/M2RvpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intentVideoPlayerActivity":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    const-string v1, "video_view_class_name"

    const-string v2, "mraid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "video_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method static createIntentVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p8, "clickThroughUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "videoStartTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "videoFirstQuartileTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "videoMidpointTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "videoThirdQuartileTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "videoCompleteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "impressionTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, "clickThroughTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fusepowered/m2/m2l/M2RvpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intentVideoPlayerActivity":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    const-string v1, "video_view_class_name"

    const-string v2, "vast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "video_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "video_start_trackers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 119
    const-string v1, "video_first_quarter_trackers"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 120
    const-string v1, "video_mid_point_trackers"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 121
    const-string v1, "video_third_quarter_trackers"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 122
    const-string v1, "video_complete_trackers"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 123
    const-string v1, "video_impression_trackers"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 124
    const-string v1, "video_click_through_url"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "video_click_through_trackers"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 126
    return-object v0
.end method

.method private createVideoView()Lcom/fusepowered/m2/m2l/BaseVideoView;
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "video_view_class_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "clazz":Ljava/lang/String;
    const-string v1, "vast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Lcom/fusepowered/m2/m2l/VastVideoView;

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/fusepowered/m2/m2l/VastVideoView;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V

    .line 173
    :goto_0
    return-object v1

    .line 168
    :cond_0
    const-string v1, "mraid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidVideoView;

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/fusepowered/m2/m2l/MraidVideoView;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V

    goto :goto_0

    .line 171
    :cond_1
    const-string v1, "com.mopub.action.interstitial.fail"

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->finish()V

    .line 173
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidVideoPlayerActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/fusepowered/m2/m2l/MraidVideoPlayerActivity$1;-><init>(Lcom/fusepowered/m2/m2l/M2RvpActivity;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static startMraid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "intentVideoPlayerActivity":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MraidVideoPlayerActivity"

    const-string v3, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static startVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p8, "clickThroughUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "videoStartTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "videoFirstQuartileTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "videoMidpointTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "videoThirdQuartileTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "videoCompleteTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "impressionTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, "clickThroughTrackers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static/range {p0 .. p9}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->createIntentVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, "intentVideoPlayerActivity":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MoPub"

    const-string v3, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->createVideoView()Lcom/fusepowered/m2/m2l/BaseVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/M2RvpActivity;->mVideoView:Lcom/fusepowered/m2/m2l/BaseVideoView;

    .line 132
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RvpActivity;->mVideoView:Lcom/fusepowered/m2/m2l/BaseVideoView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->hideInterstitialCloseButton()V

    .line 140
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RvpActivity;->mVideoView:Lcom/fusepowered/m2/m2l/BaseVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/BaseVideoView;->start()V

    .line 142
    const-string v0, "com.mopub.action.interstitial.show"

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->broadcastVastInterstitialAction(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "com.mopub.action.interstitial.dismiss"

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->broadcastVastInterstitialAction(Ljava/lang/String;)V

    .line 160
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onDestroy()V

    .line 161
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RvpActivity;->mVideoView:Lcom/fusepowered/m2/m2l/BaseVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/BaseVideoView;->onPause()V

    .line 154
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onPause()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseInterstitialActivity;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/M2RvpActivity;->mVideoView:Lcom/fusepowered/m2/m2l/BaseVideoView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/BaseVideoView;->onResume()V

    .line 149
    return-void
.end method

.method public showCloseButton()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->showInterstitialCloseButton()V

    .line 184
    return-void
.end method

.method public videoClicked()V
    .locals 1

    .prologue
    .line 206
    const-string v0, "com.mopub.action.interstitial.click"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public videoCompleted(Z)V
    .locals 0
    .param p1, "shouldFinish"    # Z

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->showInterstitialCloseButton()V

    .line 199
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->finish()V

    .line 202
    :cond_0
    return-void
.end method

.method public videoError(Z)V
    .locals 2
    .param p1, "shouldFinish"    # Z

    .prologue
    .line 188
    const-string v0, "MoPub"

    const-string v1, "Error: video can not be played."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->showInterstitialCloseButton()V

    .line 190
    const-string v0, "com.mopub.action.interstitial.fail"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->finish()V

    .line 194
    :cond_0
    return-void
.end method
