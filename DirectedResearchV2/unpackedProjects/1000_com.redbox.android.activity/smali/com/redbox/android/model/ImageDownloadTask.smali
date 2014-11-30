.class public Lcom/redbox/android/model/ImageDownloadTask;
.super Ljava/lang/Object;
.source "ImageDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field id:I

.field l:Lcom/redbox/android/http/ImageDownloadListener;

.field src:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/redbox/android/http/ImageDownloadListener;I)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/redbox/android/http/ImageDownloadListener;
    .param p3, "id"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/redbox/android/model/ImageDownloadTask;->l:Lcom/redbox/android/http/ImageDownloadListener;

    .line 21
    iput-object p1, p0, Lcom/redbox/android/model/ImageDownloadTask;->src:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/redbox/android/model/ImageDownloadTask;->id:I

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/redbox/android/http/ImageDownloader;->getInstance()Lcom/redbox/android/http/ImageDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/redbox/android/model/ImageDownloadTask;->src:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/redbox/android/http/ImageDownloader;->loadImageFromWebOperations(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/redbox/android/model/ImageDownloadTask;->l:Lcom/redbox/android/http/ImageDownloadListener;

    iget v2, p0, Lcom/redbox/android/model/ImageDownloadTask;->id:I

    invoke-interface {v1, v0, v2}, Lcom/redbox/android/http/ImageDownloadListener;->done(Landroid/graphics/Bitmap;I)V

    .line 29
    invoke-static {}, Lcom/redbox/android/http/ImageDownloader;->getInstance()Lcom/redbox/android/http/ImageDownloader;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/redbox/android/http/ImageDownloader;->didComplete(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method
