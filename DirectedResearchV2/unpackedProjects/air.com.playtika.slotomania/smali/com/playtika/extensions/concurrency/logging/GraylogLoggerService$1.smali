.class Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;
.super Ljava/lang/Object;
.source "GraylogLoggerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->getLogRunnable(Ljava/util/HashMap;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

.field private final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    iput-object p2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;->val$map:Ljava/util/HashMap;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createRequestString(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 10
    .param p1, "urlBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "UTF-8"

    const-string v8, "%26"

    const-string v7, "&"

    .line 122
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 123
    .local v4, "resultUrl":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 124
    .end local p0    # "this":Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 135
    return-object v4

    .line 125
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 127
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {p0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&"

    const-string v6, "%26"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "encodedKey":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&"

    const-string v6, "%26"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "encodedValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private sendRequest(Ljava/lang/String;)V
    .locals 6
    .param p1, "resultUrl"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 141
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 142
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 144
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 146
    .local v3, "inStream":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    const-string v5, "GRAYLOG"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 150
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 151
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 107
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->urlBase:Ljava/lang/String;
    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->access$0(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 108
    const-string v2, "Slotomania Logger"

    const-string v3, "ERROR: urlBase did not defined. init() not called!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    # getter for: Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->urlBase:Ljava/lang/String;
    invoke-static {v2}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->access$0(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;->val$map:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;->createRequestString(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "resultUrl":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;->sendRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v1    # "resultUrl":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 117
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
