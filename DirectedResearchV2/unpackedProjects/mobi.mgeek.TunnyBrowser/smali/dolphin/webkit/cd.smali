.class Ldolphin/webkit/cd;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Ldolphin/webkit/cg;


# instance fields
.field final synthetic a:Ldolphin/webkit/GLSurfaceView;

.field private b:I


# direct methods
.method private constructor <init>(Ldolphin/webkit/GLSurfaceView;)V
    .locals 1

    .prologue
    .line 554
    iput-object p1, p0, Ldolphin/webkit/cd;->a:Ldolphin/webkit/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    const/16 v0, 0x3098

    iput v0, p0, Ldolphin/webkit/cd;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/GLSurfaceView;Ldolphin/webkit/ca;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0, p1}, Ldolphin/webkit/cd;-><init>(Ldolphin/webkit/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .prologue
    .line 558
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Ldolphin/webkit/cd;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ldolphin/webkit/cd;->a:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Ldolphin/webkit/GLSurfaceView;->access$300(Ldolphin/webkit/GLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 561
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Ldolphin/webkit/cd;->a:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Ldolphin/webkit/GLSurfaceView;->access$300(Ldolphin/webkit/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    .prologue
    .line 567
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    const-string v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDestroyContext failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    return-void
.end method
