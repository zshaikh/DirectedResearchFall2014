.class public Lcom/voxel/sdk/VoxelAppView;
.super Landroid/widget/RelativeLayout;
.source "VoxelAppView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/voxel/sdk/SessionListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;,
        Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;,
        Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;,
        Lcom/voxel/sdk/VoxelAppView$State;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppConfig:Lcom/voxel/sdk/VoxelAppConfig;

.field private mEventSequence:I

.field private mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

.field protected mSessionId:J

.field protected mSessionStats:Lcom/voxel/sdk/SessionStats;

.field protected mSessionToken:Ljava/lang/String;

.field protected mState:Lcom/voxel/sdk/VoxelAppView$State;

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field mTouchEventHandler:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/voxel/sdk/VoxelAppView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/VoxelAppView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 263
    new-instance v0, Lcom/voxel/sdk/VoxelAppView$1;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/VoxelAppView$1;-><init>(Lcom/voxel/sdk/VoxelAppView;)V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mTouchEventHandler:Landroid/view/View$OnTouchListener;

    .line 54
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelAppView;->initialize()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    new-instance v0, Lcom/voxel/sdk/VoxelAppView$1;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/VoxelAppView$1;-><init>(Lcom/voxel/sdk/VoxelAppView;)V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mTouchEventHandler:Landroid/view/View$OnTouchListener;

    .line 59
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelAppView;->initialize()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    new-instance v0, Lcom/voxel/sdk/VoxelAppView$1;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/VoxelAppView$1;-><init>(Lcom/voxel/sdk/VoxelAppView;)V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mTouchEventHandler:Landroid/view/View$OnTouchListener;

    .line 64
    invoke-direct {p0}, Lcom/voxel/sdk/VoxelAppView;->initialize()V

    .line 65
    return-void
.end method

.method static synthetic access$200(Lcom/voxel/sdk/VoxelAppView;)Lcom/voxel/sdk/PlayerEngine;
    .locals 1
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelAppView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/voxel/sdk/VoxelAppView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/voxel/sdk/VoxelAppView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/voxel/sdk/VoxelAppView;->processEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppView;->createSubViews()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/voxel/sdk/VoxelAppView;->mEventSequence:I

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mActivePointers:Ljava/util/Set;

    .line 72
    sget-object v0, Lcom/voxel/sdk/VoxelAppView$State;->STOPPED:Lcom/voxel/sdk/VoxelAppView$State;

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    .line 73
    new-instance v0, Lcom/voxel/sdk/SessionStats;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/sdk/SessionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mSessionStats:Lcom/voxel/sdk/SessionStats;

    .line 74
    return-void
.end method

.method private processEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 272
    iget-object v11, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    sget-object v12, Lcom/voxel/sdk/VoxelAppView$State;->STARTED:Lcom/voxel/sdk/VoxelAppView$State;

    if-eq v11, v12, :cond_0

    .line 340
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v1, Lcom/voxel/api/model/CVMEvent;

    invoke-direct {v1}, Lcom/voxel/api/model/CVMEvent;-><init>()V

    .line 276
    .local v1, "cvmEvent":Lcom/voxel/api/model/CVMEvent;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/voxel/api/model/CVMEvent;->setType(I)V

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Lcom/voxel/api/model/CVMEvent;->setTimestamp(J)V

    .line 278
    iget v11, p0, Lcom/voxel/sdk/VoxelAppView;->mEventSequence:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/voxel/sdk/VoxelAppView;->mEventSequence:I

    invoke-virtual {v1, v11}, Lcom/voxel/api/model/CVMEvent;->setSequence(I)V

    .line 280
    new-instance v10, Lcom/voxel/api/model/CVMTouchEvent;

    invoke-direct {v10}, Lcom/voxel/api/model/CVMTouchEvent;-><init>()V

    .line 282
    .local v10, "touchEvent":Lcom/voxel/api/model/CVMTouchEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 283
    .local v3, "motionEvent":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 284
    .local v0, "currentId":I
    const/4 v7, 0x0

    .line 286
    .local v7, "reliable":Z
    if-eqz v3, :cond_1

    const/4 v11, 0x5

    if-ne v3, v11, :cond_2

    .line 288
    :cond_1
    iget-object v11, p0, Lcom/voxel/sdk/VoxelAppView;->mActivePointers:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v8, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/voxel/sdk/VoxelAppView;->mActivePointers:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 293
    .local v5, "pointerId":I
    new-instance v9, Lcom/voxel/api/model/CVMTouch;

    invoke-direct {v9}, Lcom/voxel/api/model/CVMTouch;-><init>()V

    .line 294
    .local v9, "touch":Lcom/voxel/api/model/CVMTouch;
    invoke-virtual {v9, v5}, Lcom/voxel/api/model/CVMTouch;->setIndex(I)V

    .line 298
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 299
    .local v6, "pointerIndex":I
    iget-object v11, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/voxel/sdk/PlayerEngine;->createNormalizedPoint(FF)Lcom/voxel/util/Point;

    move-result-object v4

    .line 301
    .local v4, "p":Lcom/voxel/util/Point;
    iget v11, v4, Lcom/voxel/util/Point;->x:F

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setX(F)V

    .line 302
    iget v11, v4, Lcom/voxel/util/Point;->y:F

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setY(F)V

    .line 303
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setPressure(F)V

    .line 304
    const/high16 v11, 0x40a00000

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setRadius(F)V

    .line 306
    const/4 v11, 0x3

    if-eq v3, v11, :cond_3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_4

    .line 310
    :cond_3
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setType(I)V

    .line 311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const/4 v7, 0x1

    .line 334
    :goto_2
    invoke-virtual {v10, v9}, Lcom/voxel/api/model/CVMTouchEvent;->addTouch(Lcom/voxel/api/model/CVMTouch;)V

    goto :goto_1

    .line 313
    :cond_4
    if-ne v0, v5, :cond_5

    .line 314
    sparse-switch v3, :sswitch_data_0

    .line 328
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setType(I)V

    goto :goto_2

    .line 318
    :sswitch_0
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setType(I)V

    .line 319
    const/4 v7, 0x1

    .line 320
    goto :goto_2

    .line 322
    :sswitch_1
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setType(I)V

    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    const/4 v7, 0x1

    .line 326
    goto :goto_2

    .line 331
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/voxel/api/model/CVMTouch;->setType(I)V

    goto :goto_2

    .line 336
    .end local v4    # "p":Lcom/voxel/util/Point;
    .end local v5    # "pointerId":I
    .end local v6    # "pointerIndex":I
    .end local v9    # "touch":Lcom/voxel/api/model/CVMTouch;
    :cond_6
    iget-object v11, p0, Lcom/voxel/sdk/VoxelAppView;->mActivePointers:Ljava/util/Set;

    invoke-interface {v11, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 337
    invoke-virtual {v1, v10}, Lcom/voxel/api/model/CVMEvent;->setTouchEvent(Lcom/voxel/api/model/CVMTouchEvent;)V

    .line 339
    iget-object v11, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v11, v1, v7}, Lcom/voxel/sdk/PlayerEngine;->sendEvent(Lcom/voxel/api/model/CVMEvent;Z)V

    goto/16 :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addSessionListener(Lcom/voxel/sdk/SessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/voxel/sdk/SessionListener;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v0, p1}, Lcom/voxel/sdk/PlayerEngine;->addSessionListener(Lcom/voxel/sdk/SessionListener;)V

    .line 160
    return-void
.end method

.method protected createSubViews()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 244
    new-instance v1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 245
    new-instance v1, Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/voxel/sdk/PlayerEngine;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    .line 247
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 248
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 249
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 250
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 252
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/PlayerEngine;->setView(Landroid/opengl/GLSurfaceView;)V

    .line 253
    invoke-virtual {p0, p0}, Lcom/voxel/sdk/VoxelAppView;->addSessionListener(Lcom/voxel/sdk/SessionListener;)V

    .line 256
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 259
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/voxel/sdk/VoxelAppView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    return-void
.end method

.method public getAppConfig()Lcom/voxel/sdk/VoxelAppConfig;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mAppConfig:Lcom/voxel/sdk/VoxelAppConfig;

    return-object v0
.end method

.method public getControlRotation()I
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "appRotation":I
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v1}, Lcom/voxel/sdk/PlayerEngine;->getAppInfo()Lcom/voxel/api/model/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v1}, Lcom/voxel/sdk/PlayerEngine;->getAppInfo()Lcom/voxel/api/model/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/api/model/AppInfo;->getOrientation()I

    move-result v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v1}, Lcom/voxel/sdk/PlayerEngine;->getDeviceRotation()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1}, Lcom/voxel/util/RotationUtils;->normalizeDegrees(I)I

    move-result v1

    return v1
.end method

.method public getState()Lcom/voxel/sdk/VoxelAppView$State;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    return-object v0
.end method

.method protected logSessionEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;-><init>(Lcom/voxel/sdk/VoxelAppView;Lcom/voxel/sdk/VoxelAppView$1;)V

    .line 154
    .local v0, "task":Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView$LogSessionEventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public onSessionFailed(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    new-instance v0, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;-><init>(Lcom/voxel/sdk/VoxelAppView;Lcom/voxel/sdk/VoxelAppView$1;)V

    .line 376
    .local v0, "task":Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;
    new-array v1, v5, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    const-string v1, "session failed with code: %d, message: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/voxel/sdk/VoxelAppView;->logSessionEvent(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onSessionFinished(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x1

    .line 387
    new-instance v0, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;-><init>(Lcom/voxel/sdk/VoxelAppView;Lcom/voxel/sdk/VoxelAppView$1;)V

    .line 388
    .local v0, "task":Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;
    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 393
    return-void
.end method

.method public onSessionStarted(Lcom/voxel/api/model/AppInfo;Lcom/voxel/api/model/CampaignInfo;)V
    .locals 4
    .param p1, "appInfo"    # Lcom/voxel/api/model/AppInfo;
    .param p2, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    const/4 v3, 0x1

    .line 365
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppView;->mSessionStats:Lcom/voxel/sdk/SessionStats;

    const-string v2, "connect_delay_vm"

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/SessionStats;->finishTimerFor(Ljava/lang/String;)V

    .line 366
    new-instance v0, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;-><init>(Lcom/voxel/sdk/VoxelAppView;Lcom/voxel/sdk/VoxelAppView$1;)V

    .line 367
    .local v0, "task":Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;
    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView$UpdateMetricsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    const-string v1, "frame received from client, session started"

    invoke-virtual {p0, v1}, Lcom/voxel/sdk/VoxelAppView;->logSessionEvent(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public removeSessionListener(Lcom/voxel/sdk/SessionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/voxel/sdk/SessionListener;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v0, p1}, Lcom/voxel/sdk/PlayerEngine;->addSessionListener(Lcom/voxel/sdk/SessionListener;)V

    .line 164
    return-void
.end method

.method public setAppConfig(I)V
    .locals 3
    .param p1, "campaignId"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/voxel/sdk/VoxelAppConfig;

    invoke-direct {v0}, Lcom/voxel/sdk/VoxelAppConfig;-><init>()V

    .line 78
    .local v0, "config":Lcom/voxel/sdk/VoxelAppConfig;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/voxel/sdk/VoxelAppConfig;->setCampaignId(J)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/voxel/sdk/VoxelAppView;->setAppConfig(Lcom/voxel/sdk/VoxelAppConfig;)V

    .line 80
    return-void
.end method

.method public setAppConfig(Lcom/voxel/sdk/VoxelAppConfig;)V
    .locals 1
    .param p1, "appConfig"    # Lcom/voxel/sdk/VoxelAppConfig;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppView;->mAppConfig:Lcom/voxel/sdk/VoxelAppConfig;

    .line 85
    sget-object v0, Lcom/voxel/sdk/VoxelAppView$State;->PREPARED:Lcom/voxel/sdk/VoxelAppView$State;

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    .line 87
    return-void
.end method

.method protected setAudioEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v0, p1}, Lcom/voxel/sdk/PlayerEngine;->setAudioEnabled(Z)V

    .line 150
    return-void
.end method

.method protected setBlurEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v0, p1}, Lcom/voxel/sdk/PlayerEngine;->setBlurEnabled(Z)V

    .line 146
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    sget-object v3, Lcom/voxel/sdk/VoxelAppView$State;->STARTED:Lcom/voxel/sdk/VoxelAppView$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    sget-object v3, Lcom/voxel/sdk/VoxelAppView$State;->STARTING:Lcom/voxel/sdk/VoxelAppView$State;

    if-ne v2, v3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    sget-object v3, Lcom/voxel/sdk/VoxelAppView$State;->PREPARED:Lcom/voxel/sdk/VoxelAppView$State;

    if-eq v2, v3, :cond_2

    .line 102
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VoxelAppView has not been prepared"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_2
    sget-object v2, Lcom/voxel/sdk/VoxelAppView$State;->STARTING:Lcom/voxel/sdk/VoxelAppView$State;

    iput-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    .line 107
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppView;->mTouchEventHandler:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getConnectionMonitor()Lcom/voxel/sdk/ConnectionMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/sdk/ConnectionMonitor;->getBestDatacenters()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "datacenters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/voxel/sdk/VoxelAppView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting session with preferred DCs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mAppConfig:Lcom/voxel/sdk/VoxelAppConfig;

    invoke-virtual {v2, v0}, Lcom/voxel/sdk/VoxelAppConfig;->setDatacenters(Ljava/util/List;)V

    .line 115
    new-instance v1, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;-><init>(Lcom/voxel/sdk/VoxelAppView;Lcom/voxel/sdk/VoxelAppView$1;)V

    .line 116
    .local v1, "task":Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/voxel/sdk/VoxelAppConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/voxel/sdk/VoxelAppView;->mAppConfig:Lcom/voxel/sdk/VoxelAppConfig;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/VoxelAppView$CreateSessionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requesting session with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppView;->mAppConfig:Lcom/voxel/sdk/VoxelAppConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/voxel/sdk/VoxelAppView;->logSessionEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->STARTED:Lcom/voxel/sdk/VoxelAppView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    sget-object v1, Lcom/voxel/sdk/VoxelAppView$State;->STARTING:Lcom/voxel/sdk/VoxelAppView$State;

    if-eq v0, v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelAppView$State;->STOPPED:Lcom/voxel/sdk/VoxelAppView$State;

    iput-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mState:Lcom/voxel/sdk/VoxelAppView$State;

    .line 128
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v0}, Lcom/voxel/sdk/PlayerEngine;->stop()V

    .line 133
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mPlayerEngine:Lcom/voxel/sdk/PlayerEngine;

    invoke-virtual {v0, v2}, Lcom/voxel/sdk/PlayerEngine;->setView(Landroid/opengl/GLSurfaceView;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 346
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 351
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 355
    sget-object v0, Lcom/voxel/sdk/VoxelAppView;->TAG:Ljava/lang/String;

    const-string v1, "surface destroyed, stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 357
    iput-object v2, p0, Lcom/voxel/sdk/VoxelAppView;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 358
    invoke-virtual {p0}, Lcom/voxel/sdk/VoxelAppView;->stop()V

    .line 359
    return-void
.end method
