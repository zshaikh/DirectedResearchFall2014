.class public Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pocketchange/android/api/HTTPResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/api/APIRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "APIHTTPResponseHandler"
.end annotation


# instance fields
.field private final debug:Z

.field private final jsonResponseHandler:Lcom/pocketchange/android/api/JSONResponseHandler;

.field private final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/pocketchange/android/api/JSONResponseHandler;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonResponseHandler"    # Lcom/pocketchange/android/api/JSONResponseHandler;
    .param p3, "debug"    # Z

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->url:Ljava/lang/String;

    .line 355
    iput-object p2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->jsonResponseHandler:Lcom/pocketchange/android/api/JSONResponseHandler;

    .line 356
    iput-boolean p3, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->debug:Z

    .line 357
    return-void
.end method


# virtual methods
.method protected getDebug()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->debug:Z

    return v0
.end method

.method protected getJSONResponseHandler()Lcom/pocketchange/android/api/JSONResponseHandler;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->jsonResponseHandler:Lcom/pocketchange/android/api/JSONResponseHandler;

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->url:Ljava/lang/String;

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v0, "message"

    const-string v0, ""

    const-string v8, "]"

    const-string v7, "PCAPIRequest"

    .line 361
    .line 362
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 363
    if-nez v0, :cond_2

    move-object v1, v5

    .line 365
    :goto_0
    if-nez v1, :cond_3

    move-object v0, v5

    move-object v1, v5

    .line 395
    :goto_1
    iget-boolean v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->debug:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 396
    const-string v0, "PCAPIRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server returned empty response for URL ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 407
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_8

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST FOR URL ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] FAILED WITH STATUS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_2
    if-eqz v1, :cond_9

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". SERVER MESSAGE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    :goto_3
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    const-string v1, "PCAPIRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error processing JSON for URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    :cond_1
    :goto_4
    return-void

    .line 363
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 371
    :cond_3
    :try_start_2
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 375
    :goto_5
    if-eqz v0, :cond_4

    :try_start_3
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 376
    :cond_4
    const-string v0, "UTF-8"

    .line 378
    :cond_5
    invoke-static {v1, v0}, Lcom/pocketchange/android/util/IOUtils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v5

    move-object v2, v5

    .line 392
    :goto_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v2

    .line 393
    goto/16 :goto_1

    .line 372
    :catch_1
    move-exception v0

    .line 373
    :try_start_5
    const-string v2, "PCAPIRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error determining character set from response for URL ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v5

    goto :goto_5

    .line 383
    :cond_6
    :try_start_6
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 384
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 385
    :try_start_7
    iget-boolean v2, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->debug:Z

    if-eqz v2, :cond_7

    .line 386
    const-string v2, "PCAPIRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON response for URL ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_7
    move-object v2, v3

    .line 389
    goto :goto_6

    .line 387
    :catch_2
    move-exception v2

    move-object v3, v5

    .line 388
    :goto_7
    :try_start_8
    const-string v4, "PCAPIRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server returned invalid JSON for URL ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v2, v3

    goto :goto_6

    .line 392
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 411
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (MISSING REQUIRED PARAM)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 412
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (MISSING APP ID)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 420
    :cond_8
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->jsonResponseHandler:Lcom/pocketchange/android/api/JSONResponseHandler;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/pocketchange/android/api/APIRequestExecutor$APIHTTPResponseHandler;->jsonResponseHandler:Lcom/pocketchange/android/api/JSONResponseHandler;

    invoke-interface {v0, v1}, Lcom/pocketchange/android/api/JSONResponseHandler;->handleResponse(Lorg/json/JSONObject;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_4

    .line 387
    :catch_3
    move-exception v2

    goto :goto_7

    :cond_9
    move-object v1, v2

    goto/16 :goto_3

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
