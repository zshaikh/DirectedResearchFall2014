.class final Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/google/android/imageloader/ImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageViewCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

.field private final mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/google/android/imageloader/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/ImageView;Lcom/google/android/imageloader/ImageLoader$Callback;)V
    .locals 0
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "callback"    # Lcom/google/android/imageloader/ImageLoader$Callback;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->this$0:Lcom/google/android/imageloader/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p2, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mImageView:Landroid/widget/ImageView;

    .line 822
    iput-object p3, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    .line 823
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/imageloader/ImageLoader$ImageError;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "error"    # Lcom/google/android/imageloader/ImageLoader$ImageError;

    .prologue
    .line 835
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    if-eqz v1, :cond_0

    .line 836
    if-eqz p2, :cond_0

    .line 837
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    invoke-interface {v1, p2, p1}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->this$0:Lcom/google/android/imageloader/ImageLoader;

    # getter for: Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/imageloader/ImageLoader;->access$9(Lcom/google/android/imageloader/ImageLoader;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 842
    .local v0, "binding":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 860
    :cond_1
    :goto_0
    return-void

    .line 848
    :cond_2
    if-eqz p2, :cond_4

    .line 849
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 850
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 852
    :cond_3
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    if-eqz v1, :cond_1

    .line 853
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, p1}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageLoaded(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_4
    if-eqz p3, :cond_1

    .line 856
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    if-eqz v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mCallback:Lcom/google/android/imageloader/ImageLoader$Callback;

    iget-object v2, p0, Lcom/google/android/imageloader/ImageLoader$ImageViewCallback;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/google/android/imageloader/ImageLoader$ImageError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/imageloader/ImageLoader$Callback;->onImageError(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unwanted()Z
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method
