.class public Lcom/redbox/android/http/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# static fields
.field public static final MAX_CONNECTIONS:I = 0x6

.field public static final PARALLEL_CONNECTIONS:I = 0x6

.field private static instance:Lcom/redbox/android/http/ImageDownloader;


# instance fields
.field private active:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->active:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/redbox/android/http/ImageDownloader;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/redbox/android/http/ImageDownloader;->instance:Lcom/redbox/android/http/ImageDownloader;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/redbox/android/http/ImageDownloader;

    invoke-direct {v0}, Lcom/redbox/android/http/ImageDownloader;-><init>()V

    sput-object v0, Lcom/redbox/android/http/ImageDownloader;->instance:Lcom/redbox/android/http/ImageDownloader;

    .line 28
    :cond_0
    sget-object v0, Lcom/redbox/android/http/ImageDownloader;->instance:Lcom/redbox/android/http/ImageDownloader;

    return-object v0
.end method

.method private startNext()V
    .locals 7

    .prologue
    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v5, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/redbox/android/http/ImageDownloader;->active:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v5, v6

    .line 69
    .local v1, "freeSpace":I
    iget-object v5, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_1

    move v0, v1

    .line 70
    .local v0, "batchCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 66
    .end local v0    # "batchCount":I
    .end local v1    # "freeSpace":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    .line 79
    return-void

    .line 69
    .restart local v1    # "freeSpace":I
    :cond_1
    iget-object v5, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 71
    .restart local v0    # "batchCount":I
    .restart local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 72
    .local v3, "next":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    iget-object v5, p0, Lcom/redbox/android/http/ImageDownloader;->active:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "batchCount":I
    .end local v1    # "freeSpace":I
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/lang/Runnable;
    .end local v4    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public didComplete(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->active:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    invoke-direct {p0}, Lcom/redbox/android/http/ImageDownloader;->startNext()V

    .line 84
    return-void
.end method

.method public loadImageFromWebOperations(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 32
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloading image : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 35
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloading image done: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 42
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 38
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while reading image "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while reading image "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public push(Lcom/redbox/android/model/ImageDownloadTask;)V
    .locals 3
    .param p1, "task"    # Lcom/redbox/android/model/ImageDownloadTask;

    .prologue
    const/4 v2, 0x6

    .line 56
    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/redbox/android/http/ImageDownloader;->startNext()V

    .line 63
    :cond_1
    return-void
.end method

.method public removeTask(Lcom/redbox/android/model/ImageDownloadTask;)V
    .locals 1
    .param p1, "task"    # Lcom/redbox/android/model/ImageDownloadTask;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "Removing the task"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/redbox/android/http/ImageDownloader;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public shutDown()V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/redbox/android/http/ImageDownloader;->active:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 90
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/redbox/android/http/ImageDownloader;->active:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
