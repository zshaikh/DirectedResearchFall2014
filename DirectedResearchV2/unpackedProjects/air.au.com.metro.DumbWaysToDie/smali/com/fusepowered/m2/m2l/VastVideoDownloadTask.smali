.class public Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;
.super Landroid/os/AsyncTask;
.source "VastVideoDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final HTTP_CLIENT_TIMEOUT:I = 0x2710

.field private static final MAX_TEMP_FILE_LENGTH:J = 0x17d7840L

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "mopub-vast"


# instance fields
.field private final mDiskLruCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

.field private final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final mOnDownloadCompleteListener:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;Lcom/fusepowered/m2/m2l/DiskLruCache;)V
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;
    .param p2, "diskLruCache"    # Lcom/fusepowered/m2/m2l/DiskLruCache;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mOnDownloadCompleteListener:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;

    .line 62
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mDiskLruCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

    .line 63
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->create(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 64
    return-void
.end method


# virtual methods
.method connectToUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "videoUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to connect to null url."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "httpget":Lorg/apache/http/client/methods/HttpGet;
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 113
    .local v1, "response":Lorg/apache/http/HttpResponse;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 114
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Obtained null response from video url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method copyInputStreamToTempFile(Ljava/io/InputStream;)Ljava/io/File;
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v3, "mopub-vast"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mDiskLruCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

    invoke-virtual {v5}, Lcom/fusepowered/m2/m2l/DiskLruCache;->getCacheDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 122
    .local v2, "tempFile":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v1, "outputStream":Ljava/io/OutputStream;
    const-wide/32 v3, 0x17d7840

    :try_start_0
    invoke-static {p1, v1, v3, v4}, Lcom/fusepowered/m2/m2l/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {p1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 134
    return-object v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "exception":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 128
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v0    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 130
    invoke-static {p1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 132
    throw v3
.end method

.method copyTempFileIntoCache(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3
    .param p1, "videoUrl"    # Ljava/lang/String;
    .param p2, "tempFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v1, "temporaryVideoStream":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mDiskLruCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

    invoke-virtual {v2, p1, v1}, Lcom/fusepowered/m2/m2l/DiskLruCache;->putStream(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    .line 140
    .local v0, "savedSuccessfully":Z
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 141
    return v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p1, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    .line 69
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->downloadToCache(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method downloadToCache(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 92
    .local v2, "savedSuccessfully":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->connectToUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 93
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->copyInputStreamToTempFile(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v3

    .line 94
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {p0, p1, v3}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->copyTempFileIntoCache(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    .line 95
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v4}, Lcom/fusepowered/m2/m2l/util/HttpClients;->safeShutdown(Lorg/apache/http/client/HttpClient;)V

    .line 102
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "tempFile":Ljava/io/File;
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 96
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MoPub"

    const-string v5, "Failed to download video."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v4}, Lcom/fusepowered/m2/m2l/util/HttpClients;->safeShutdown(Lorg/apache/http/client/HttpClient;)V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 99
    iget-object v5, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v5}, Lcom/fusepowered/m2/m2l/util/HttpClients;->safeShutdown(Lorg/apache/http/client/HttpClient;)V

    .line 100
    throw v4
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mOnDownloadCompleteListener:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mOnDownloadCompleteListener:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;->onDownloadSuccess()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mOnDownloadCompleteListener:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->mOnDownloadCompleteListener:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;->onDownloadFailed()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
