.class public Lcom/redbox/android/view/MovieTitleView;
.super Landroid/widget/LinearLayout;
.source "MovieTitleView.java"


# instance fields
.field handler:Landroid/os/Handler;

.field imageDownloaderThread:Ljava/lang/Thread;

.field movie:Lcom/redbox/android/model/Movie;

.field task:Lcom/redbox/android/model/ImageDownloadTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/view/MovieTitleView;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getMovieObject()Lcom/redbox/android/model/Movie;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/redbox/android/view/MovieTitleView;->movie:Lcom/redbox/android/model/Movie;

    return-object v0
.end method

.method public setMovieObject(Lcom/redbox/android/model/Movie;)V
    .locals 7
    .param p1, "m"    # Lcom/redbox/android/model/Movie;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/redbox/android/view/MovieTitleView;->movie:Lcom/redbox/android/model/Movie;

    .line 45
    const v3, 0x7f070057

    invoke-virtual {p0, v3}, Lcom/redbox/android/view/MovieTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 46
    .local v2, "movieTitleTextView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v3, 0x7f070056

    invoke-virtual {p0, v3}, Lcom/redbox/android/view/MovieTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 50
    .local v1, "img":Landroid/widget/ImageView;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/redbox/android/view/MovieTitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "thumb_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getting from cache: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 56
    :cond_0
    const v3, 0x7f020083

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v3, p0, Lcom/redbox/android/view/MovieTitleView;->task:Lcom/redbox/android/model/ImageDownloadTask;

    if-eqz v3, :cond_1

    .line 58
    invoke-static {}, Lcom/redbox/android/http/ImageDownloader;->getInstance()Lcom/redbox/android/http/ImageDownloader;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/view/MovieTitleView;->task:Lcom/redbox/android/model/ImageDownloadTask;

    invoke-virtual {v3, v4}, Lcom/redbox/android/http/ImageDownloader;->removeTask(Lcom/redbox/android/model/ImageDownloadTask;)V

    .line 60
    :cond_1
    new-instance v3, Lcom/redbox/android/model/ImageDownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://images.redbox.com/Images/Thumbnails/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/redbox/android/model/Movie;->getImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    new-instance v5, Lcom/redbox/android/view/MovieTitleView$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/redbox/android/view/MovieTitleView$1;-><init>(Lcom/redbox/android/view/MovieTitleView;Landroid/widget/ImageView;Ljava/io/File;)V

    .line 96
    iget-object v6, p0, Lcom/redbox/android/view/MovieTitleView;->movie:Lcom/redbox/android/model/Movie;

    invoke-virtual {v6}, Lcom/redbox/android/model/Movie;->getId()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/redbox/android/model/ImageDownloadTask;-><init>(Ljava/lang/String;Lcom/redbox/android/http/ImageDownloadListener;I)V

    .line 60
    iput-object v3, p0, Lcom/redbox/android/view/MovieTitleView;->task:Lcom/redbox/android/model/ImageDownloadTask;

    .line 98
    invoke-static {}, Lcom/redbox/android/http/ImageDownloader;->getInstance()Lcom/redbox/android/http/ImageDownloader;

    move-result-object v3

    iget-object v4, p0, Lcom/redbox/android/view/MovieTitleView;->task:Lcom/redbox/android/model/ImageDownloadTask;

    invoke-virtual {v3, v4}, Lcom/redbox/android/http/ImageDownloader;->push(Lcom/redbox/android/model/ImageDownloadTask;)V

    goto :goto_0
.end method
