.class Lcom/facebook/orca/camera/ImageManager$EmptyImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/facebook/orca/camera/gallery/IImageList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/camera/ImageManager$1;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/facebook/orca/camera/ImageManager$EmptyImageList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method
