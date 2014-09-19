.class Lcom/fusepowered/m2/m2l/VastVideoView;
.super Lcom/fusepowered/m2/m2l/BaseVideoView;
.source "VastVideoView.java"


# static fields
.field public static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field private static final FIRST_QUARTER_MARKER:F = 0.25f

.field public static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3a98

.field private static final MID_POINT_MARKER:F = 0.5f

.field private static final THIRD_QUARTER_MARKER:F = 0.75f

.field static final VIDEO_CLICK_THROUGH_TRACKERS:Ljava/lang/String; = "video_click_through_trackers"

.field static final VIDEO_CLICK_THROUGH_URL:Ljava/lang/String; = "video_click_through_url"

.field static final VIDEO_COMPLETE_TRACKERS:Ljava/lang/String; = "video_complete_trackers"

.field static final VIDEO_FIRST_QUARTER_TRACKERS:Ljava/lang/String; = "video_first_quarter_trackers"

.field static final VIDEO_IMPRESSION_TRACKERS:Ljava/lang/String; = "video_impression_trackers"

.field static final VIDEO_MID_POINT_TRACKERS:Ljava/lang/String; = "video_mid_point_trackers"

.field private static final VIDEO_PROGRESS_TIMER_CHECKER_DELAY:J = 0x32L

.field static final VIDEO_START_TRACKERS:Ljava/lang/String; = "video_start_trackers"

.field static final VIDEO_THIRD_QUARTER_TRACKERS:Ljava/lang/String; = "video_third_quarter_trackers"

.field private static final sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

.field private mClickThroughTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClickThroughUrl:Ljava/lang/String;

.field private mCompletionTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstQuarterTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mImpressionTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstMarkHit:Z

.field private mIsSecondMarkHit:Z

.field private mIsThirdMarkHit:Z

.field private mIsVideoFinishedPlaying:Z

.field private mIsVideoProgressShouldBeChecked:Z

.field private mMidPointTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekerPositionOnPause:I

.field private mShowCloseButtonDelay:I

.field private mThirdQuarterTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

.field private mVideoStartTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 64
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0x32

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/fusepowered/m2/m2l/VastVideoView;->sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "baseVideoViewListener"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/BaseVideoView;-><init>(Landroid/content/Context;)V

    .line 81
    const/16 v0, 0x1388

    iput v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mShowCloseButtonDelay:I

    .line 92
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mHandler:Landroid/os/Handler;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsVideoProgressShouldBeChecked:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mSeekerPositionOnPause:I

    .line 97
    const-string v0, "video_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoUrl:Ljava/lang/String;

    .line 98
    const-string v0, "video_start_trackers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoStartTrackers:Ljava/util/ArrayList;

    .line 99
    const-string v0, "video_first_quarter_trackers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mFirstQuarterTrackers:Ljava/util/ArrayList;

    .line 100
    const-string v0, "video_mid_point_trackers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mMidPointTrackers:Ljava/util/ArrayList;

    .line 101
    const-string v0, "video_third_quarter_trackers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mThirdQuarterTrackers:Ljava/util/ArrayList;

    .line 102
    const-string v0, "video_complete_trackers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mCompletionTrackers:Ljava/util/ArrayList;

    .line 103
    const-string v0, "video_impression_trackers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 104
    const-string v0, "video_click_through_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mClickThroughUrl:Ljava/lang/String;

    .line 105
    const-string v0, "video_click_through_trackers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mClickThroughTrackers:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lcom/fusepowered/m2/m2l/VastVideoView$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/m2l/VastVideoView$1;-><init>(Lcom/fusepowered/m2/m2l/VastVideoView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 120
    new-instance v0, Lcom/fusepowered/m2/m2l/VastVideoView$2;

    invoke-direct {v0, p0, p3}, Lcom/fusepowered/m2/m2l/VastVideoView$2;-><init>(Lcom/fusepowered/m2/m2l/VastVideoView;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 133
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/VastVideoView;->requestFocus()Z

    .line 136
    new-instance v0, Lcom/fusepowered/m2/m2l/VastVideoView$3;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m2/m2l/VastVideoView$3;-><init>(Lcom/fusepowered/m2/m2l/VastVideoView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    new-instance v0, Lcom/fusepowered/m2/m2l/VastVideoView$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/m2l/VastVideoView$4;-><init>(Lcom/fusepowered/m2/m2l/VastVideoView;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/fusepowered/m2/m2l/VastVideoView$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/m2/m2l/VastVideoView$5;-><init>(Lcom/fusepowered/m2/m2l/VastVideoView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 199
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoStartTrackers:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->pingOnBackgroundThread(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mImpressionTrackers:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->pingOnBackgroundThread(Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/VastVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/VastVideoView;->stopProgressChecker()V

    return-void
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/VastVideoView;)Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fusepowered/m2/m2l/VastVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsSecondMarkHit:Z

    return v0
.end method

.method static synthetic access$11(Lcom/fusepowered/m2/m2l/VastVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsSecondMarkHit:Z

    return-void
.end method

.method static synthetic access$12(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mMidPointTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fusepowered/m2/m2l/VastVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsThirdMarkHit:Z

    return v0
.end method

.method static synthetic access$14(Lcom/fusepowered/m2/m2l/VastVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsThirdMarkHit:Z

    return-void
.end method

.method static synthetic access$15(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mThirdQuarterTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/fusepowered/m2/m2l/VastVideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mShowCloseButtonDelay:I

    return v0
.end method

.method static synthetic access$17(Lcom/fusepowered/m2/m2l/VastVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsVideoProgressShouldBeChecked:Z

    return v0
.end method

.method static synthetic access$18(Lcom/fusepowered/m2/m2l/VastVideoView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$19(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mCompletionTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/fusepowered/m2/m2l/VastVideoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mShowCloseButtonDelay:I

    return-void
.end method

.method static synthetic access$3(Lcom/fusepowered/m2/m2l/VastVideoView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/VastVideoView;->pingOnBackgroundThread(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4(Lcom/fusepowered/m2/m2l/VastVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsVideoFinishedPlaying:Z

    return-void
.end method

.method static synthetic access$5(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mClickThroughTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fusepowered/m2/m2l/VastVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsFirstMarkHit:Z

    return v0
.end method

.method static synthetic access$8(Lcom/fusepowered/m2/m2l/VastVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsFirstMarkHit:Z

    return-void
.end method

.method static synthetic access$9(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mFirstQuarterTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private pingOnBackgroundThread(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 244
    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    .local v0, url:Ljava/lang/String;
    sget-object v2, Lcom/fusepowered/m2/m2l/VastVideoView;->sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/fusepowered/m2/m2l/VastVideoView$6;

    invoke-direct {v3, p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView$6;-><init>(Lcom/fusepowered/m2/m2l/VastVideoView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private stopProgressChecker()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsVideoProgressShouldBeChecked:Z

    .line 248
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseVideoView;->onPause()V

    .line 208
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/VastVideoView;->stopProgressChecker()V

    .line 210
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/VastVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mSeekerPositionOnPause:I

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/BaseVideoView;->onResume()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsVideoProgressShouldBeChecked:Z

    .line 218
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    iget v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mSeekerPositionOnPause:I

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoView;->seekTo(I)V

    .line 222
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/VastVideoView;->mIsVideoFinishedPlaying:Z

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/VastVideoView;->start()V

    .line 225
    :cond_0
    return-void
.end method
