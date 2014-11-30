.class Ldolphin/webkit/JSurfaceTexture;
.super Ljava/lang/Object;
.source "JSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# instance fields
.field protected a:Landroid/graphics/SurfaceTexture;

.field private b:Ldolphin/webkit/eg;

.field private mNativeClass:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    .line 62
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p2, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    .line 71
    invoke-direct {p0, p1}, Ldolphin/webkit/JSurfaceTexture;->createSurfaceTexture(I)V

    .line 72
    invoke-direct {p0}, Ldolphin/webkit/JSurfaceTexture;->createSurface()Landroid/view/Surface;

    .line 73
    iget v0, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Ldolphin/webkit/JSurfaceTexture;->nativeConstruct()I

    move-result v0

    iput v0, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    .line 75
    :cond_0
    return-void
.end method

.method public static a(I)Ldolphin/webkit/JSurfaceTexture;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ldolphin/webkit/JSurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/JSurfaceTexture;-><init>(II)V

    return-object v0
.end method

.method private createSurface()Landroid/view/Surface;
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_0

    .line 95
    iput-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->mSurface:Landroid/view/Surface;

    .line 103
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 102
    :cond_1
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->mSurface:Landroid/view/Surface;

    .line 103
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->mSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method private createSurfaceTexture(I)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 85
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 87
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    .line 88
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 89
    return-void
.end method

.method private getTimestamp()J
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 170
    const-wide/16 v0, 0x0

    .line 172
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getTransformMatrix([F)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_0
.end method

.method private native nativeConstruct()I
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeOnFrameAvailable()V
.end method

.method private setDefaultBufferSize(II)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0
.end method

.method private updateTexImage()I
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 153
    iget-object v1, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_0

    .line 164
    :goto_0
    return v0

    .line 158
    :cond_0
    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    return v0
.end method

.method public a(Ldolphin/webkit/eg;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Ldolphin/webkit/JSurfaceTexture;->b:Ldolphin/webkit/eg;

    .line 191
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->b:Ldolphin/webkit/eg;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->b:Ldolphin/webkit/eg;

    invoke-interface {v0, p1}, Ldolphin/webkit/eg;->a(Landroid/graphics/SurfaceTexture;)V

    .line 179
    :cond_0
    iget v0, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    if-nez v0, :cond_1

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0}, Ldolphin/webkit/JSurfaceTexture;->nativeOnFrameAvailable()V

    goto :goto_0
.end method

.method protected release()V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v0, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget v0, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Ldolphin/webkit/JSurfaceTexture;->mNativeClass:I

    .line 121
    invoke-direct {p0, v0}, Ldolphin/webkit/JSurfaceTexture;->nativeDestroy(I)V

    .line 123
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 125
    iput-object v2, p0, Ldolphin/webkit/JSurfaceTexture;->mSurface:Landroid/view/Surface;

    .line 128
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 130
    iput-object v2, p0, Ldolphin/webkit/JSurfaceTexture;->a:Landroid/graphics/SurfaceTexture;

    goto :goto_0
.end method
