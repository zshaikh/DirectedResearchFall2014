.class Lcom/pocketchange/android/api/APIRequestExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/api/APIRequestExecutor;->submitHTTPRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/pocketchange/android/api/HTTPResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/http/client/methods/HttpUriRequest;

.field final synthetic b:Lorg/apache/http/client/HttpClient;

.field final synthetic c:Lcom/pocketchange/android/api/HTTPResponseHandler;

.field final synthetic d:Lcom/pocketchange/android/api/ExceptionHandler;

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/pocketchange/android/api/APIRequestExecutor;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/api/APIRequestExecutor;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/HttpClient;Lcom/pocketchange/android/api/HTTPResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->f:Lcom/pocketchange/android/api/APIRequestExecutor;

    iput-object p2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->b:Lorg/apache/http/client/HttpClient;

    iput-object p4, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->c:Lcom/pocketchange/android/api/HTTPResponseHandler;

    iput-object p5, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->d:Lcom/pocketchange/android/api/ExceptionHandler;

    iput-object p6, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v0, "PCHTTPRequest"

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->f:Lcom/pocketchange/android/api/APIRequestExecutor;

    iget-boolean v0, v0, Lcom/pocketchange/android/api/APIRequestExecutor;->debug:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "PCHTTPRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->b:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 191
    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->c:Lcom/pocketchange/android/api/HTTPResponseHandler;

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->c:Lcom/pocketchange/android/api/HTTPResponseHandler;

    invoke-interface {v2, v0}, Lcom/pocketchange/android/api/HTTPResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    :cond_2
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    :try_start_2
    const-string v2, "PCHTTPRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error requesting URL ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v3, v0, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_4

    const-string v3, ": Host not found"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->d:Lcom/pocketchange/android/api/ExceptionHandler;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->d:Lcom/pocketchange/android/api/ExceptionHandler;

    check-cast v0, Ljava/io/IOException;

    invoke-interface {v1, v0}, Lcom/pocketchange/android/api/ExceptionHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->e:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$2;->e:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    throw v0

    .line 195
    :cond_4
    :try_start_3
    const-string v3, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
