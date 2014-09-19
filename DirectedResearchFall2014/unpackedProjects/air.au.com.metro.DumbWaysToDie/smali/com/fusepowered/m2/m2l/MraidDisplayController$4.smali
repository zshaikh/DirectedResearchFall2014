.class Lcom/fusepowered/m2/m2l/MraidDisplayController$4;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController;->downloadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private pictureInputStream:Ljava/io/InputStream;

.field private pictureOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

.field private uri:Ljava/net/URI;

.field private final synthetic val$pictureStoragePath:Ljava/io/File;

.field private final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->val$uriString:Ljava/lang/String;

    iput-object p3, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->val$pictureStoragePath:Ljava/io/File;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MraidDisplayController$4;)Lcom/fusepowered/m2/m2l/MraidDisplayController;
    .locals 1
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    return-object v0
.end method

.method private loadPictureIntoGalleryApp(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 425
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;)V

    .line 426
    .local v0, mediaScannerConnectionClient:Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;
    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    #calls: Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$5(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 427
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    #calls: Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;->access$1(Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;Landroid/media/MediaScannerConnection;)V

    .line 428
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 429
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 389
    :try_start_0
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->val$uriString:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    iput-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->uri:Ljava/net/URI;

    .line 390
    invoke-static {}, Lcom/fusepowered/m2/m2l/factories/HttpClientFactory;->create()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 391
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->uri:Ljava/net/URI;

    invoke-direct {v2, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 393
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 394
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    .line 396
    sget-object v8, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->LOCATION:Lcom/fusepowered/m2/m2l/util/ResponseHeader;

    invoke-static {v3, v8}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, redirectLocation:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 398
    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    iput-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->uri:Ljava/net/URI;

    .line 401
    :cond_0
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    iget-object v9, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->uri:Ljava/net/URI;

    #calls: Lcom/fusepowered/m2/m2l/MraidDisplayController;->getFileNameForUriAndHttpResponse(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    invoke-static {v8, v9, v3}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$6(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, pictureFileName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->val$pictureStoragePath:Ljava/io/File;

    invoke-direct {v4, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v4, pictureFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, pictureFileFullPath:Ljava/lang/String;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    .line 406
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    iget-object v9, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    invoke-static {v8, v9}, Lcom/fusepowered/m2/m2l/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 408
    invoke-direct {p0, v5}, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->loadPictureIntoGalleryApp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 420
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    invoke-static {v8}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 422
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #pictureFile:Ljava/io/File;
    .end local v5           #pictureFileFullPath:Ljava/lang/String;
    .end local v6           #pictureFileName:Ljava/lang/String;
    .end local v7           #redirectLocation:Ljava/lang/String;
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 410
    .local v0, exception:Ljava/lang/Exception;
    :try_start_1
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    #getter for: Lcom/fusepowered/m2/m2l/MraidDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$2(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/fusepowered/m2/m2l/MraidDisplayController$4$1;

    invoke-direct {v9, p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$4$1;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController$4;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 420
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    invoke-static {v8}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 418
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 419
    iget-object v9, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureInputStream:Ljava/io/InputStream;

    invoke-static {v9}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 420
    iget-object v9, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;->pictureOutputStream:Ljava/io/OutputStream;

    invoke-static {v9}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 421
    throw v8
.end method
