.class Ldolphin/webkit/cj;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field final synthetic f:Ldolphin/webkit/GLSurfaceView;


# direct methods
.method public constructor <init>(Ldolphin/webkit/GLSurfaceView;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ldolphin/webkit/cj;->a(Ljava/lang/String;I)V

    .line 941
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 825
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 829
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/cj;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 832
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_3

    .line 844
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 846
    iget-object v0, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLWindowSurfaceFactory:Ldolphin/webkit/ci;
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$600(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/ci;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Ldolphin/webkit/ci;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 852
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLWindowSurfaceFactory:Ldolphin/webkit/ci;
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$600(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/ci;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Ldolphin/webkit/cj;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3, p1}, Ldolphin/webkit/ci;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 855
    iget-object v0, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_7

    .line 856
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 857
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_5

    .line 858
    const-string v0, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_5
    const/4 v0, 0x0

    .line 876
    :cond_6
    :goto_0
    return-object v0

    .line 867
    :cond_7
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 868
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Ldolphin/webkit/cj;->a(Ljava/lang/String;)V

    .line 871
    :cond_8
    iget-object v0, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 872
    iget-object v1, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mGLWrapper:Ldolphin/webkit/cl;
    invoke-static {v1}, Ldolphin/webkit/GLSurfaceView;->access$700(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/cl;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 873
    iget-object v1, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mGLWrapper:Ldolphin/webkit/cl;
    invoke-static {v1}, Ldolphin/webkit/GLSurfaceView;->access$700(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/cl;

    move-result-object v1

    invoke-interface {v1, v0}, Ldolphin/webkit/cl;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 784
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 789
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 791
    iget-object v0, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 792
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 799
    iget-object v1, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLConfigChooser:Ldolphin/webkit/cf;
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$400(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/cf;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Ldolphin/webkit/cf;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/cj;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 808
    iget-object v0, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLContextFactory:Ldolphin/webkit/cg;
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$500(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/cg;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Ldolphin/webkit/cj;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Ldolphin/webkit/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 809
    iget-object v0, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 810
    :cond_2
    iput-object v4, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 811
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Ldolphin/webkit/cj;->a(Ljava/lang/String;)V

    .line 814
    :cond_3
    iput-object v4, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 815
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 880
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 883
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 886
    return-void
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 893
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 902
    packed-switch v0, :pswitch_data_0

    .line 912
    :pswitch_0
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Ldolphin/webkit/cj;->a(Ljava/lang/String;I)V

    .line 915
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 904
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    .line 909
    :pswitch_2
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 902
    nop

    :pswitch_data_0
    .packed-switch 0x300b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()V
    .locals 5

    .prologue
    .line 919
    iget-object v0, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 920
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 923
    iget-object v0, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLWindowSurfaceFactory:Ldolphin/webkit/ci;
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$600(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/ci;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Ldolphin/webkit/ci;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/cj;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 926
    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 929
    iget-object v0, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Ldolphin/webkit/cj;->f:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLContextFactory:Ldolphin/webkit/cg;
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$500(Ldolphin/webkit/GLSurfaceView;)Ldolphin/webkit/cg;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Ldolphin/webkit/cg;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 931
    iput-object v4, p0, Ldolphin/webkit/cj;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 933
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, p0, Ldolphin/webkit/cj;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 935
    iput-object v4, p0, Ldolphin/webkit/cj;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 937
    :cond_1
    return-void
.end method
