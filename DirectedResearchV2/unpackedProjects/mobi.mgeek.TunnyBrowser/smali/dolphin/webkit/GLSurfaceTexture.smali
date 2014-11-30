.class public Ldolphin/webkit/GLSurfaceTexture;
.super Ldolphin/webkit/JSurfaceTexture;
.source "GLSurfaceTexture.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# instance fields
.field private b:Ljavax/microedition/khronos/egl/EGL10;

.field private c:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private d:Ljavax/microedition/khronos/egl/EGLConfig;

.field private e:Ljavax/microedition/khronos/egl/EGLContext;

.field private f:Ljavax/microedition/khronos/egl/EGLSurface;

.field private g:Ljavax/microedition/khronos/opengles/GL;


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ldolphin/webkit/JSurfaceTexture;-><init>(I)V

    .line 35
    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 90
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 87
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private b()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 94
    new-array v5, v4, [I

    .line 95
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 96
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceTexture;->c()[I

    move-result-object v2

    .line 97
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/GLSurfaceTexture;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 101
    aget-object v0, v3, v6

    .line 103
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()[I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private createEglSurface()V
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/GLSurfaceTexture;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ldolphin/webkit/GLSurfaceTexture;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Ldolphin/webkit/GLSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 60
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_2

    .line 61
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 62
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_1

    .line 63
    const-string v1, "GLSurfaceTexture"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/GLSurfaceTexture;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ldolphin/webkit/GLSurfaceTexture;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Ldolphin/webkit/GLSurfaceTexture;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Ldolphin/webkit/GLSurfaceTexture;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->g:Ljavax/microedition/khronos/opengles/GL;

    .line 73
    return-void
.end method

.method private initGL()V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 40
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 41
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 46
    iget-object v1, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ldolphin/webkit/GLSurfaceTexture;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    invoke-direct {p0}, Ldolphin/webkit/GLSurfaceTexture;->b()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 51
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/GLSurfaceTexture;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ldolphin/webkit/GLSurfaceTexture;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, v0, v1, v2}, Ldolphin/webkit/GLSurfaceTexture;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ldolphin/webkit/eg;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Ldolphin/webkit/JSurfaceTexture;->a(Ldolphin/webkit/eg;)V

    return-void
.end method

.method public bridge synthetic onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Ldolphin/webkit/JSurfaceTexture;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method protected release()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-super {p0}, Ldolphin/webkit/JSurfaceTexture;->release()V

    .line 78
    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->b:Ljavax/microedition/khronos/egl/EGL10;

    .line 79
    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 80
    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 81
    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 82
    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->f:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 83
    iput-object v0, p0, Ldolphin/webkit/GLSurfaceTexture;->g:Ljavax/microedition/khronos/opengles/GL;

    .line 84
    return-void
.end method
