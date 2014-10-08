.class public Lcom/adobe/air/FlashEGL;
.super Ljava/lang/Object;
.source "FlashEGL.java"


# static fields
.field private static EGL_BUFFER_DESTROYED:I

.field private static EGL_BUFFER_PRESERVED:I

.field private static EGL_CONTEXT_CLIENT_VERSION:I

.field private static EGL_COVERAGE_BUFFERS_NV:I

.field private static EGL_COVERAGE_SAMPLES_NV:I

.field private static EGL_OPENGL_ES2_BIT:I

.field private static EGL_SWAP_BEHAVIOR:I

.field private static TAG:Ljava/lang/String;

.field private static cfgAttrs:[I

.field private static fbPBufferSurfaceAttrs:[I

.field private static fbWindowSurfaceOffAttrs:[I

.field private static fbWindowSurfaceOnAttrs:[I


# instance fields
.field private kAlphaBits:I

.field private kBlueBits:I

.field private kColorBits:I

.field private kConfigId:I

.field private kCsaaSamp:I

.field private kDepthBits:I

.field private kGreenBits:I

.field private kMsaaSamp:I

.field private kNumElements:I

.field private kRedBits:I

.field private kStencilBits:I

.field private kSurfaceTypes:I

.field private kSwapPreserve:I

.field private kSwapPreserveDefault:I

.field private kSwapPreserveOff:I

.field private kSwapPreserveOn:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglConfigCount:I

.field private mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

.field volatile mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglVersion:[I

.field private mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mIsARGBSurface:Z

.field private mIsBufferPreserve:Z

.field private mIsGPUOOM:Z

.field private mPbufferConfigCount:I

.field private mPixmapConfigCount:I

.field private mWindowConfigCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 40
    const-string v0, "FlashEGL"

    sput-object v0, Lcom/adobe/air/FlashEGL;->TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x3098

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 42
    const/4 v0, 0x4

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_OPENGL_ES2_BIT:I

    .line 44
    const/16 v0, 0x30e0

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_COVERAGE_BUFFERS_NV:I

    .line 45
    const/16 v0, 0x30e1

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_COVERAGE_SAMPLES_NV:I

    .line 48
    const/16 v0, 0x3093

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_SWAP_BEHAVIOR:I

    .line 49
    const/16 v0, 0x3094

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_PRESERVED:I

    .line 50
    const/16 v0, 0x3095

    sput v0, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_DESTROYED:I

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/16 v1, 0x3033

    aput v1, v0, v4

    aput v3, v0, v5

    const/16 v1, 0x3025

    aput v1, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/adobe/air/FlashEGL;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    .line 70
    new-array v0, v7, [I

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_SWAP_BEHAVIOR:I

    aput v1, v0, v4

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_PRESERVED:I

    aput v1, v0, v5

    const/16 v1, 0x3038

    aput v1, v0, v6

    sput-object v0, Lcom/adobe/air/FlashEGL;->fbWindowSurfaceOnAttrs:[I

    .line 76
    new-array v0, v7, [I

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_SWAP_BEHAVIOR:I

    aput v1, v0, v4

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_DESTROYED:I

    aput v1, v0, v5

    const/16 v1, 0x3038

    aput v1, v0, v6

    sput-object v0, Lcom/adobe/air/FlashEGL;->fbWindowSurfaceOffAttrs:[I

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/air/FlashEGL;->fbPBufferSurfaceAttrs:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3057
        0x40
        0x3056
        0x40
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v1, p0, Lcom/adobe/air/FlashEGL;->kSurfaceTypes:I

    iput v3, p0, Lcom/adobe/air/FlashEGL;->kConfigId:I

    iput v4, p0, Lcom/adobe/air/FlashEGL;->kRedBits:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kGreenBits:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kBlueBits:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kAlphaBits:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kColorBits:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kDepthBits:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kStencilBits:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kMsaaSamp:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kCsaaSamp:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserve:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/adobe/air/FlashEGL;->kNumElements:I

    .line 57
    iput v1, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveDefault:I

    iput v3, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveOn:I

    iput v4, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveOff:I

    .line 710
    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 711
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 712
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 713
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 714
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 715
    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 716
    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 717
    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    .line 718
    iput v1, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    .line 719
    iput v1, p0, Lcom/adobe/air/FlashEGL;->mWindowConfigCount:I

    .line 720
    iput v1, p0, Lcom/adobe/air/FlashEGL;->mPixmapConfigCount:I

    .line 721
    iput v1, p0, Lcom/adobe/air/FlashEGL;->mPbufferConfigCount:I

    .line 722
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 723
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsARGBSurface:Z

    .line 724
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsGPUOOM:Z

    .line 725
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsBufferPreserve:Z

    return-void
.end method

.method private XX(II)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/adobe/air/FlashEGL;->kNumElements:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private checkEglError(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v6, 0x3000

    .line 670
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 671
    if-eq v0, v6, :cond_3

    .line 673
    iget-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsGPUOOM:Z

    if-nez v1, :cond_3

    const/16 v1, 0x3003

    if-ne v0, v1, :cond_3

    .line 678
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 680
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 681
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 682
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 683
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 684
    if-eq v1, v6, :cond_0

    .line 687
    :cond_0
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 688
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 689
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 690
    if-eq v1, v6, :cond_1

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v1, v2, :cond_2

    .line 697
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 698
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 699
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 700
    if-eq v1, v6, :cond_2

    .line 704
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsGPUOOM:Z

    .line 707
    :cond_3
    return v0
.end method


# virtual methods
.method public CreateDummySurfaceAndContext()I
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x3006

    const/16 v7, 0x3000

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 265
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 268
    const/16 v0, 0x3008

    .line 330
    :goto_0
    return v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_3

    .line 274
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move v0, v7

    .line 278
    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move v0, v7

    .line 284
    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 287
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 288
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 292
    :cond_3
    new-array v5, v4, [I

    .line 293
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 294
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    aput v4, v0, v4

    .line 295
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 296
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    const/4 v1, -0x1

    aput v1, v0, v4

    .line 298
    aget v0, v5, v6

    .line 299
    if-nez v0, :cond_4

    move v0, v8

    .line 301
    goto :goto_0

    .line 304
    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/adobe/air/FlashEGL;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v1, v0, v6

    aput v9, v0, v4

    const/16 v1, 0x3038

    aput v1, v0, v9

    .line 306
    const-string v1, "Before eglCreateContext"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v6

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 308
    const-string v0, "After eglCreateContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_5

    move v0, v8

    .line 312
    goto/16 :goto_0

    .line 315
    :cond_5
    const-string v0, "Before eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v2, v3, v6

    sget-object v3, Lcom/adobe/air/FlashEGL;->fbPBufferSurfaceAttrs:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 317
    const-string v0, "After eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_6

    move v0, v8

    .line 322
    goto/16 :goto_0

    .line 325
    :cond_6
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 327
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move v0, v7

    .line 330
    goto/16 :goto_0
.end method

.method public CreateGLContext(Z)I
    .locals 7

    .prologue
    const/16 v5, 0x3000

    const/4 v3, 0x2

    const-string v4, "Before eglCreateContext"

    const-string v6, "After eglCreateContext"

    .line 393
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_0

    .line 396
    const/16 v0, 0x3005

    .line 438
    :goto_0
    return v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_1

    move v0, v5

    .line 403
    goto :goto_0

    .line 409
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/adobe/air/FlashEGL;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 411
    if-eqz p1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 414
    const-string v2, "Before eglCreateContext"

    invoke-direct {p0, v4}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 415
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 416
    const-string v0, "After eglCreateContext"

    invoke-direct {p0, v6}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 418
    const-string v0, "After eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 427
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 428
    const/16 v0, 0x3006

    goto :goto_0

    .line 422
    :cond_2
    const-string v1, "Before eglCreateContext"

    invoke-direct {p0, v4}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 424
    const-string v0, "After eglCreateContext"

    invoke-direct {p0, v6}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    goto :goto_1

    .line 431
    :cond_3
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_4

    .line 433
    const-string v0, "Before eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Lcom/adobe/air/FlashEGL;->fbPBufferSurfaceAttrs:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 435
    const-string v0, "After eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    :cond_4
    move v0, v5

    .line 438
    goto/16 :goto_0
.end method

.method public CreateWindowSurface(Landroid/view/SurfaceView;I)I
    .locals 12

    .prologue
    const/16 v11, 0x300d

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "Before eglCreateWindowSurface"

    const-string v10, "After eglCreateWindowSurface"

    .line 538
    iget-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsGPUOOM:Z

    if-eqz v1, :cond_0

    .line 539
    const/16 v1, 0x3003

    .line 622
    :goto_0
    return v1

    .line 541
    :cond_0
    instance-of v1, p1, Lcom/adobe/air/AIRWindowSurfaceView;

    .line 543
    instance-of v2, p1, Lcom/adobe/flashruntime/air/VideoViewAIR;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/adobe/air/AIRStage3DSurfaceView;

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    move v1, v11

    .line 548
    goto :goto_0

    .line 551
    :cond_1
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v2, v3, :cond_2

    .line 554
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 555
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL;->MakeGLCurrent()I

    move-result v1

    goto :goto_0

    .line 560
    :cond_2
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveOn:I

    if-ne p2, v2, :cond_3

    .line 562
    const-string v2, "Before eglCreateWindowSurface"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 563
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sget-object v6, Lcom/adobe/air/FlashEGL;->fbWindowSurfaceOnAttrs:[I

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 564
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_9

    .line 565
    const-string v2, "After eglCreateWindowSurface"

    invoke-direct {p0, v10}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move v2, v8

    .line 577
    :goto_1
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_4

    .line 580
    const-string v3, "Before eglCreateWindowSurface"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 581
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 582
    const-string v3, "After eglCreateWindowSurface"

    invoke-direct {p0, v10}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v3

    .line 583
    const/16 v4, 0x3000

    if-eq v3, v4, :cond_4

    move v1, v3

    .line 584
    goto :goto_0

    .line 568
    :cond_3
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserveOff:I

    if-ne p2, v2, :cond_9

    .line 570
    const-string v2, "Before eglCreateWindowSurface"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 571
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    sget-object v6, Lcom/adobe/air/FlashEGL;->fbWindowSurfaceOffAttrs:[I

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 572
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_9

    .line 573
    const-string v2, "After eglCreateWindowSurface"

    invoke-direct {p0, v10}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move v2, v8

    .line 574
    goto :goto_1

    .line 587
    :cond_4
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_5

    move v1, v11

    .line 589
    goto/16 :goto_0

    .line 595
    :cond_5
    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 597
    if-eqz v1, :cond_6

    .line 599
    move-object v0, p1

    check-cast v0, Lcom/adobe/air/AIRWindowSurfaceView;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFlashEGL(Lcom/adobe/air/FlashEGL;)V

    .line 603
    check-cast p1, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_6

    .line 607
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 608
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 612
    :cond_6
    new-array v1, v9, [I

    .line 613
    aput v8, v1, v8

    .line 614
    iput-boolean v8, p0, Lcom/adobe/air/FlashEGL;->mIsBufferPreserve:Z

    .line 615
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget v5, Lcom/adobe/air/FlashEGL;->EGL_SWAP_BEHAVIOR:I

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 616
    aget v1, v1, v8

    sget v2, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_PRESERVED:I

    if-ne v1, v2, :cond_8

    move v1, v9

    :goto_2
    iput-boolean v1, p0, Lcom/adobe/air/FlashEGL;->mIsBufferPreserve:Z

    .line 622
    :cond_7
    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL;->MakeGLCurrent()I

    move-result v1

    goto/16 :goto_0

    :cond_8
    move v1, v8

    .line 616
    goto :goto_2

    :cond_9
    move v2, v9

    goto/16 :goto_1
.end method

.method public DestroyGLContext()Z
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_1

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    .line 374
    :cond_1
    const-string v0, "DestroyGLContext: Before eglMakeCurrent for noSurface"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 376
    const-string v0, "DestroyGLContext: After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 380
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 383
    :cond_2
    const-string v0, "Before eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 385
    const-string v1, "After eglDestroyContext"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 386
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public DestroyWindowSurface()Z
    .locals 8

    .prologue
    const/16 v6, 0x3000

    const/4 v5, 0x0

    const-string v7, "After eglMakeCurrent"

    .line 627
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_4

    .line 630
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 633
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_0

    move v0, v5

    .line 655
    :goto_0
    return v0

    .line 636
    :cond_0
    const-string v0, "Before eglDestroySurface (window)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 638
    const-string v0, "After eglDestroySurface (window)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_1

    move v0, v5

    .line 639
    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_2

    .line 642
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 643
    :cond_2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 645
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_3

    .line 647
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 648
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 649
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v7}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_3

    move v0, v5

    .line 650
    goto :goto_0

    .line 653
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v5

    .line 655
    goto :goto_0
.end method

.method public FlashEGL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 93
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 94
    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 95
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 96
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 97
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 98
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/FlashEGL;->mIsARGBSurface:Z

    .line 100
    return-void
.end method

.method public GetConfigs(ZZ)[I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 170
    iget v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    iget v1, p0, Lcom/adobe/air/FlashEGL;->kNumElements:I

    mul-int/2addr v0, v1

    new-array v6, v0, [I

    .line 171
    new-array v5, v9, [I

    .line 172
    new-array v7, v9, [I

    .line 175
    iget v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    new-array v0, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 177
    const-string v0, "Before eglChooseConfig"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    iget v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 179
    const-string v0, "After eglChooseConfig"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 181
    aget v0, v5, v8

    iput v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    move v1, v8

    .line 182
    :goto_0
    if-ge v1, v0, :cond_5

    .line 184
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3033

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 185
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSurfaceTypes:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 187
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kConfigId:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aput v1, v6, v2

    .line 189
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3024

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 190
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kRedBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 192
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3023

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 193
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kGreenBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 195
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3022

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 196
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kBlueBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 198
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3021

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 199
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kAlphaBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 201
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3020

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 202
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kColorBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 204
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3025

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 205
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kDepthBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 207
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3026

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 208
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kStencilBits:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 210
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kCsaaSamp:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aput v8, v6, v2

    .line 211
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kMsaaSamp:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aput v8, v6, v2

    .line 213
    if-eqz p1, :cond_2

    .line 214
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    sget v5, Lcom/adobe/air/FlashEGL;->EGL_COVERAGE_SAMPLES_NV:I

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 215
    aget v2, v7, v8

    if-eq v2, v9, :cond_0

    .line 216
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kCsaaSamp:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    .line 224
    :cond_0
    :goto_1
    if-eqz p2, :cond_4

    .line 226
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserve:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    aget v3, v3, v8

    if-gt v3, v9, :cond_1

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    aget v3, v3, v9

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    :cond_1
    iget v3, p0, Lcom/adobe/air/FlashEGL;->kSurfaceTypes:I

    invoke-direct {p0, v1, v3}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v3

    aget v3, v6, v3

    sget v4, Lcom/adobe/air/FlashEGL;->EGL_BUFFER_PRESERVED:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    move v3, v9

    :goto_2
    aput v3, v6, v2

    .line 182
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 219
    :cond_2
    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v4, v4, v1

    const/16 v5, 0x3031

    invoke-interface {v2, v3, v4, v5, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 220
    aget v2, v7, v8

    if-eq v2, v9, :cond_0

    .line 221
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kMsaaSamp:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aget v3, v7, v8

    aput v3, v6, v2

    goto :goto_1

    :cond_3
    move v3, v8

    .line 226
    goto :goto_2

    .line 229
    :cond_4
    iget v2, p0, Lcom/adobe/air/FlashEGL;->kSwapPreserve:I

    invoke-direct {p0, v1, v2}, Lcom/adobe/air/FlashEGL;->XX(II)I

    move-result v2

    aput v8, v6, v2

    goto :goto_3

    .line 232
    :cond_5
    return-object v6
.end method

.method public GetNumConfigs()[I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 133
    new-array v6, v9, [I

    .line 134
    new-array v5, v7, [I

    .line 137
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 138
    aget v0, v5, v4

    aput v0, v6, v4

    iput v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigCount:I

    .line 142
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    aput v9, v0, v7

    .line 143
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 144
    aget v0, v5, v4

    aput v0, v6, v7

    iput v0, p0, Lcom/adobe/air/FlashEGL;->mWindowConfigCount:I

    .line 149
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    aput v8, v0, v7

    .line 150
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 151
    aget v0, v5, v4

    aput v0, v6, v8

    iput v0, p0, Lcom/adobe/air/FlashEGL;->mPixmapConfigCount:I

    .line 156
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    aput v7, v0, v7

    .line 157
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 158
    const/4 v0, 0x3

    aget v1, v5, v4

    aput v1, v6, v0

    iput v1, p0, Lcom/adobe/air/FlashEGL;->mPbufferConfigCount:I

    .line 163
    sget-object v0, Lcom/adobe/air/FlashEGL;->cfgAttrs:[I

    const/4 v1, -0x1

    aput v1, v0, v7

    .line 165
    return-object v6
.end method

.method public GetSurfaceHeight()I
    .locals 5

    .prologue
    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 126
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3056

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 128
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public GetSurfaceWidth()I
    .locals 5

    .prologue
    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 118
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v4, 0x3057

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 120
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public HasGLContext()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public InitEGL()I
    .locals 4

    .prologue
    const/16 v3, 0x3000

    .line 336
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 347
    const-string v0, "Before eglGetDisplay"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 349
    const-string v0, "After eglGetDisplay"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    .line 350
    if-ne v3, v0, :cond_0

    .line 355
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    .line 356
    const-string v0, "Before eglInitialize"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglVersion:[I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 358
    const-string v0, "After eglInitialize"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    .line 359
    if-ne v3, v0, :cond_0

    move v0, v3

    .line 364
    goto :goto_0
.end method

.method public IsARGBSurface()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL;->mIsARGBSurface:Z

    return v0
.end method

.method public IsBufferPreserve()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/adobe/air/FlashEGL;->mIsBufferPreserve:Z

    return v0
.end method

.method public MakeGLCurrent()I
    .locals 5

    .prologue
    .line 511
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 514
    const/16 v0, 0x3006

    .line 531
    :goto_0
    return v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_1

    .line 520
    const/16 v0, 0x300d

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_2

    .line 526
    const/16 v0, 0x3008

    goto :goto_0

    .line 529
    :cond_2
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 531
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public ReleaseGPUResources()V
    .locals 5

    .prologue
    .line 456
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    .line 494
    :goto_0
    return-void

    .line 462
    :cond_0
    const-string v0, "Before eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 464
    const-string v0, "After eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    monitor-enter v0

    .line 469
    :try_start_0
    const-string v1, "Before eglDestroySurface"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 471
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 472
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglWindowSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 474
    :cond_1
    const-string v1, "After eglDestroySurface (window)"

    invoke-direct {p0, v1}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 475
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    .line 479
    const-string v0, "Before eglDestroySurface (pbuffer)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 481
    const-string v0, "After eglDestroySurface (pbuffer)"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 482
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglPbufferSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 486
    :cond_2
    const-string v0, "Before eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 488
    const-string v0, "After eglDestroyContext"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 490
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 491
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public SetConfig(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 238
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfigList:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 240
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 241
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3024

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 242
    aget v1, v0, v5

    .line 243
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3023

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 244
    aget v1, v0, v5

    .line 245
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3022

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 246
    aget v1, v0, v5

    .line 247
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3021

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 248
    aget v1, v0, v5

    .line 249
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3025

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 250
    aget v1, v0, v5

    .line 251
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3026

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 252
    aget v1, v0, v5

    .line 253
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3031

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 254
    aget v1, v0, v5

    .line 255
    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/air/FlashEGL;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0x3032

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 256
    aget v0, v0, v5

    .line 259
    return-void
.end method

.method public SwapEGLBuffers()V
    .locals 3

    .prologue
    .line 500
    const/16 v0, 0x3000

    invoke-virtual {p0}, Lcom/adobe/air/FlashEGL;->MakeGLCurrent()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    const-string v0, "Before eglSwapBuffers"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/air/FlashEGL;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 506
    const-string v0, "After eglSwapBuffers"

    invoke-direct {p0, v0}, Lcom/adobe/air/FlashEGL;->checkEglError(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TerminateEGL()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/adobe/air/FlashEGL;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 448
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/air/FlashEGL;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 449
    return-void
.end method
