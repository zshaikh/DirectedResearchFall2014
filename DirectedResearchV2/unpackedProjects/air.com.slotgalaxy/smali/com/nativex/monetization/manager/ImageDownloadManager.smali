.class public Lcom/nativex/monetization/manager/ImageDownloadManager;
.super Ljava/lang/Object;
.source "ImageDownloadManager.java"

# interfaces
.implements Lcom/nativex/monetization/interfaces/IImageDownloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;
    }
.end annotation


# static fields
.field private static instance:Lcom/nativex/monetization/interfaces/IImageDownloader;


# instance fields
.field private storage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/manager/ImageDownloadManager;->instance:Lcom/nativex/monetization/interfaces/IImageDownloader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/manager/ImageDownloadManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/manager/ImageDownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nativex/monetization/manager/ImageDownloadManager;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/manager/ImageDownloadManager;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/nativex/monetization/manager/ImageDownloadManager;->setImageViewBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V

    return-void
.end method

.method private declared-synchronized downloadBitmap(Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/nativex/common/GetImageRequest;

    invoke-direct {v1, p1}, Lcom/nativex/common/GetImageRequest;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "request":Lcom/nativex/common/GetImageRequest;
    new-instance v2, Lcom/nativex/monetization/manager/ImageDownloadManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/nativex/monetization/manager/ImageDownloadManager$1;-><init>(Lcom/nativex/monetization/manager/ImageDownloadManager;Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V

    invoke-virtual {v1, v2}, Lcom/nativex/common/GetImageRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 171
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeImmediate(Lcom/nativex/common/Request;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v1    # "request":Lcom/nativex/common/GetImageRequest;
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ImageDownloadManager: Unexpected exception caught in downloadBitmap()"

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static declared-synchronized getInstance()Lcom/nativex/monetization/interfaces/IImageDownloader;
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/nativex/monetization/manager/ImageDownloadManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nativex/monetization/manager/ImageDownloadManager;->instance:Lcom/nativex/monetization/interfaces/IImageDownloader;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/nativex/monetization/manager/ImageDownloadManager;

    invoke-direct {v1}, Lcom/nativex/monetization/manager/ImageDownloadManager;-><init>()V

    sput-object v1, Lcom/nativex/monetization/manager/ImageDownloadManager;->instance:Lcom/nativex/monetization/interfaces/IImageDownloader;

    .line 64
    :cond_0
    sget-object v1, Lcom/nativex/monetization/manager/ImageDownloadManager;->instance:Lcom/nativex/monetization/interfaces/IImageDownloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized setImageViewBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    if-eqz p3, :cond_0

    .line 114
    const/4 v1, 0x1

    invoke-interface {p3, p1, v1}, Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;->downloadComplete(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ImageDownloadManager: Unexpected exception caught in setImageViewBitmap()"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized downloadBitmapToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/nativex/monetization/manager/ImageDownloadManager;->downloadBitmapToImageView(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized downloadBitmapToImageView(Landroid/widget/ImageView;Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    .local v1, "image":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 82
    invoke-direct {p0, p1, v1, p3}, Lcom/nativex/monetization/manager/ImageDownloadManager;->setImageViewBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    .restart local v1    # "image":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 85
    .local v2, "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    if-nez v2, :cond_2

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .restart local v2    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    iget-object v3, p0, Lcom/nativex/monetization/manager/ImageDownloadManager;->storage:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/nativex/monetization/manager/ImageDownloadManager;->downloadBitmap(Ljava/lang/String;Lcom/nativex/monetization/manager/ImageDownloadManager$OnDownloadComplete;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v1    # "image":Landroid/graphics/Bitmap;
    .end local v2    # "imageViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ImageDownloadManager: Unexpected exception caught in downloadBitmapToImageView()"

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/ImageDownloadManager;->clear()V

    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/manager/ImageDownloadManager;->instance:Lcom/nativex/monetization/interfaces/IImageDownloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
