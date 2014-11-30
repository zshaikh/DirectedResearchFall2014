.class public Lcom/acmeaom/android/a/d/f;
.super Landroid/opengl/GLSurfaceView;
.source "ProGuard"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;
.implements Lcom/acmeaom/android/a/d/d;


# static fields
.field static final synthetic c:Z

.field private static final d:[I

.field private static final l:[Ljava/lang/String;


# instance fields
.field public final a:Lcom/acmeaom/android/c/d/e;

.field public final b:Lcom/acmeaom/android/a/d/b;

.field private final e:Lcom/acmeaom/android/a/d/c;

.field private f:Ljavax/microedition/khronos/egl/EGLContext;

.field private g:Ljavax/microedition/khronos/egl/EGL10;

.field private h:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private i:Ljavax/microedition/khronos/egl/EGLConfig;

.field private j:Ljavax/microedition/khronos/egl/EGLSurface;

.field private k:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    const-class v0, Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/d/f;->c:Z

    .line 50
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/acmeaom/android/a/d/f;->d:[I

    .line 307
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "Aerial"

    aput-object v3, v0, v2

    const-string v2, "Roads"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Gray"

    aput-object v2, v0, v1

    sput-object v0, Lcom/acmeaom/android/a/d/f;->l:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0

    .line 50
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/d/b;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 66
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/acmeaom/android/a/d/c;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/a/d/c;-><init>(Lcom/acmeaom/android/a/d/f;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/d/f;->e:Lcom/acmeaom/android/a/d/c;

    .line 67
    iput-object p1, p0, Lcom/acmeaom/android/a/d/f;->b:Lcom/acmeaom/android/a/d/b;

    .line 68
    new-instance v0, Lcom/acmeaom/android/c/d/e;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/c/d/e;-><init>(Lcom/acmeaom/android/a/d/d;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    .line 70
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/acmeaom/android/myradar/b/a;->a(Landroid/opengl/GLSurfaceView;Z)V

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/d/f;->setEGLContextClientVersion(I)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 75
    invoke-virtual/range {v0 .. v6}, Lcom/acmeaom/android/a/d/f;->setEGLConfigChooser(IIIIII)V

    .line 77
    :cond_0
    invoke-virtual {p0, p0}, Lcom/acmeaom/android/a/d/f;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 78
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {p0, v0}, Lcom/acmeaom/android/a/d/f;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 79
    invoke-virtual {p0, v5}, Lcom/acmeaom/android/a/d/f;->setRenderMode(I)V

    .line 80
    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    .prologue
    .line 111
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-static {p1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 116
    return-void
.end method

.method public static getBaseLayerLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/acmeaom/android/a/d/f;->l:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->r()V

    .line 332
    return-void
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 158
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 161
    if-eqz p1, :cond_0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq p1, v1, :cond_0

    .line 162
    const-string v1, "bad value to makeCurrent"

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljava/lang/String;)V

    :cond_0
    move v1, v0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_3

    .line 167
    const-string v2, "waiting for egl"

    invoke-static {v2}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    add-int/lit8 v1, v1, 0x32

    .line 174
    :goto_0
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 277
    :cond_2
    :goto_1
    monitor-exit p0

    return v0

    .line 216
    :cond_3
    :try_start_2
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p1, v1, :cond_7

    .line 217
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 219
    sget-boolean v1, Lcom/acmeaom/android/a/d/f;->c:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 220
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 222
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->j:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_6

    .line 223
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/acmeaom/android/a/d/f;->j:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 224
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to destroy buffer surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 228
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/acmeaom/android/a/d/f;->j:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 230
    :cond_6
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 232
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0, v1, v2, v3}, Lcom/acmeaom/android/a/d/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 234
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_1

    .line 241
    :cond_7
    sget-boolean v1, Lcom/acmeaom/android/a/d/f;->c:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :cond_8
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 244
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_b

    .line 245
    :goto_2
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->k:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_9

    .line 246
    const-string v1, "waiting for drawcontext"

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 247
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->b(I)V

    goto :goto_2

    .line 249
    :cond_9
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/acmeaom/android/a/d/f;->i:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, p0, Lcom/acmeaom/android/a/d/f;->k:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Lcom/acmeaom/android/a/d/f;->d:[I

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    .line 251
    sget-boolean v1, Lcom/acmeaom/android/a/d/f;->c:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :cond_a
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 253
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_b

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    goto/16 :goto_1

    .line 258
    :cond_b
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    .line 260
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->j:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v1, :cond_c

    .line 261
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/acmeaom/android/a/d/f;->i:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/a/d/f;->j:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 264
    :cond_c
    sget-boolean v1, Lcom/acmeaom/android/a/d/f;->c:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->j:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 265
    :cond_d
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 267
    sget-boolean v1, Lcom/acmeaom/android/a/d/f;->c:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v1, v2, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :cond_e
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 270
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 271
    sget-boolean v2, Lcom/acmeaom/android/a/d/f;->c:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/acmeaom/android/a/d/f;->i:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0x3033

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 273
    :cond_10
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 275
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/acmeaom/android/a/d/f;->j:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/acmeaom/android/a/d/f;->j:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->a(Ljavax/microedition/khronos/egl/EGL10;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 171
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 261
    :array_0
    .array-data 4
        0x3056
        0x100
        0x3057
        0x100
        0x3058
        0x1
        0x3038
    .end array-data
.end method

.method public declared-synchronized createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 85
    invoke-static {p1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 86
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Lcom/acmeaom/android/a/d/f;->d:[I

    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/d/f;->k:Ljavax/microedition/khronos/egl/EGLContext;

    .line 88
    invoke-static {p1}, Lcom/acmeaom/android/myradar/b/a;->b(Ljavax/microedition/khronos/egl/EGL10;)V

    .line 90
    iput-object p2, p0, Lcom/acmeaom/android/a/d/f;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 91
    iput-object p3, p0, Lcom/acmeaom/android/a/d/f;->i:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 92
    iput-object p1, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 94
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->k:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/d/f;->g:Ljavax/microedition/khronos/egl/EGL10;

    .line 104
    sget-boolean v0, Lcom/acmeaom/android/a/d/f;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->k:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/acmeaom/android/a/d/f;->k:Ljavax/microedition/khronos/egl/EGLContext;

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/acmeaom/android/a/d/f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 107
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->b_()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return-void
.end method

.method public getBaseLayer()I
    .locals 2

    .prologue
    .line 317
    const-string v0, "kMapTileType"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    sget-object v1, Lcom/acmeaom/android/a/d/f;->l:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBufferContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->f:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getController()Lcom/acmeaom/android/a/d/c;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->e:Lcom/acmeaom/android/a/d/c;

    return-object v0
.end method

.method public getFwMapView()Lcom/acmeaom/android/c/d/e;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    return-object v0
.end method

.method public getMapActivity()Lcom/acmeaom/android/a/d/b;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->b:Lcom/acmeaom/android/a/d/b;

    return-object v0
.end method

.method public getMapCenter()Lcom/acmeaom/android/a/d/a;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->p()Lcom/acmeaom/android/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->o()I

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->i()V

    .line 129
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->j()V

    .line 125
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/d/e;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBaseLayer(I)V
    .locals 3

    .prologue
    .line 309
    sget-object v0, Lcom/acmeaom/android/a/d/f;->l:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 311
    invoke-virtual {p0}, Lcom/acmeaom/android/a/d/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Lcom/acmeaom/android/a/d/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    return-void
.end method

.method setMapCenter(Lcom/acmeaom/android/a/d/a;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {p1}, Lcom/acmeaom/android/a/d/a;->c()Lcom/acmeaom/android/a/g/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 297
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new ontouchlistener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 327
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    return-void
.end method

.method setZoom(F)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/acmeaom/android/a/d/f;->a:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/d/e;->a(F)V

    .line 301
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 291
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 293
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 281
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 282
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 283
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 286
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 287
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 288
    return-void
.end method
