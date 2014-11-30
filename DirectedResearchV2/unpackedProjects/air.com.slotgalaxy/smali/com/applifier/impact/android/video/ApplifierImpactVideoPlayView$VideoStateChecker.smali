.class Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;
.super Ljava/util/TimerTask;
.source "ApplifierImpactVideoPlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoStateChecker"
.end annotation


# instance fields
.field private _curPos:Ljava/lang/Float;

.field private _duration:I

.field private _oldPos:Ljava/lang/Float;

.field private _playHeadHasMoved:Z

.field private _skipTimeLeft:Ljava/lang/Float;

.field private _videoHasStalled:Z

.field final synthetic this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;


# direct methods
.method private constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 542
    iput-object p1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 543
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    .line 544
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    .line 545
    const v0, 0x3c23d70a

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 546
    const/4 v0, 0x1

    iput v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    .line 547
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    .line 548
    iput-boolean v2, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)V

    return-void
.end method

.method static synthetic access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    return v0
.end method

.method static synthetic access$1(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic access$2(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    return v0
.end method

.method static synthetic access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 552
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_timeLeftInSecondsText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$1(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_1

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->cancel()Z

    .line 555
    :cond_1
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 556
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_2

    .line 557
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->pauseVideo()V

    .line 560
    :cond_2
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    iput-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    .line 563
    :try_start_0
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 574
    .local v5, "position":Ljava/lang/Float;
    const/4 v1, 0x1

    .line 575
    .local v1, "duration":I
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 578
    .local v2, "durationSuccess":Ljava/lang/Boolean;
    :try_start_1
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getDuration()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 585
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 586
    iput v1, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    .line 588
    :cond_3
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 590
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_e

    .line 591
    iput-boolean v10, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    .line 592
    iput-boolean v12, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    .line 593
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # invokes: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z
    invoke-static {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$2(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v8

    iget-object v9, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v9, v9, v11

    if-gtz v9, :cond_d

    move v9, v10

    :goto_2
    # invokes: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setBufferingTextVisibility(IZZ)V
    invoke-static {v6, v7, v8, v9}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$3(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;IZZ)V

    .line 599
    :goto_3
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 608
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # invokes: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->hasSkipDuration()Z
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$2(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)I

    move-result v6

    if-lez v6, :cond_10

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v11

    if-lez v6, :cond_10

    iget v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    div-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I
    invoke-static {v7}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)I

    move-result v7

    if-le v6, v7, :cond_10

    .line 609
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    iget-object v7, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 611
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v6, v11

    if-gez v6, :cond_4

    .line 612
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    .line 614
    :cond_4
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_skipTimeLeft:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v11

    if-nez v6, :cond_f

    .line 615
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$2;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$2;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 643
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fd0000000000000L

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 644
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v7}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 645
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->FirstQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L

    cmpl-double v6, v6, v8

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 648
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v7}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 649
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->MidPoint:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe8000000000000L

    cmpl-double v6, v6, v8

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 652
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_listener:Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$10(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-interface {v6, v7}, Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;->onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 653
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_sentPositionEvents:Ljava/util/Map;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$9(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;

    move-result-object v6

    sget-object v7, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->ThirdQuartile:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :cond_8
    const/4 v0, 0x0

    .line 658
    .local v0, "bufferPercentage":I
    :try_start_2
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getBufferPercentage()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 664
    :goto_5
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$11(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_bufferingStartedMillis:J
    invoke-static {v8}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$11(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    .line 666
    invoke-virtual {p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->cancel()Z

    .line 667
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$5;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$5;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 676
    :cond_9
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    if-eqz v6, :cond_a

    const/16 v6, 0xf

    if-ge v0, v6, :cond_a

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoView:Landroid/widget/VideoView;
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$0(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_a

    .line 677
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$6;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$6;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 685
    :cond_a
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_videoPlayheadPrepared:Z
    invoke-static {v6}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$14(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-eqz v6, :cond_b

    .line 686
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 711
    :cond_b
    return-void

    .line 565
    .end local v0    # "bufferPercentage":I
    .end local v1    # "duration":I
    .end local v2    # "durationSuccess":Ljava/lang/Boolean;
    .end local v5    # "position":Ljava/lang/Float;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 566
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "Could not get videoView currentPosition"

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v11

    if-lez v6, :cond_c

    .line 568
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_oldPos:Ljava/lang/Float;

    iput-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    goto/16 :goto_0

    .line 570
    :cond_c
    const v6, 0x3c23d70a

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_curPos:Ljava/lang/Float;

    goto/16 :goto_0

    .line 580
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "duration":I
    .restart local v2    # "durationSuccess":Ljava/lang/Boolean;
    .restart local v5    # "position":Ljava/lang/Float;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 581
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "Could not get videoView duration"

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    move v9, v12

    .line 593
    goto/16 :goto_2

    .line 595
    :cond_e
    iput-boolean v10, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_videoHasStalled:Z

    .line 596
    iget-object v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # invokes: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setBufferingTextVisibility(IZZ)V
    invoke-static {v6, v12, v10, v10}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$3(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;IZZ)V

    goto/16 :goto_3

    .line 623
    :cond_f
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 634
    :cond_10
    iget-boolean v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_playHeadHasMoved:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->_duration:I

    div-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;->this$0:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    # getter for: Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->_skipTimeInSeconds:I
    invoke-static {v7}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->access$4(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;)I

    move-result v7

    if-gt v6, v7, :cond_5

    .line 635
    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    new-instance v7, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$4;

    invoke-direct {v7, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker$4;-><init>(Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 660
    .restart local v0    # "bufferPercentage":I
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 661
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "Could not get videoView buffering percentage"

    invoke-static {v6, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5
.end method
