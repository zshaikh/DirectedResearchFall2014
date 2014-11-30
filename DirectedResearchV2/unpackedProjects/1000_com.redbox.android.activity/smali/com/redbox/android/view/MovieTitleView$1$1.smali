.class Lcom/redbox/android/view/MovieTitleView$1$1;
.super Ljava/lang/Object;
.source "MovieTitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/view/MovieTitleView$1;->done(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/redbox/android/view/MovieTitleView$1;

.field private final synthetic val$b:Landroid/graphics/Bitmap;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$img:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/redbox/android/view/MovieTitleView$1;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->this$1:Lcom/redbox/android/view/MovieTitleView$1;

    iput-object p2, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$img:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$f:Ljava/io/File;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 72
    iget-object v1, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$b:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$f:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 86
    iget-object v1, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->this$1:Lcom/redbox/android/view/MovieTitleView$1;

    # getter for: Lcom/redbox/android/view/MovieTitleView$1;->this$0:Lcom/redbox/android/view/MovieTitleView;
    invoke-static {v1}, Lcom/redbox/android/view/MovieTitleView$1;->access$0(Lcom/redbox/android/view/MovieTitleView$1;)Lcom/redbox/android/view/MovieTitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbox/android/view/MovieTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/view/MovieTitleView$1$1;->val$f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/redbox/android/adapter/LocalDataStore;->updateImageCacheSize(J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
