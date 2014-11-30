.class abstract Ldolphin/webkit/cb;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Ldolphin/webkit/cf;


# instance fields
.field protected a:[I

.field final synthetic b:Ldolphin/webkit/GLSurfaceView;


# direct methods
.method public constructor <init>(Ldolphin/webkit/GLSurfaceView;[I)V
    .locals 1

    .prologue
    .line 636
    iput-object p1, p0, Ldolphin/webkit/cb;->b:Ldolphin/webkit/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    invoke-direct {p0, p2}, Ldolphin/webkit/cb;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/cb;->a:[I

    .line 638
    return-void
.end method

.method private a([I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Ldolphin/webkit/cb;->b:Ldolphin/webkit/GLSurfaceView;

    # getter for: Ldolphin/webkit/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v0}, Ldolphin/webkit/GLSurfaceView;->access$300(Ldolphin/webkit/GLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 684
    :goto_0
    return-object p1

    .line 678
    :cond_0
    array-length v1, p1

    .line 679
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    .line 680
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    .line 682
    const/4 v2, 0x4

    aput v2, v0, v1

    .line 683
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    .line 684
    goto :goto_0
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 641
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 642
    iget-object v2, p0, Ldolphin/webkit/cb;->a:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    aget v4, v5, v4

    .line 649
    if-gtz v4, :cond_1

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 655
    iget-object v2, p0, Ldolphin/webkit/cb;->a:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Ldolphin/webkit/cb;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 660
    if-nez v0, :cond_3

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_3
    return-object v0
.end method

.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
