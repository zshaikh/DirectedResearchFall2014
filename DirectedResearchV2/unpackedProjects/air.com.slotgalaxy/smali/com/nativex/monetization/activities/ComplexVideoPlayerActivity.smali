.class public Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;
.super Landroid/app/Activity;
.source "ComplexVideoPlayerActivity.java"


# static fields
.field public static final EXTRA_CONTAINER_NAME:Ljava/lang/String; = "mraidContainerName"


# instance fields
.field private mraidContainerName:Ljava/lang/String;

.field private onVideoCloseClicked:Landroid/view/View$OnClickListener;

.field private onVideoFinished:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

.field private video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

.field private videoProgressOnPause:F

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .line 55
    iput-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoUrl:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoProgressOnPause:F

    .line 61
    new-instance v0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$1;-><init>(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)V

    iput-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->onVideoFinished:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    .line 87
    new-instance v0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity$2;-><init>(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)V

    iput-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->onVideoCloseClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->mraidContainerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method private onCreateMRAIDVideo(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/nativex/monetization/manager/DensityManager;->getDeviceScreenSize(Landroid/app/Activity;)Lcom/nativex/monetization/ui/DeviceScreenSize;

    move-result-object v0

    .line 122
    .local v0, "screenSize":Lcom/nativex/monetization/ui/DeviceScreenSize;
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->checkTheme()V

    .line 124
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mraidContainerName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->mraidContainerName:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "VideoURL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoUrl:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {v1, p0, v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;-><init>(Landroid/content/Context;Lcom/nativex/monetization/ui/DeviceScreenSize;)V

    iput-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .line 128
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setBackgroundColor(I)V

    .line 129
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->displayPlayPauseButton(Z)V

    .line 130
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 131
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    iget-object v2, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setVideoSource(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->start()V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v1, "VideoPlayer error: Invalid url"

    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->finish()V

    goto :goto_0
.end method

.method private onDestroyMRAIDVideo()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->trackVideoProgress()V

    .line 187
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->release()V

    .line 189
    :cond_0
    return-void
.end method

.method private onPauseMRAIDVideo()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->getVideoProgress()F

    move-result v0

    iput v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoProgressOnPause:F

    .line 170
    :cond_0
    return-void
.end method

.method private onResumeMRAIDVideo()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->onVideoCloseClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setOnCloseListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->onVideoFinished:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setOnCompletionListener(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;)V

    .line 152
    iget-object v0, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->start()V

    .line 154
    :cond_0
    return-void
.end method

.method private trackVideoProgress()V
    .locals 5

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track Video - video view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; container name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->mraidContainerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->mraidContainerName:Ljava/lang/String;

    invoke-static {v1}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->video:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-virtual {v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->getVideoProgress()F

    move-result v0

    .line 100
    .local v0, "videoProgress":F
    iget-object v1, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->mraidContainerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoUrl:Ljava/lang/String;

    iget v3, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoProgressOnPause:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_2

    iget v3, p0, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->videoProgressOnPause:F

    :goto_1
    const/high16 v4, 0x42c80000

    mul-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/nativex/monetization/mraid/MRAIDManager;->trackVideoProgress(Ljava/lang/String;Ljava/lang/String;F)V

    .line 102
    .end local v0    # "videoProgress":F
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0    # "videoProgress":F
    :cond_2
    move v3, v0

    .line 100
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->requestWindowFeature(I)Z

    .line 109
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 110
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setContext(Landroid/content/Context;)V

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 112
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 116
    :goto_0
    invoke-direct {p0, p1}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->onCreateMRAIDVideo(Landroid/os/Bundle;)V

    .line 117
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->createSession()V

    .line 176
    invoke-direct {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->onDestroyMRAIDVideo()V

    .line 177
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->trackVideoProgress()V

    .line 181
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseLater()V

    .line 182
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 159
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->endSession()V

    .line 160
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->releaseLater()V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->onPauseMRAIDVideo()V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setContext(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/communication/ServerRequestManager;->createSession()V

    .line 144
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->stopReleasingCache()V

    .line 145
    invoke-direct {p0}, Lcom/nativex/monetization/activities/ComplexVideoPlayerActivity;->onResumeMRAIDVideo()V

    .line 146
    return-void
.end method
