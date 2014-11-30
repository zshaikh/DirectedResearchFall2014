.class public Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
.super Landroid/widget/RelativeLayout;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Lcom/nativex/monetization/interfaces/ICustomVideoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoProgressChanged;,
        Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;,
        Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
    }
.end annotation


# static fields
.field private static final CONTROLS_DEFAULT_TIMEOUT:I = 0xbb8

.field private static final CONTROLS_HINT_DEFAULT_TIMEOUT:I = 0xbb8

.field private static final CONTROLS_PLAY_BUTTON_SIZE:I = 0x23

.field public static final ID_CHILD_VIDEO_VIEW:I = 0x3e8

.field public static final ID_CLOSE:I = 0x3eb

.field public static final ID_CONTROLS:I = 0x3ea

.field public static final ID_CONTROLS_HINT:I = 0x3f0

.field public static final ID_CUSTOM_VIDEO_VIEW:I = 0x3e9

.field public static final ID_PROGRESS_BAR:I = 0x3ec

.field public static final ID_PROGRESS_CONTAINER:I = 0x3ef

.field public static final ID_TIME_DURATION:I = 0x3ee

.field public static final ID_TIME_ELAPSED:I = 0x3ed

.field private static final MARGIN_CONTROLS_BOTTOM:I = 0xa

.field private static final MARGIN_CONTROLS_LEFT:I = 0xa

.field private static final MARGIN_CONTROLS_RIGHT:I = 0xa

.field private static final MARGIN_CONTROLS_TOP:I = 0xa

.field private static final MSG_HIDE:I = 0x3e9

.field private static final MSG_HIDE_CONTROLS_ANIMATION_END:I = 0x3ec

.field private static final MSG_HIDE_CONTROLS_HINT_ANIMATION_END:I = 0x3ef

.field private static final MSG_HIDE_HINT:I = 0x3eb

.field private static final MSG_SHOW_CONTROLS_ANIMATION_END:I = 0x3ed

.field private static final MSG_SHOW_CONTROLS_HINT_ANIMATION_END:I = 0x3ee

.field private static final MSG_UPDATE_BUFFER:I = 0x3ea

.field private static final MSG_UPDATE_PROGRESS:I = 0x3e8

.field private static final PROGRESS_BAR_UPDATE_PERIOD:I = 0x1f4

.field private static final PROGRESS_UPDATE_PERIOD:I = 0x64

.field private static closeButtonSize:Lcom/nativex/monetization/ui/ScreenDependendSize;

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private buffered:I

.field private controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

.field private controlsAreDisplayed:Z

.field private controlsHint:Landroid/widget/TextView;

.field private errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

.field private errorOccured:Z

.field private finished:Z

.field private hidePlayButton:Z

.field private onClose:Landroid/view/View$OnClickListener;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onError:Landroid/media/MediaPlayer$OnErrorListener;

.field private onLayoutClick:Landroid/view/View$OnClickListener;

.field private onPlayPauseClicked:Landroid/view/View$OnClickListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private paused:Z

.field private prepared:Z

.field private starting:Z

.field private userOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private userSetOnCompletionListener:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

.field private videoDuration:Ljava/lang/String;

.field private videoProgressChangedListener:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoProgressChanged;

.field private videoURI:Ljava/lang/String;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 94
    new-instance v0, Lcom/nativex/monetization/ui/ScreenDependendSize;

    const/16 v1, 0x19

    const/16 v2, 0x28

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/nativex/monetization/ui/ScreenDependendSize;-><init>(IIII)V

    sput-object v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->closeButtonSize:Lcom/nativex/monetization/ui/ScreenDependendSize;

    .line 251
    new-instance v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$2;

    invoke-direct {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$2;-><init>()V

    sput-object v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nativex/monetization/ui/DeviceScreenSize;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenSize"    # Lcom/nativex/monetization/ui/DeviceScreenSize;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    .line 58
    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .line 59
    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoURI:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    .line 96
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    .line 97
    iput v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    .line 98
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccured:Z

    .line 99
    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    .line 100
    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 101
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->hidePlayButton:Z

    .line 102
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    .line 103
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    .line 104
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    .line 105
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    .line 107
    new-instance v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$1;-><init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onPlayPauseClicked:Landroid/view/View$OnClickListener;

    .line 524
    new-instance v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$3;-><init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 742
    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    .line 744
    new-instance v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$4;-><init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 765
    new-instance v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$5;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$5;-><init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onLayoutClick:Landroid/view/View$OnClickListener;

    .line 774
    new-instance v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$6;-><init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onError:Landroid/media/MediaPlayer$OnErrorListener;

    .line 832
    iput-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    .line 145
    invoke-direct {p0, p2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setParams(Lcom/nativex/monetization/ui/DeviceScreenSize;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->createVideoView(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->updateBuffer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onHideControlsAnimationEnd()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onHideControlsHintAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/nativex/monetization/ui/ScreenDependendSize;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->closeButtonSize:Lcom/nativex/monetization/ui/ScreenDependendSize;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    return v0
.end method

.method static synthetic access$200(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccured:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorOccured:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;J)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # J

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->showControls(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)Lcom/nativex/monetization/dialogs/custom/MessageDialog;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    return v0
.end method

.method static synthetic access$302(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->updateProgress()V

    return-void
.end method

.method static synthetic access$800(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->hideControls()V

    return-void
.end method

.method static synthetic access$900(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->hideControlsHint()V

    return-void
.end method

.method private convertTime(I)Ljava/lang/String;
    .locals 10
    .param p1, "time"    # I

    .prologue
    const/16 v7, 0x9

    const-string v9, ":"

    const-string v8, "0"

    .line 398
    div-int/lit16 v4, p1, 0x3e8

    div-int/lit16 v1, v4, 0xe10

    .line 399
    .local v1, "hours":I
    div-int/lit16 v4, p1, 0x3e8

    div-int/lit8 v2, v4, 0x3c

    .line 400
    .local v2, "minutes":I
    div-int/lit16 v4, p1, 0x3e8

    rem-int/lit8 v3, v4, 0x3c

    .line 402
    .local v3, "seconds":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-le v2, v7, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-le v3, v7, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "convertedTime":Ljava/lang/String;
    return-object v0

    .line 402
    .end local v0    # "convertedTime":Ljava/lang/String;
    :cond_0
    const-string v5, ""

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private createControls()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;-><init>(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .line 214
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setId(I)V

    .line 216
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onPlayPauseClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setOnPlayPauseClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->hidePlayButton:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->hidePlayPauseButton()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$600(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onLayoutClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method private createVideoView(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x2

    const/high16 v5, 0x41a00000

    .line 167
    invoke-virtual {p0, v7}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setWillNotDraw(Z)V

    .line 168
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    new-instance v3, Landroid/widget/VideoView;

    invoke-direct {v3, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    .line 171
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setId(I)V

    .line 173
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v3}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v7}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 175
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onError:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 176
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 177
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/nativex/monetization/manager/DensityManager;->getDIP(Landroid/content/Context;F)I

    move-result v0

    .line 180
    .local v0, "hintPadding":I
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    sget-object v4, Lcom/nativex/monetization/enums/StringResources;->VIDEO_PLAYER_CONTROLS_HINT:Lcom/nativex/monetization/enums/StringResources;

    invoke-static {v4}, Lcom/nativex/monetization/manager/StringsManager;->getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_TEXT_COLOR:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v4}, Lcom/nativex/monetization/theme/ThemeManager;->getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    sget-object v4, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_BACKGROUND:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3, v4}, Lcom/nativex/monetization/theme/ThemeManager;->setViewBackground(Landroid/view/View;Lcom/nativex/monetization/theme/ThemeElementTypes;)V

    .line 185
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v1, "hintParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->addView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method private hideControls()V
    .locals 8

    .prologue
    const/16 v7, 0x3ec

    .line 410
    sget-object v5, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    const/16 v6, 0x3ed

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    sget-object v5, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    sget-object v5, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    sget-object v5, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    const-wide/16 v1, 0x0

    .line 415
    .local v1, "animationDuration":J
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v5, :cond_1

    .line 416
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->clearAnimations()V

    .line 417
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    .line 418
    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 419
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 421
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5, v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 436
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_5

    .line 437
    invoke-virtual {p0, v7, v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 442
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    return-void

    .line 423
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_CLOSE_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v3

    .line 424
    .local v3, "closeAnimation":Landroid/view/animation/Animation;
    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAYER_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v4

    .line 425
    .local v4, "progressAnimation":Landroid/view/animation/Animation;
    if-nez v3, :cond_3

    if-eqz v4, :cond_0

    .line 426
    :cond_3
    if-eqz v3, :cond_4

    .line 427
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 428
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$600(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 430
    :cond_4
    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 432
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1600(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 439
    .end local v3    # "closeAnimation":Landroid/view/animation/Animation;
    .end local v4    # "progressAnimation":Landroid/view/animation/Animation;
    :cond_5
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideControlsHint()V
    .locals 5

    .prologue
    .line 306
    sget-object v3, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_HIDE_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v3}, Lcom/nativex/monetization/theme/ThemeManager;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 307
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x0

    .line 308
    .local v1, "duration":J
    if-eqz v0, :cond_0

    .line 309
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 312
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 313
    const/16 v3, 0x3ef

    invoke-virtual {p0, v3, v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onHideControlsAnimationEnd()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setVisibility(I)V

    .line 249
    :cond_0
    return-void
.end method

.method private onHideControlsHintAnimation()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    :cond_0
    return-void
.end method

.method private setParams(Lcom/nativex/monetization/ui/DeviceScreenSize;)V
    .locals 3
    .param p1, "screenSize"    # Lcom/nativex/monetization/ui/DeviceScreenSize;

    .prologue
    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nativex/monetization/ui/ScreenDependendSize;

    const/4 v1, 0x0

    sget-object v2, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->closeButtonSize:Lcom/nativex/monetization/ui/ScreenDependendSize;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/nativex/monetization/ui/ScreenDependendSize;->setScreensizes(Lcom/nativex/monetization/ui/DeviceScreenSize;[Lcom/nativex/monetization/ui/ScreenDependendSize;)V

    .line 156
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setId(I)V

    .line 157
    return-void
.end method

.method private showControls(J)V
    .locals 11
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v9, 0x0

    const/16 v8, 0x3ed

    const/16 v7, 0x3e9

    .line 452
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v5, :cond_2

    .line 453
    iget-boolean v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    if-nez v5, :cond_1

    .line 454
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    .line 455
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->updateProgress()V

    .line 456
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->clearAnimations()V

    .line 457
    const-wide/16 v1, 0x0

    .line 458
    .local v1, "animationDuration":J
    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 459
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_3

    .line 460
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5, v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 461
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 474
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->setVisibility(I)V

    .line 475
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->bringToFront()V

    .line 476
    sget-object v5, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    cmp-long v5, v1, v9

    if-lez v5, :cond_1

    .line 478
    invoke-virtual {p0, v8, v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 481
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "animationDuration":J
    :cond_1
    cmp-long v5, p1, v9

    if-lez v5, :cond_2

    .line 482
    sget-object v5, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    sget-object v5, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    const/16 v6, 0x3ec

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v7, v5, v6}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 487
    :cond_2
    return-void

    .line 463
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    .restart local v1    # "animationDuration":J
    :cond_3
    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_CLOSE_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v3

    .line 464
    .local v3, "closeAnimation":Landroid/view/animation/Animation;
    sget-object v5, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_PLAYER_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v5}, Lcom/nativex/monetization/theme/ThemeManager;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v4

    .line 465
    .local v4, "progressAnimation":Landroid/view/animation/Animation;
    if-eqz v3, :cond_4

    .line 466
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$600(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 467
    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    .line 469
    :cond_4
    if-eqz v4, :cond_0

    .line 470
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->progressLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1600(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 471
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0
.end method

.method private showControlsHint()V
    .locals 4

    .prologue
    .line 504
    sget-object v1, Lcom/nativex/monetization/theme/ThemeElementTypes;->VIDEO_PLAYER_CONTROLS_HINT_SHOW_ANIMATION:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-static {v1}, Lcom/nativex/monetization/theme/ThemeManager;->getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 505
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 506
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    const/16 v1, 0x3eb

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 510
    return-void
.end method

.method private updateBuffer()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    iput v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    .line 242
    :cond_0
    const/16 v0, 0x3ea

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 243
    return-void
.end method

.method private updateProgress()V
    .locals 8

    .prologue
    .line 343
    iget-boolean v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controlsAreDisplayed:Z

    if-nez v5, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    if-eqz v5, :cond_0

    .line 349
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v5, :cond_0

    .line 352
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    .line 353
    .local v3, "position":I
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    .line 354
    .local v1, "duration":I
    if-le v3, v1, :cond_2

    .line 355
    move v3, v1

    .line 361
    :cond_2
    if-lez v1, :cond_4

    .line 362
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/nativex/monetization/custom/views/LinearProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nativex/monetization/custom/views/LinearProgressBar;->getMax()I

    move-result v5

    mul-int/2addr v5, v3

    div-int v2, v5, v1

    .line 367
    .local v2, "newPosition":I
    :goto_1
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/nativex/monetization/custom/views/LinearProgressBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nativex/monetization/custom/views/LinearProgressBar;->getMax()I

    move-result v5

    iget-object v6, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x64

    .line 369
    .local v0, "bufferedPosition":I
    const/4 v4, 0x0

    .line 370
    .local v4, "videoLength":Ljava/lang/String;
    if-lez v1, :cond_5

    .line 371
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 372
    invoke-direct {p0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->convertTime(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 374
    :cond_3
    iget-object v4, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoDuration:Ljava/lang/String;

    .line 379
    :goto_2
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/nativex/monetization/custom/views/LinearProgressBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nativex/monetization/custom/views/LinearProgressBar;->setPosition(I)V

    .line 380
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->customProgress:Lcom/nativex/monetization/custom/views/LinearProgressBar;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1300(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Lcom/nativex/monetization/custom/views/LinearProgressBar;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nativex/monetization/custom/views/LinearProgressBar;->setBufferPosition(I)V

    .line 381
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->elapsed:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1400(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->convertTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->duration:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$1500(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v5, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v5}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 385
    const/16 v5, 0x3e8

    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, v5, v6, v7}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    goto/16 :goto_0

    .line 364
    .end local v0    # "bufferedPosition":I
    .end local v2    # "newPosition":I
    .end local v4    # "videoLength":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "newPosition":I
    goto :goto_1

    .line 376
    .restart local v0    # "bufferedPosition":I
    .restart local v4    # "videoLength":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->convertTime(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public displayPlayPauseButton(Z)V
    .locals 1
    .param p1, "display"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_1

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->showPlayPauseButton()V

    .line 206
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->hidePlayPauseButton()V

    goto :goto_0

    .line 204
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->hidePlayButton:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getVideoProgress()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 320
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    int-to-float v2, v3

    .line 321
    .local v2, "position":F
    iget-object v3, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    int-to-float v1, v3

    .line 322
    .local v1, "duration":F
    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    .line 323
    move v2, v1

    .line 328
    :cond_0
    cmpl-float v3, v1, v4

    if-lez v3, :cond_2

    .line 329
    div-float v0, v2, v1

    .line 333
    .local v0, "currentPosition":F
    :goto_0
    cmpg-float v3, v0, v4

    if-gez v3, :cond_1

    .line 334
    const/4 v0, 0x0

    .line 336
    :cond_1
    return v0

    .line 331
    .end local v0    # "currentPosition":F
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "currentPosition":F
    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    .line 515
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPause()V

    .line 520
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->release()V

    .line 600
    iput-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 604
    iput-object v2, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->errorDialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    .line 606
    :cond_1
    sget-object v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    sget-object v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    sget-object v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    invoke-virtual {p0, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    invoke-virtual {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->removeAllViews()V

    .line 611
    return-void
.end method

.method public replay()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 824
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->prepared:Z

    .line 825
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->finished:Z

    .line 826
    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->paused:Z

    .line 827
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    .line 830
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 583
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->updateProgress()V

    .line 584
    return-void
.end method

.method public sendHandlerMessage(IJ)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .prologue
    .line 230
    sget-object v1, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 232
    sget-object v1, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    sget-object v1, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setOnCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClose"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onClose:Landroid/view/View$OnClickListener;

    .line 569
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    # getter for: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->close:Landroid/widget/Button;
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->access$600(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;)V
    .locals 0
    .param p1, "listener"    # Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userSetOnCompletionListener:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$OnVideoCompleted;

    .line 563
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->userOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 543
    return-void
.end method

.method public setVideoSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoURI:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->starting:Z

    .line 494
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-nez v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->createControls()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPlay()V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->buffered:I

    .line 499
    const/16 v0, 0x3ea

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->sendHandlerMessage(IJ)V

    .line 500
    invoke-direct {p0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->showControlsHint()V

    .line 501
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 548
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->controls:Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;

    invoke-virtual {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$Controls;->onPause()V

    .line 551
    :cond_0
    return-void
.end method
