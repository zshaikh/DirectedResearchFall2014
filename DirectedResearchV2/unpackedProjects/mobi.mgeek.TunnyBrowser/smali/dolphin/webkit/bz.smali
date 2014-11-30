.class Ldolphin/webkit/bz;
.super Ljava/lang/Object;
.source "GLES20Renderer.java"

# interfaces
.implements Ldolphin/webkit/cm;


# instance fields
.field private a:I

.field private b:Landroid/graphics/Rect;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldolphin/webkit/GLWebView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/bz;->a:I

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/bz;->b:Landroid/graphics/Rect;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ldolphin/webkit/GLWebView;ILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldolphin/webkit/bz;->c:Ljava/lang/ref/WeakReference;

    .line 38
    iput p2, p0, Ldolphin/webkit/bz;->a:I

    .line 39
    iget-object v0, p0, Ldolphin/webkit/bz;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 40
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Ldolphin/webkit/bz;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/bz;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/GLWebView;

    .line 45
    :goto_0
    iget v1, p0, Ldolphin/webkit/bz;->a:I

    if-eq v1, v4, :cond_0

    if-nez v0, :cond_2

    .line 61
    :cond_0
    :goto_1
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_2
    const v1, 0x8d40

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 52
    const/16 v1, 0xb90

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 55
    const/16 v1, 0xc11

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 56
    iget-object v1, p0, Ldolphin/webkit/bz;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Ldolphin/webkit/bz;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 58
    iget v1, p0, Ldolphin/webkit/bz;->a:I

    iget-object v2, p0, Ldolphin/webkit/bz;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/GLWebView;->drawGL(ILandroid/graphics/Rect;)V

    .line 60
    iput v4, p0, Ldolphin/webkit/bz;->a:I

    goto :goto_1
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Ldolphin/webkit/bz;->d:Landroid/graphics/Rect;

    .line 65
    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
