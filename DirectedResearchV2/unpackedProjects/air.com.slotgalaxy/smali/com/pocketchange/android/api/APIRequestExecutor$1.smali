.class Lcom/pocketchange/android/api/APIRequestExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/api/APIRequestExecutor;->submitAPIRequest(Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;

.field final synthetic b:Lcom/pocketchange/android/api/JSONResponseHandler;

.field final synthetic c:Lcom/pocketchange/android/api/ExceptionHandler;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/pocketchange/android/api/APIRequestExecutor;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/api/APIRequestExecutor;Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;Lcom/pocketchange/android/api/JSONResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->e:Lcom/pocketchange/android/api/APIRequestExecutor;

    iput-object p2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->a:Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;

    iput-object p3, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->b:Lcom/pocketchange/android/api/JSONResponseHandler;

    iput-object p4, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->c:Lcom/pocketchange/android/api/ExceptionHandler;

    iput-object p5, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v1, "PCAPIRequest"

    .line 136
    const/4 v1, 0x0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->a:Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;

    invoke-interface {v2}, Lcom/pocketchange/android/api/APIRequestExecutor$RequestBuilder;->buildRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 139
    if-nez v3, :cond_1

    .line 140
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Request builder returned null request"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 166
    :goto_0
    if-nez v2, :cond_5

    .line 167
    :try_start_2
    const-string v2, "PCAPIRequest"

    const-string v3, "Error building request"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->d:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 177
    :cond_0
    :goto_2
    return-void

    .line 142
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->e:Lcom/pocketchange/android/api/APIRequestExecutor;

    iget-boolean v1, v1, Lcom/pocketchange/android/api/APIRequestExecutor;->debug:Z

    if-eqz v1, :cond_3

    .line 143
    const-string v1, "PCAPIRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v1, "Authorization"

    invoke-interface {v3, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 145
    array-length v2, v1

    if-lez v2, :cond_2

    .line 146
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 147
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/pocketchange/android/api/APIRequestExecutor;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1}, Lcom/pocketchange/android/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string v2, "PCAPIRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tApp ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    instance-of v1, v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_3

    .line 152
    move-object v0, v3

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-static {v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    const-string v2, "PCAPIRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tParams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;

    move-result-object v1

    const-string v5, ", "

    invoke-static {v1, v5}, Lcom/pocketchange/android/util/CollectionUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    :goto_3
    new-instance v4, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->b:Lcom/pocketchange/android/api/JSONResponseHandler;

    iget-object v5, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->e:Lcom/pocketchange/android/api/APIRequestExecutor;

    iget-boolean v5, v5, Lcom/pocketchange/android/api/APIRequestExecutor;->debug:Z

    invoke-direct {v4, v1, v2, v5}, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;-><init>(Ljava/lang/String;Lcom/pocketchange/android/api/JSONResponseHandler;Z)V

    .line 163
    iget-object v1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->e:Lcom/pocketchange/android/api/APIRequestExecutor;

    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->e:Lcom/pocketchange/android/api/APIRequestExecutor;

    iget-object v2, v2, Lcom/pocketchange/android/api/APIRequestExecutor;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v5, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->c:Lcom/pocketchange/android/api/ExceptionHandler;

    iget-object v6, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->d:Ljava/lang/Runnable;

    invoke-virtual/range {v1 .. v6}, Lcom/pocketchange/android/api/APIRequestExecutor;->submitHTTPRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/pocketchange/android/api/HTTPResponseHandler;Lcom/pocketchange/android/api/ExceptionHandler;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 157
    :cond_4
    const-string v2, "PCAPIRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tBody: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 169
    :cond_5
    :try_start_4
    const-string v3, "PCAPIRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error submitting request for URL ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 172
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->d:Ljava/lang/Runnable;

    if-eqz v2, :cond_6

    .line 173
    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$1;->d:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_6
    throw v1

    .line 164
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_0
.end method
