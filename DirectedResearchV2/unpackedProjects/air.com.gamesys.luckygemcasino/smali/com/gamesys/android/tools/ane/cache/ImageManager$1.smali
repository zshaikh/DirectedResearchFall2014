.class Lcom/gamesys/android/tools/ane/cache/ImageManager$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/google/android/imageloader/ImageLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/tools/ane/cache/ImageManager;->getImageFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;


# direct methods
.method constructor <init>(Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/cache/ImageManager$1;->val$listener:Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageError(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/cache/ImageManager$1;->val$listener:Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/cache/ImageManager$1;->val$listener:Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;

    invoke-interface {v0, p3}, Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;->onError(Ljava/lang/Throwable;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/cache/ImageManager$1;->val$listener:Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/cache/ImageManager$1;->val$listener:Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;

    invoke-interface {v0, p1, p2}, Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;->onBitmapCreated(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onImageLoaded(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method
