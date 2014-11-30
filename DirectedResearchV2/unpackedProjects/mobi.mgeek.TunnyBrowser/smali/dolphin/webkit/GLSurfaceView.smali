.class public Ldolphin/webkit/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sEGLProviderInfo:Ldolphin/webkit/ch;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Ldolphin/webkit/cf;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Ldolphin/webkit/cg;

.field private mEGLWindowSurfaceFactory:Ldolphin/webkit/ci;

.field private mGLRenderProx:Ldolphin/webkit/ck;

.field private mGLWrapper:Ldolphin/webkit/cl;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Ldolphin/webkit/cm;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1197
    new-instance v0, Ldolphin/webkit/ch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldolphin/webkit/ch;-><init>(Ldolphin/webkit/ca;)V

    sput-object v0, Ldolphin/webkit/GLSurfaceView;->sEGLProviderInfo:Ldolphin/webkit/ch;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/GLSurfaceView;->mSizeChanged:Z

    .line 71
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/GLSurfaceView;->mSizeChanged:Z

    .line 80
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceView;->init()V

    .line 81
    return-void
.end method

.method static synthetic access$1000(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/ck;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    return-object v0
.end method

.method static synthetic access$300(Ldolphin/webkit/GLSurfaceView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$400(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/cf;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLConfigChooser:Ldolphin/webkit/cf;

    return-object v0
.end method

.method static synthetic access$500(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/cg;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLContextFactory:Ldolphin/webkit/cg;

    return-object v0
.end method

.method static synthetic access$600(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/ci;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLWindowSurfaceFactory:Ldolphin/webkit/ci;

    return-object v0
.end method

.method static synthetic access$700(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/cl;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLWrapper:Ldolphin/webkit/cl;

    return-object v0
.end method

.method static synthetic access$800()Ldolphin/webkit/ch;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ldolphin/webkit/GLSurfaceView;->sEGLProviderInfo:Ldolphin/webkit/ch;

    return-object v0
.end method

.method static synthetic access$900(Ldolphin/webkit/GLSurfaceView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Ldolphin/webkit/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$902(Ldolphin/webkit/GLSurfaceView;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Ldolphin/webkit/GLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    if-eqz v0, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Ldolphin/webkit/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 87
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 95
    return-void
.end method


# virtual methods
.method public clearContext()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    invoke-static {v0}, Ldolphin/webkit/ck;->a(Ldolphin/webkit/ck;)V

    .line 357
    return-void
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Ldolphin/webkit/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Ldolphin/webkit/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 388
    iget-boolean v0, p0, Ldolphin/webkit/GLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mRenderer:Ldolphin/webkit/cm;

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Ldolphin/webkit/ck;

    iget-object v1, p0, Ldolphin/webkit/GLSurfaceView;->mRenderer:Ldolphin/webkit/cm;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/ck;-><init>(Ldolphin/webkit/GLSurfaceView;Ldolphin/webkit/cm;)V

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    .line 391
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/GLSurfaceView;->mDetached:Z

    .line 392
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/GLSurfaceView;->mDetached:Z

    .line 402
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 403
    return-void
.end method

.method public onPauseRender()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    invoke-virtual {v0}, Ldolphin/webkit/ck;->e()Z

    move-result v0

    return v0
.end method

.method public onResumeRender()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    invoke-virtual {v0}, Ldolphin/webkit/ck;->f()V

    .line 379
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    invoke-virtual {v0}, Ldolphin/webkit/ck;->b()V

    .line 328
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Ldolphin/webkit/GLSurfaceView;->mDebugFlags:I

    .line 125
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8

    .prologue
    .line 284
    new-instance v0, Ldolphin/webkit/cc;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Ldolphin/webkit/cc;-><init>(Ldolphin/webkit/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Ldolphin/webkit/GLSurfaceView;->setEGLConfigChooser(Ldolphin/webkit/cf;)V

    .line 286
    return-void
.end method

.method public setEGLConfigChooser(Ldolphin/webkit/cf;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceView;->checkRenderThreadState()V

    .line 248
    iput-object p1, p0, Ldolphin/webkit/GLSurfaceView;->mEGLConfigChooser:Ldolphin/webkit/cf;

    .line 249
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Ldolphin/webkit/cn;

    invoke-direct {v0, p0, p1}, Ldolphin/webkit/cn;-><init>(Ldolphin/webkit/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Ldolphin/webkit/GLSurfaceView;->setEGLConfigChooser(Ldolphin/webkit/cf;)V

    .line 267
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceView;->checkRenderThreadState()V

    .line 316
    iput p1, p0, Ldolphin/webkit/GLSurfaceView;->mEGLContextClientVersion:I

    .line 317
    return-void
.end method

.method public setEGLContextFactory(Ldolphin/webkit/cg;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceView;->checkRenderThreadState()V

    .line 217
    iput-object p1, p0, Ldolphin/webkit/GLSurfaceView;->mEGLContextFactory:Ldolphin/webkit/cg;

    .line 218
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Ldolphin/webkit/ci;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceView;->checkRenderThreadState()V

    .line 231
    iput-object p1, p0, Ldolphin/webkit/GLSurfaceView;->mEGLWindowSurfaceFactory:Ldolphin/webkit/ci;

    .line 232
    return-void
.end method

.method public setGLWrapper(Ldolphin/webkit/cl;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Ldolphin/webkit/GLSurfaceView;->mGLWrapper:Ldolphin/webkit/cl;

    .line 112
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Ldolphin/webkit/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 155
    return-void
.end method

.method public setRenderer(Ldolphin/webkit/cm;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceView;->checkRenderThreadState()V

    .line 192
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLConfigChooser:Ldolphin/webkit/cf;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ldolphin/webkit/cn;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/cn;-><init>(Ldolphin/webkit/GLSurfaceView;Z)V

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLConfigChooser:Ldolphin/webkit/cf;

    .line 195
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLContextFactory:Ldolphin/webkit/cg;

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ldolphin/webkit/cd;

    invoke-direct {v0, p0, v2}, Ldolphin/webkit/cd;-><init>(Ldolphin/webkit/GLSurfaceView;Ldolphin/webkit/ca;)V

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLContextFactory:Ldolphin/webkit/cg;

    .line 198
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLWindowSurfaceFactory:Ldolphin/webkit/ci;

    if-nez v0, :cond_2

    .line 199
    new-instance v0, Ldolphin/webkit/ce;

    invoke-direct {v0, v2}, Ldolphin/webkit/ce;-><init>(Ldolphin/webkit/ca;)V

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mEGLWindowSurfaceFactory:Ldolphin/webkit/ci;

    .line 201
    :cond_2
    iput-object p1, p0, Ldolphin/webkit/GLSurfaceView;->mRenderer:Ldolphin/webkit/cm;

    .line 202
    new-instance v0, Ldolphin/webkit/ck;

    invoke-direct {v0, p0, p1}, Ldolphin/webkit/ck;-><init>(Ldolphin/webkit/GLSurfaceView;Ldolphin/webkit/cm;)V

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    .line 203
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    invoke-virtual {v0, p3, p4}, Ldolphin/webkit/ck;->a(II)V

    .line 353
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    invoke-virtual {v0}, Ldolphin/webkit/ck;->c()V

    .line 336
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceView;->mGLRenderProx:Ldolphin/webkit/ck;

    invoke-virtual {v0}, Ldolphin/webkit/ck;->d()V

    .line 345
    return-void
.end method
