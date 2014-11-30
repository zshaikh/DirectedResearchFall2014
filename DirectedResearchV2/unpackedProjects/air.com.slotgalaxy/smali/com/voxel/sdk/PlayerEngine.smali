.class public Lcom/voxel/sdk/PlayerEngine;
.super Ljava/lang/Object;
.source "PlayerEngine.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/PlayerEngine$ErrorCode;,
        Lcom/voxel/sdk/PlayerEngine$State;
    }
.end annotation


# static fields
.field private static final AUDIO_SAMPLE_RATE:I = 0xbb80

.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0x3e80

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private containerHeight:I

.field private containerWidth:I

.field private contentHeight:I

.field private contentWidth:I

.field private mAppInfo:Lcom/voxel/api/model/AppInfo;

.field private mAudioEnabled:Z

.field private mAudioOutBuffer:[B

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

.field private mDeviceRotation:I

.field private mEngineHandler:Landroid/os/Handler;

.field private mFrameRendered:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mNativePointer:J

.field private mPlayerOptions:Lcom/voxel/sdk/PlayerOptions;

.field private mSessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/voxel/sdk/SessionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSessionToken:Ljava/lang/String;

.field private mState:Lcom/voxel/sdk/PlayerEngine$State;

.field private mSurfaceRotation:I

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mTimeStarted:J

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private marginLeft:I

.field private marginTop:I

.field private scale:F

.field private sizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/PlayerEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "tempDir"    # Ljava/lang/String;

    .prologue
    const v2, 0xbb80

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeStarted:J

    .line 107
    new-instance v0, Lcom/voxel/sdk/PlayerEngine$1;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/PlayerEngine$1;-><init>(Lcom/voxel/sdk/PlayerEngine;)V

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 117
    invoke-direct {p0, p1}, Lcom/voxel/sdk/PlayerEngine;->native_player_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mSessionListeners:Ljava/util/List;

    .line 120
    sget-object v0, Lcom/voxel/sdk/PlayerEngine$State;->STOPPED:Lcom/voxel/sdk/PlayerEngine$State;

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxel/sdk/PlayerEngine;->mFrameRendered:Z

    .line 123
    iput-boolean v6, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioEnabled:Z

    .line 125
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 127
    .local v7, "bufSize":I
    const/16 v0, 0x3e80

    if-ge v7, v0, :cond_0

    .line 128
    const/16 v7, 0x3e80

    .line 130
    :cond_0
    new-array v0, v7, [B

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioOutBuffer:[B

    .line 131
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioOutBuffer:[B

    array-length v5, v5

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/voxel/sdk/PlayerEngine;)Lcom/voxel/sdk/PlayerEngine$State;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/voxel/sdk/PlayerEngine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mSessionListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/voxel/sdk/PlayerEngine;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine;->mEngineHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/voxel/sdk/PlayerEngine;)Lcom/voxel/api/model/AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/voxel/sdk/PlayerEngine;)Lcom/voxel/api/model/CampaignInfo;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/voxel/sdk/PlayerEngine;)J
    .locals 2
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/voxel/sdk/PlayerEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/voxel/sdk/PlayerEngine;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/voxel/sdk/PlayerEngine;->native_player_connect(JLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/voxel/sdk/PlayerEngine;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$502(Lcom/voxel/sdk/PlayerEngine;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;
    .param p1, "x1"    # Landroid/media/AudioTrack;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/voxel/sdk/PlayerEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/voxel/sdk/PlayerEngine;J)V
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;
    .param p1, "x1"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/voxel/sdk/PlayerEngine;->native_player_disconnect(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/voxel/sdk/PlayerEngine;JLcom/voxel/api/model/CVMEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/voxel/api/model/CVMEvent;
    .param p4, "x3"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/sdk/PlayerEngine;->native_send_event(JLcom/voxel/api/model/CVMEvent;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/voxel/sdk/PlayerEngine;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/PlayerEngine;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/sdk/PlayerEngine;->native_send_json(JLjava/lang/String;)V

    return-void
.end method

.method private declared-synchronized configureNativeSize()V
    .locals 12

    .prologue
    const/high16 v2, 0x3f800000

    .line 578
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->contentWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 584
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_3

    .line 585
    :cond_2
    iget v9, p0, Lcom/voxel/sdk/PlayerEngine;->contentWidth:I

    .line 586
    .local v9, "convertedContentWidth":I
    iget v8, p0, Lcom/voxel/sdk/PlayerEngine;->contentHeight:I

    .line 592
    .local v8, "convertedContentHeight":I
    :goto_1
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v9

    div-float v11, v0, v1

    .line 593
    .local v11, "scaleW":F
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->containerHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v8

    div-float v10, v0, v1

    .line 594
    .local v10, "scaleH":F
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/voxel/sdk/PlayerEngine;->scale:F

    .line 595
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->scale:F

    int-to-float v1, v9

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 596
    .local v3, "targetWidth":I
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->scale:F

    int-to-float v1, v8

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 597
    .local v4, "targetHeight":I
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/voxel/sdk/PlayerEngine;->marginLeft:I

    .line 598
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->containerHeight:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/voxel/sdk/PlayerEngine;->marginTop:I

    .line 599
    iget-wide v1, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    iget v5, p0, Lcom/voxel/sdk/PlayerEngine;->marginLeft:I

    iget v6, p0, Lcom/voxel/sdk/PlayerEngine;->marginTop:I

    iget v7, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/voxel/sdk/PlayerEngine;->native_gl_resize(JIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 578
    .end local v3    # "targetWidth":I
    .end local v4    # "targetHeight":I
    .end local v8    # "convertedContentHeight":I
    .end local v9    # "convertedContentWidth":I
    .end local v10    # "scaleH":F
    .end local v11    # "scaleW":F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 588
    :cond_3
    :try_start_2
    iget v9, p0, Lcom/voxel/sdk/PlayerEngine;->contentHeight:I

    .line 589
    .restart local v9    # "convertedContentWidth":I
    iget v8, p0, Lcom/voxel/sdk/PlayerEngine;->contentWidth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v8    # "convertedContentHeight":I
    goto :goto_1
.end method

.method private native native_gl_render(J)V
.end method

.method private native native_gl_resize(JIIIII)V
.end method

.method private native native_gl_set_blur_enabled(JZ)V
.end method

.method private native native_player_connect(JLjava/lang/String;ILjava/lang/String;)V
.end method

.method private native native_player_destroy(J)V
.end method

.method private native native_player_disconnect(J)V
.end method

.method private native native_player_init(Ljava/lang/String;)J
.end method

.method private native native_player_set_connection_message(JLjava/lang/String;)V
.end method

.method private native native_send_event(JLcom/voxel/api/model/CVMEvent;Z)V
.end method

.method private native native_send_json(JLjava/lang/String;)V
.end method


# virtual methods
.method public addSessionListener(Lcom/voxel/sdk/SessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/voxel/sdk/SessionListener;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mSessionListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    return-void
.end method

.method protected configureRotation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    iget v1, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_0

    move v0, v4

    .line 369
    .local v0, "deviceLandscape":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 370
    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    invoke-virtual {v1}, Lcom/voxel/api/model/AppInfo;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    invoke-virtual {v1}, Lcom/voxel/api/model/AppInfo;->getOrientation()I

    move-result v1

    sub-int v1, v3, v1

    iput v1, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    .line 380
    :goto_1
    iget v1, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    invoke-static {v1}, Lcom/voxel/util/RotationUtils;->normalizeDegrees(I)I

    move-result v1

    iput v1, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    .line 382
    iput-boolean v4, p0, Lcom/voxel/sdk/PlayerEngine;->sizeChanged:Z

    .line 383
    return-void

    .end local v0    # "deviceLandscape":Z
    :cond_0
    move v0, v3

    .line 367
    goto :goto_0

    .line 374
    .restart local v0    # "deviceLandscape":Z
    :cond_1
    iget v1, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    goto :goto_1

    .line 377
    :cond_2
    iput v3, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    goto :goto_1
.end method

.method public connectToVM(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 138
    const/16 v0, 0x2710

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/voxel/sdk/PlayerEngine;->connectToVM(Ljava/lang/String;ILjava/lang/String;I)V

    .line 139
    return-void
.end method

.method public connectToVM(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .prologue
    .line 143
    iput-object p3, p0, Lcom/voxel/sdk/PlayerEngine;->mSessionToken:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine;->mPlayerOptions:Lcom/voxel/sdk/PlayerOptions;

    .line 147
    .local v1, "options":Lcom/voxel/sdk/PlayerOptions;
    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lcom/voxel/sdk/PlayerOptions;

    .end local v1    # "options":Lcom/voxel/sdk/PlayerOptions;
    invoke-direct {v1}, Lcom/voxel/sdk/PlayerOptions;-><init>()V

    .line 149
    .restart local v1    # "options":Lcom/voxel/sdk/PlayerOptions;
    const-string v2, "rtp"

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/PlayerOptions;->setProtocol(Ljava/lang/String;)V

    .line 150
    const/16 v2, 0x600

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/PlayerOptions;->setBitRate(I)V

    .line 151
    const-string v2, "w8n2"

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/PlayerOptions;->setFecType(Ljava/lang/String;)V

    .line 154
    :cond_0
    iget v2, p0, Lcom/voxel/sdk/PlayerEngine;->containerHeight:I

    iget v3, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I

    if-le v2, v3, :cond_2

    .line 155
    iget v2, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/PlayerOptions;->setWidth(I)V

    .line 156
    iget v2, p0, Lcom/voxel/sdk/PlayerEngine;->containerHeight:I

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/PlayerOptions;->setHeight(I)V

    .line 162
    :goto_0
    invoke-virtual {p0, v1}, Lcom/voxel/sdk/PlayerEngine;->setPlayerOptions(Lcom/voxel/sdk/PlayerOptions;)V

    .line 164
    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v3, Lcom/voxel/sdk/PlayerEngine$State;->FINISHED:Lcom/voxel/sdk/PlayerEngine$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mEngineHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 166
    new-instance v0, Lcom/voxel/sdk/PlayerEngine$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxel/sdk/PlayerEngine$2;-><init>(Lcom/voxel/sdk/PlayerEngine;Ljava/lang/String;I)V

    .line 176
    .local v0, "engineThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    .end local v0    # "engineThread":Ljava/lang/Thread;
    :cond_1
    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void

    .line 158
    :cond_2
    iget v2, p0, Lcom/voxel/sdk/PlayerEngine;->containerHeight:I

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/PlayerOptions;->setWidth(I)V

    .line 159
    iget v2, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/PlayerOptions;->setHeight(I)V

    goto :goto_0
.end method

.method protected createNormalizedPoint(FF)Lcom/voxel/util/Point;
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 323
    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->marginLeft:I

    int-to-float v10, v10

    sub-float/2addr p1, v10

    .line 324
    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->marginTop:I

    int-to-float v10, v10

    sub-float p2, p2, v10

    .line 327
    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    if-lez v10, :cond_0

    .line 328
    const/4 v10, 0x0

    iget v11, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Lcom/voxel/util/RotationUtils;->normalizeDegrees(I)I

    move-result v10

    int-to-float v3, v10

    .line 329
    .local v3, "deg":F
    const/high16 v10, 0x43340000

    cmpg-float v10, v3, v10

    if-gez v10, :cond_5

    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I

    iget v11, p0, Lcom/voxel/sdk/PlayerEngine;->containerHeight:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v5, v10

    .line 332
    .local v5, "pivot":I
    :goto_0
    div-int/lit8 v0, v5, 0x2

    .line 333
    .local v0, "centerX":I
    div-int/lit8 v1, v5, 0x2

    .line 334
    .local v1, "centerY":I
    float-to-double v10, v3

    const-wide v12, 0x400921fb54442d18L

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L

    div-double/2addr v10, v12

    double-to-float v6, v10

    .line 335
    .local v6, "rad":F
    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v7, v10

    .line 336
    .local v7, "sin":F
    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 337
    .local v2, "cos":F
    int-to-float v10, v0

    sub-float/2addr p1, v10

    .line 338
    int-to-float v10, v1

    sub-float p2, p2, v10

    .line 340
    mul-float v10, p1, v2

    mul-float v11, p2, v7

    sub-float v8, v10, v11

    .line 341
    .local v8, "tmpX":F
    mul-float v10, p2, v2

    mul-float v11, p1, v7

    add-float v9, v10, v11

    .line 342
    .local v9, "tmpY":F
    int-to-float v10, v0

    add-float p1, v8, v10

    .line 343
    int-to-float v10, v1

    add-float p2, v9, v10

    .line 347
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v2    # "cos":F
    .end local v3    # "deg":F
    .end local v5    # "pivot":I
    .end local v6    # "rad":F
    .end local v7    # "sin":F
    .end local v8    # "tmpX":F
    .end local v9    # "tmpY":F
    :cond_0
    new-instance v4, Lcom/voxel/util/Point;

    invoke-direct {v4}, Lcom/voxel/util/Point;-><init>()V

    .line 348
    .local v4, "p":Lcom/voxel/util/Point;
    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->scale:F

    div-float v10, p1, v10

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v4, Lcom/voxel/util/Point;->x:F

    .line 349
    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->scale:F

    div-float v10, p2, v10

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v4, Lcom/voxel/util/Point;->y:F

    .line 351
    iget v10, v4, Lcom/voxel/util/Point;->x:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 352
    const/4 v10, 0x0

    iput v10, v4, Lcom/voxel/util/Point;->x:F

    .line 353
    :cond_1
    iget v10, v4, Lcom/voxel/util/Point;->x:F

    iget v11, p0, Lcom/voxel/sdk/PlayerEngine;->contentWidth:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 354
    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->contentWidth:I

    int-to-float v10, v10

    iput v10, v4, Lcom/voxel/util/Point;->x:F

    .line 355
    :cond_2
    iget v10, v4, Lcom/voxel/util/Point;->y:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 356
    const/4 v10, 0x0

    iput v10, v4, Lcom/voxel/util/Point;->y:F

    .line 357
    :cond_3
    iget v10, v4, Lcom/voxel/util/Point;->y:F

    iget v11, p0, Lcom/voxel/sdk/PlayerEngine;->contentHeight:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 358
    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->contentHeight:I

    int-to-float v10, v10

    iput v10, v4, Lcom/voxel/util/Point;->y:F

    .line 361
    :cond_4
    iget v10, v4, Lcom/voxel/util/Point;->x:F

    iget v11, p0, Lcom/voxel/sdk/PlayerEngine;->contentWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v4, Lcom/voxel/util/Point;->x:F

    .line 362
    iget v10, v4, Lcom/voxel/util/Point;->y:F

    iget v11, p0, Lcom/voxel/sdk/PlayerEngine;->contentHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v4, Lcom/voxel/util/Point;->y:F

    .line 363
    return-object v4

    .line 329
    .end local v4    # "p":Lcom/voxel/util/Point;
    .restart local v3    # "deg":F
    :cond_5
    iget v10, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I

    iget v11, p0, Lcom/voxel/sdk/PlayerEngine;->containerHeight:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v5, v10

    goto/16 :goto_0
.end method

.method protected dispatchSessionFailed(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$State;->FAILED:Lcom/voxel/sdk/PlayerEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$State;->FINISHED:Lcom/voxel/sdk/PlayerEngine$State;

    if-ne v0, v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    sget-object v0, Lcom/voxel/sdk/PlayerEngine$State;->FAILED:Lcom/voxel/sdk/PlayerEngine$State;

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    .line 425
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/sdk/PlayerEngine$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/voxel/sdk/PlayerEngine$8;-><init>(Lcom/voxel/sdk/PlayerEngine;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected dispatchSessionFailed(Lcom/voxel/sdk/PlayerEngine$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/voxel/sdk/PlayerEngine$ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-virtual {p1}, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFailed(ILjava/lang/String;)V

    .line 441
    return-void
.end method

.method protected dispatchSessionFinished()V
    .locals 6

    .prologue
    .line 445
    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v3, Lcom/voxel/sdk/PlayerEngine$State;->FAILED:Lcom/voxel/sdk/PlayerEngine$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v3, Lcom/voxel/sdk/PlayerEngine$State;->FINISHED:Lcom/voxel/sdk/PlayerEngine$State;

    if-ne v2, v3, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-wide v2, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeStarted:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeStarted:J

    .line 452
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeStarted:J

    sub-long v0, v2, v4

    .line 453
    .local v0, "duration":J
    sget-object v2, Lcom/voxel/sdk/PlayerEngine$State;->FINISHED:Lcom/voxel/sdk/PlayerEngine$State;

    iput-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    .line 454
    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 455
    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/voxel/sdk/PlayerEngine$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/voxel/sdk/PlayerEngine$9;-><init>(Lcom/voxel/sdk/PlayerEngine;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected dispatchSessionStarted()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$State;->STOPPED:Lcom/voxel/sdk/PlayerEngine$State;

    if-eq v0, v1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeStarted:J

    .line 405
    sget-object v0, Lcom/voxel/sdk/PlayerEngine$State;->STARTED:Lcom/voxel/sdk/PlayerEngine$State;

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    .line 406
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/sdk/PlayerEngine$7;

    invoke-direct {v1, p0}, Lcom/voxel/sdk/PlayerEngine$7;-><init>(Lcom/voxel/sdk/PlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public finalize()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 230
    iget-wide v0, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 231
    iget-wide v0, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/voxel/sdk/PlayerEngine;->native_player_destroy(J)V

    .line 232
    iput-wide v2, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    .line 234
    :cond_0
    return-void
.end method

.method public getAppInfo()Lcom/voxel/api/model/AppInfo;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    return-object v0
.end method

.method public getDeviceRotation()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    return v0
.end method

.method public getSurfaceRotation()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceRotation:I

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$State;->STARTED:Lcom/voxel/sdk/PlayerEngine$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioReady([BI)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioEnabled:Z

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$State;->FINISHED:Lcom/voxel/sdk/PlayerEngine$State;

    if-eq v0, v1, :cond_0

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 553
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/voxel/sdk/PlayerEngine;->sizeChanged:Z

    if-eqz v0, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/voxel/sdk/PlayerEngine;->configureNativeSize()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxel/sdk/PlayerEngine;->sizeChanged:Z

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_1

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-wide v0, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/voxel/sdk/PlayerEngine;->native_gl_render(J)V

    goto :goto_0
.end method

.method public onRenderReady()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$State;->STOPPED:Lcom/voxel/sdk/PlayerEngine$State;

    if-ne v0, v1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/voxel/sdk/PlayerEngine;->dispatchSessionStarted()V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_1

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voxel/sdk/PlayerEngine;->mFrameRendered:Z

    .line 540
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public onSessionFailed(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFailed(ILjava/lang/String;)V

    .line 572
    return-void
.end method

.method public onStreamDisconnected()V
    .locals 0

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/voxel/sdk/PlayerEngine;->stop()V

    .line 568
    return-void
.end method

.method public onStreamInfoReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "streamInfoString"    # Ljava/lang/String;

    .prologue
    const-string v2, "width"

    const-string v2, "height"

    .line 515
    if-nez p1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 518
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    const-string v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/voxel/sdk/PlayerEngine;->contentWidth:I

    .line 522
    :cond_1
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 523
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/voxel/sdk/PlayerEngine;->contentHeight:I

    .line 525
    :cond_2
    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    iget v3, p0, Lcom/voxel/sdk/PlayerEngine;->contentWidth:I

    invoke-virtual {v2, v3}, Lcom/voxel/api/model/AppInfo;->setWidth(I)V

    .line 526
    iget-object v2, p0, Lcom/voxel/sdk/PlayerEngine;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    iget v3, p0, Lcom/voxel/sdk/PlayerEngine;->contentHeight:I

    invoke-virtual {v2, v3}, Lcom/voxel/api/model/AppInfo;->setHeight(I)V

    .line 528
    invoke-virtual {p0}, Lcom/voxel/sdk/PlayerEngine;->configureRotation()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 530
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/voxel/sdk/PlayerEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 484
    iput p2, p0, Lcom/voxel/sdk/PlayerEngine;->containerWidth:I

    .line 485
    iput p3, p0, Lcom/voxel/sdk/PlayerEngine;->containerHeight:I

    .line 487
    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 491
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 501
    iput v3, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    .line 505
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/sdk/PlayerEngine;->configureRotation()V

    .line 506
    return-void

    .line 494
    :pswitch_0
    iput v3, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    goto :goto_0

    .line 498
    :pswitch_1
    const/16 v1, 0x5a

    iput v1, p0, Lcom/voxel/sdk/PlayerEngine;->mDeviceRotation:I

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 511
    return-void
.end method

.method public removeSessionListener(Lcom/voxel/sdk/SessionListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/voxel/sdk/SessionListener;

    .prologue
    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/voxel/sdk/SessionListener;>;>;"
    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine;->mSessionListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 393
    .local v1, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/voxel/sdk/SessionListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 394
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    .end local v1    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/voxel/sdk/SessionListener;>;"
    :cond_1
    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine;->mSessionListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 398
    return-void
.end method

.method protected sendEvent(Lcom/voxel/api/model/CVMEvent;Z)V
    .locals 2
    .param p1, "event"    # Lcom/voxel/api/model/CVMEvent;
    .param p2, "reliable"    # Z

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/voxel/sdk/PlayerEngine;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mEngineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/sdk/PlayerEngine$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/voxel/sdk/PlayerEngine$5;-><init>(Lcom/voxel/sdk/PlayerEngine;Lcom/voxel/api/model/CVMEvent;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected sendJSON(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/voxel/sdk/PlayerEngine;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mEngineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/sdk/PlayerEngine$6;

    invoke-direct {v1, p0, p1}, Lcom/voxel/sdk/PlayerEngine$6;-><init>(Lcom/voxel/sdk/PlayerEngine;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setAppInfo(Lcom/voxel/api/model/AppInfo;Lcom/voxel/api/model/CampaignInfo;)V
    .locals 0
    .param p1, "appInfo"    # Lcom/voxel/api/model/AppInfo;
    .param p2, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine;->mAppInfo:Lcom/voxel/api/model/AppInfo;

    .line 273
    iput-object p2, p0, Lcom/voxel/sdk/PlayerEngine;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;

    .line 274
    return-void
.end method

.method public setAudioEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/voxel/sdk/PlayerEngine;->mAudioEnabled:Z

    .line 282
    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/voxel/sdk/PlayerEngine;->native_gl_set_blur_enabled(JZ)V

    .line 278
    return-void
.end method

.method public setPlayerOptions(Lcom/voxel/sdk/PlayerOptions;)V
    .locals 5
    .param p1, "options"    # Lcom/voxel/sdk/PlayerOptions;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine;->mPlayerOptions:Lcom/voxel/sdk/PlayerOptions;

    .line 246
    const/4 v2, 0x0

    .line 248
    .local v2, "object":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p1}, Lcom/voxel/sdk/PlayerOptions;->toJSON()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 256
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 257
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "object":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .restart local v2    # "object":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v3, "action"

    const-string v4, "start"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v3, "session_token"

    iget-object v4, p0, Lcom/voxel/sdk/PlayerEngine;->mSessionToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "message":Ljava/lang/String;
    iget-wide v3, p0, Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J

    invoke-direct {p0, v3, v4, v1}, Lcom/voxel/sdk/PlayerEngine;->native_player_set_connection_message(JLjava/lang/String;)V

    .line 269
    return-void

    .line 251
    .end local v1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/voxel/sdk/PlayerEngine;->TAG:Ljava/lang/String;

    const-string v4, "Could not serialize playerOptions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public setView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p1, "surface"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 238
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 183
    sget-object v0, Lcom/voxel/sdk/PlayerEngine;->TAG:Ljava/lang/String;

    const-string v1, "Stopping native player"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/sdk/PlayerEngine$3;

    invoke-direct {v1, p0}, Lcom/voxel/sdk/PlayerEngine$3;-><init>(Lcom/voxel/sdk/PlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mEngineHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voxel/sdk/PlayerEngine;->sendJSON(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mEngineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/sdk/PlayerEngine$4;

    invoke-direct {v1, p0}, Lcom/voxel/sdk/PlayerEngine$4;-><init>(Lcom/voxel/sdk/PlayerEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mEngineHandler:Landroid/os/Handler;

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/sdk/PlayerEngine;->mFrameRendered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$State;->STARTED:Lcom/voxel/sdk/PlayerEngine$State;

    if-eq v0, v1, :cond_2

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFinished()V

    .line 226
    :goto_1
    return-void

    .line 224
    :cond_2
    sget-object v0, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->NO_FRAME:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v1, "Session ended before receiving a frame"

    invoke-virtual {p0, v0, v1}, Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFailed(Lcom/voxel/sdk/PlayerEngine$ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method
