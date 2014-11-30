.class Lcom/fusepowered/fuseapi/NetworkService$1;
.super Landroid/os/AsyncTask;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/NetworkService;->createImageButton(Ljava/lang/String;Landroid/widget/ImageButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/fuseapi/NetworkService;

.field final synthetic val$imgB:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/fusepowered/fuseapi/NetworkService;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/fusepowered/fuseapi/NetworkService$1;->this$0:Lcom/fusepowered/fuseapi/NetworkService;

    iput-object p2, p0, Lcom/fusepowered/fuseapi/NetworkService$1;->val$imgB:Landroid/widget/ImageButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const-string v8, "Error downloading bitmap"

    const-string v8, "FuseAPI"

    .line 401
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 403
    .local v3, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .local v4, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_1
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 417
    .local v5, "response":Lorg/apache/http/HttpResponse;
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 418
    .local v7, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 419
    .local v6, "statusCode":I
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_0

    .line 420
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 421
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 422
    .local v0, "bytes":[B
    iget-object v8, p0, Lcom/fusepowered/fuseapi/NetworkService$1;->this$0:Lcom/fusepowered/fuseapi/NetworkService;

    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v8, Lcom/fusepowered/fuseapi/NetworkService;->imgFromCall:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    .end local v0    # "bytes":[B
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    :goto_0
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 438
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "statusCode":I
    .end local v7    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_1
    iget-object v8, p0, Lcom/fusepowered/fuseapi/NetworkService$1;->this$0:Lcom/fusepowered/fuseapi/NetworkService;

    iget-object v8, v8, Lcom/fusepowered/fuseapi/NetworkService;->imgFromCall:Landroid/graphics/Bitmap;

    :goto_2
    return-object v8

    .line 408
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    const-string v8, "FuseAPI"

    const-string v9, "Error downloading bitmap"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v8, v10

    goto :goto_2

    .line 412
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 413
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v8, "FuseAPI"

    const-string v9, "Error downloading bitmap"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 436
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v8, v10

    goto :goto_2

    .line 425
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "statusCode":I
    .restart local v7    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_5
    const-string v8, "FuseAPI"

    const-string v9, "Error downloading bitmap -- response code: %d reason: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 429
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "statusCode":I
    .end local v7    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 430
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v8, "FuseAPI"

    const-string v9, "Error decoding bitmap"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 436
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 397
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService$1;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/fusepowered/fuseapi/NetworkService$1;->val$imgB:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 397
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fusepowered/fuseapi/NetworkService$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
