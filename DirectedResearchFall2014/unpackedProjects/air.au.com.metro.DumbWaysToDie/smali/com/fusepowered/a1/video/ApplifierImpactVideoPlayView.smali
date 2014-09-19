.class public Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
.super Landroid/widget/RelativeLayout;
.source "ApplifierImpactVideoPlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;
    }
.end annotation


# static fields
.field private static final FILL_PARENT:I = -0x1


# instance fields
.field private _bufferingCompledtedMillis:J

.field private _bufferingStartedMillis:J

.field private _bufferingText:Landroid/widget/RelativeLayout;

.field private _bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

.field private _countDownText:Landroid/widget/RelativeLayout;

.field private _listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

.field private _mediaPlayer:Landroid/media/MediaPlayer;

.field private _muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

.field private _muted:Z

.field private _pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

.field private _sentPositionEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _skipText:Landroid/widget/RelativeLayout;

.field private _skipTextView:Landroid/widget/TextView;

.field private _skipTimeInSeconds:I

.field private _timeLeftInSecondsText:Landroid/widget/TextView;

.field private _videoFileName:Ljava/lang/String;

.field private _videoPausedTimer:Ljava/util/Timer;

.field private _videoPlaybackErrors:Z

.field private _videoPlaybackStartedSent:Z

.field private _videoPlayheadPrepared:Z

.field private _videoStartedPlayingMillis:J

.field private _videoView:Landroid/widget/VideoView;

.field private _volumeBeforeMute:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 34
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 36
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 38
    iput v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I

    .line 40
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 42
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    .line 43
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    .line 44
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    .line 47
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 48
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 49
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    .line 51
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    .line 52
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    .line 53
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 55
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 56
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    .line 57
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muted:Z

    .line 59
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    .line 69
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 34
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 36
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 38
    iput v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I

    .line 40
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 42
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    .line 43
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    .line 44
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    .line 47
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 48
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 49
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    .line 51
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    .line 52
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    .line 53
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 55
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 56
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    .line 57
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muted:Z

    .line 59
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    .line 75
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createView()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 34
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 36
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 38
    iput v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I

    .line 40
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 42
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    .line 43
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    .line 44
    iput-wide v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    .line 47
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 48
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 49
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    .line 51
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    .line 52
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    .line 53
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    .line 55
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    .line 56
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    .line 57
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    iput-boolean v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muted:Z

    .line 59
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    .line 63
    iput-object p2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    .line 64
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createView()V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)J
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->videoErrorOperations()V

    return-void
.end method

.method static synthetic access$13(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createAndAddBufferingView()V

    return-void
.end method

.method static synthetic access$14(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    return v0
.end method

.method static synthetic access$15(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideBufferingView()V

    return-void
.end method

.method static synthetic access$16(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    return v0
.end method

.method static synthetic access$17(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackStartedSent:Z

    return-void
.end method

.method static synthetic access$18(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    return-void
.end method

.method static synthetic access$19(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    return-void
.end method

.method static synthetic access$2(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    return-wide v0
.end method

.method static synthetic access$21(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createAndAddPausedView()V

    return-void
.end method

.method static synthetic access$22(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$23(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muted:Z

    return v0
.end method

.method static synthetic access$24(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->storeVolume()V

    return-void
.end method

.method static synthetic access$25(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$26(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    return-void
.end method

.method static synthetic access$27(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideVideoPausedView()V

    return-void
.end method

.method static synthetic access$28(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->startVideo()V

    return-void
.end method

.method static synthetic access$29(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muted:Z

    return-void
.end method

.method static synthetic access$3(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-direct {p0, p1, p2, p3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setBufferingTextVisibility(IZZ)V

    return-void
.end method

.method static synthetic access$30(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    return-object v0
.end method

.method static synthetic access$31(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)F
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    return v0
.end method

.method static synthetic access$32(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$33(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createAndAddSkipText()V

    return-void
.end method

.method static synthetic access$34(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->disableSkippingFromSkipText()V

    return-void
.end method

.method static synthetic access$4(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I

    return v0
.end method

.method static synthetic access$5(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->enableSkippingFromSkipText()V

    return-void
.end method

.method static synthetic access$6(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideSkipText()V

    return-void
.end method

.method static synthetic access$9(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;

    return-object v0
.end method

.method private createAndAddBufferingView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 388
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    if-nez v1, :cond_0

    .line 389
    new-instance v1, Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    invoke-virtual {v1}, Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 393
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 394
    .local v0, bufferingLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 395
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    .end local v0           #bufferingLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private createAndAddMuteButton()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 343
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 344
    .local v0, muteButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 345
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 347
    new-instance v1, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    .line 348
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    invoke-virtual {v1, v0}, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-boolean v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muted:Z

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    sget-object v2, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->Muted:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-virtual {v1, v2}, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;->setState(Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;)V

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    new-instance v2, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$7;

    invoke-direct {v2, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$7;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v1, v2}, Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muteButton:Lcom/fusepowered/a1/view/ApplifierImpactMuteVideoButton;

    invoke-virtual {p0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;)V

    .line 374
    return-void
.end method

.method private createAndAddPausedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 377
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    if-nez v1, :cond_0

    .line 378
    new-instance v1, Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    invoke-virtual {v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 381
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 382
    .local v0, pausedViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 383
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .end local v0           #pausedViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private createAndAddSkipText()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, -0x2

    .line 411
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 412
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 413
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 414
    .local v0, skipTextParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 415
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 416
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 417
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 418
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$8;

    invoke-direct {v2, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$8;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 429
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You can skip this video in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 433
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 435
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;)V

    .line 436
    return-void
.end method

.method private createView()V
    .locals 15

    .prologue
    const/16 v14, 0xb

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, -0x2

    .line 229
    sget-object v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    if-eqz v8, :cond_0

    .line 230
    sget-object v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v9, "muteVideoSounds"

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 231
    sget-object v8, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->IMPACT_DEVELOPER_OPTIONS:Ljava/util/Map;

    const-string v9, "muteVideoSounds"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 232
    iput-boolean v12, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_muted:Z

    .line 235
    :cond_0
    const-string v8, "Creating custom view"

    invoke-static {v8, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    const/high16 v8, -0x100

    invoke-virtual {p0, v8}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setBackgroundColor(I)V

    .line 238
    new-instance v8, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    .line 239
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    const/16 v9, 0xbb9

    invoke-virtual {v8, v9}, Landroid/widget/VideoView;->setId(I)V

    .line 240
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v7, videoLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v8, v7}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v8, v7}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v8, v12}, Landroid/widget/VideoView;->setClickable(Z)V

    .line 245
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    iget-object v9, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    invoke-virtual {v8, v9}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 246
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    new-instance v9, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;

    invoke-direct {v9, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$4;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v8, v9}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 261
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 262
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    const/16 v9, 0xc1c

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 263
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 264
    .local v0, bufferingTextParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 266
    iput v13, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 267
    iput v13, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 268
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, bufferingTextView:Landroid/widget/TextView;
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    const-string v8, "Buffering..."

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/16 v8, 0xc1f

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setId(I)V

    .line 275
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 276
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v8}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;)V

    .line 278
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 279
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    const/16 v9, 0xbba

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 280
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v2, countDownParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 283
    iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 284
    iput v13, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 285
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 288
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    const-string v8, "This video ends in "

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const/16 v8, 0x2711

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setId(I)V

    .line 292
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 293
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    const-string v9, "00"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    const/16 v9, 0x2712

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setId(I)V

    .line 296
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 297
    .local v4, tv2params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0x2711

    invoke-virtual {v4, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 298
    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 299
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 302
    .local v5, tv3:Landroid/widget/TextView;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    const-string v8, "seconds."

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v6, tv3params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0x2712

    invoke-virtual {v6, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 306
    const/4 v8, 0x4

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 307
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 310
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 311
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 313
    iget-object v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v8}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->addView(Landroid/view/View;)V

    .line 315
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getSkipDuration()I

    move-result v8

    iput v8, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I

    .line 317
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createAndAddSkipText()V

    .line 320
    :cond_1
    new-instance v8, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$5;

    invoke-direct {v8, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$5;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {p0, v8}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance v8, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$6;

    invoke-direct {v8, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$6;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {p0, v8}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createAndAddMuteButton()V

    .line 340
    return-void
.end method

.method private disableSkippingFromSkipText()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 453
    :cond_0
    return-void
.end method

.method private enableSkippingFromSkipText()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 442
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const v1, 0x1ffffff

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 443
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 444
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    const-string v1, "Skip video"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 447
    :cond_0
    return-void
.end method

.method private getSkipDuration()I
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sget v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_VIDEO_SKIP:I

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSkipDuration()Z
    .locals 1

    .prologue
    .line 400
    sget v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_VIDEO_SKIP:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideBufferingView()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->removeView(Landroid/view/View;)V

    .line 465
    :cond_0
    return-void
.end method

.method private hideSkipText()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->disableSkippingFromSkipText()V

    .line 475
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 477
    :cond_0
    return-void
.end method

.method private hideTimeRemainingLabel()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 458
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->removeView(Landroid/view/View;)V

    .line 460
    :cond_0
    return-void
.end method

.method private hideVideoPausedView()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    invoke-virtual {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_pausedView:Lcom/fusepowered/a1/video/ApplifierImpactVideoPausedView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->removeView(Landroid/view/View;)V

    .line 470
    :cond_0
    return-void
.end method

.method private purgeVideoPausedTimer()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 223
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 226
    :cond_0
    return-void
.end method

.method private setBufferingTextVisibility(IZZ)V
    .locals 2
    .parameter "visibility"
    .parameter "hasSkip"
    .parameter "canSkip"

    .prologue
    .line 480
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;IZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method private startVideo()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1f4

    .line 204
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$3;

    invoke-direct {v1, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$3;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 215
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    .line 216
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPausedTimer:Ljava/util/Timer;

    new-instance v1, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 218
    :cond_1
    return-void
.end method

.method private storeVolume()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-string v6, ", "

    .line 180
    sget-object v4, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 181
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x0

    .line 182
    .local v1, curVol:I
    const/4 v2, 0x0

    .line 184
    .local v2, maxVol:I
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 186
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 187
    const/high16 v4, 0x3f80

    int-to-float v5, v2

    div-float v3, v4, v5

    .line 188
    .local v3, parts:F
    int-to-float v4, v1

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Storing volume: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_volumeBeforeMute:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    .end local v3           #parts:F
    :cond_0
    return-void
.end method

.method private videoErrorOperations()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    .line 195
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->purgeVideoPausedTimer()V

    .line 196
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;->onVideoPlaybackError()V

    .line 199
    :cond_0
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/a1/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoError(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 200
    return-void
.end method


# virtual methods
.method public clearVideoPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    const-string v0, "clearVideoPlayer"

    invoke-static {v0, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setKeepScreenOn(Z)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideSkipText()V

    .line 132
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideTimeRemainingLabel()V

    .line 133
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideBufferingView()V

    .line 134
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideVideoPausedView()V

    .line 135
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->purgeVideoPausedTimer()V

    .line 137
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 138
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 139
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 140
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->removeAllViews()V

    .line 144
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;

    .line 145
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipTextView:Landroid/widget/TextView;

    .line 147
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;

    .line 148
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingView:Lcom/fusepowered/a1/view/ApplifierImpactBufferingView;

    .line 150
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_countDownText:Landroid/widget/RelativeLayout;

    .line 151
    iput-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    .line 152
    return-void
.end method

.method public getBufferingDuration()J
    .locals 4

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    .line 159
    :cond_0
    iget-wide v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingCompledtedMillis:J

    iget-wide v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSecondsUntilBackButtonAllowed()I
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, timeUntilBackButton:I
    sget v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_BACK_BUTTON_SKIP:I

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 166
    sget v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_BACK_BUTTON_SKIP:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 167
    if-gez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    :cond_0
    move v1, v0

    .line 174
    :goto_0
    return v1

    .line 170
    :cond_1
    sget v1, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_BACK_BUTTON_SKIP:I

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoStartedPlayingMillis:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 536
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 537
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideVideoPausedView()V

    .line 538
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 508
    const-wide/16 v0, 0x0

    .line 509
    .local v0, bufferingDuration:J
    const/4 v2, 0x0

    .line 511
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    packed-switch p1, :pswitch_data_0

    .line 531
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 513
    :pswitch_0
    const-string v3, "onKeyDown"

    invoke-static {v3, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    sget v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_BACK_BUTTON_SKIP:I

    if-eqz v3, :cond_0

    sget v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->ALLOW_BACK_BUTTON_SKIP:I

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v3

    if-nez v3, :cond_1

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->clearVideoPlayer()V

    .line 518
    invoke-virtual {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->getBufferingDuration()J

    move-result-wide v0

    .line 519
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 520
    .restart local v2       #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "bufferingDuration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v3, "eventValue"

    const-string v4, "back"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v3, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;

    invoke-static {v3, v2}, Lcom/fusepowered/a1/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoAbort(Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 525
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    if-eqz v3, :cond_2

    .line 526
    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_listener:Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;

    invoke-interface {v3, p0}, Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;->onBackButtonClicked(Landroid/view/View;)V

    .line 528
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->purgeVideoPausedTimer()V

    .line 113
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/fusepowered/a1/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v1, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$2;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z

    .line 82
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Playing video from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$1;

    invoke-direct {v2, p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$1;-><init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-boolean v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoPlaybackErrors:Z

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J

    .line 106
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->startVideo()V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "For some reason the device failed to play the video, a crash was prevented."

    invoke-static {v1, p0}, Lcom/fusepowered/a1/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->videoErrorOperations()V

    goto :goto_0
.end method
