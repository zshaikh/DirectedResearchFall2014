.class Lcom/nativex/monetization/mraid/MRAIDAsyncManager;
.super Ljava/lang/Object;
.source "MRAIDAsyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/MRAIDAsyncManager$1;,
        Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;,
        Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;
    }
.end annotation


# instance fields
.field private action:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

.field private context:Landroid/content/Context;

.field private listener:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->INVALID:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->action:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    .line 52
    return-void
.end method

.method private downloadHtml()V
    .locals 13

    .prologue
    const-string v9, "file:///android_asset/"

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_0
    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->url:Ljava/lang/String;

    const-string v10, "file:///"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 130
    const/4 v8, 0x0

    .line 131
    .local v8, "stream":Ljava/io/InputStream;
    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->url:Ljava/lang/String;

    const-string v10, "file:///android_asset/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 132
    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    iget-object v10, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->url:Ljava/lang/String;

    const-string v11, "file:///android_asset/"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 136
    :goto_0
    if-nez v8, :cond_1

    .line 137
    const-string v9, "File not found"

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 172
    :goto_1
    const/4 v0, 0x0

    .line 174
    .end local v8    # "stream":Ljava/io/InputStream;
    :goto_2
    return-void

    .line 134
    .restart local v8    # "stream":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->url:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {v8}, Lcom/nativex/common/Utilities;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 142
    const/4 v9, 0x1

    invoke-direct {p0, v2, v9}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .end local v8    # "stream":Ljava/io/InputStream;
    :goto_3
    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 172
    :goto_4
    const/4 v0, 0x0

    .line 173
    goto :goto_2

    .line 144
    .end local v2    # "data":Ljava/lang/String;
    :cond_2
    :try_start_4
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.useragent"

    const-string v11, "Apache-HttpClient/UNAVAILABLE (java 1.4)"

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 147
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->url:Ljava/lang/String;

    invoke-direct {v5, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 148
    .local v5, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 149
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 150
    .local v7, "statusCode":I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_4

    .line 151
    const/16 v9, 0xcc

    if-ne v7, v9, :cond_3

    .line 152
    const-string v9, "NO AD"

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    :goto_5
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 172
    :goto_6
    const/4 v0, 0x0

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .line 154
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    :cond_3
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server responded with status code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 163
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    :catch_0
    move-exception v9

    move-object v3, v9

    move-object v0, v1

    .line 164
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .local v3, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    const-string v9, "MRAIDController: Exception caught while downloading the content."

    invoke-static {v9, v3}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const-string v9, "Error occured while downloading the AD"

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 168
    :try_start_9
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 172
    :goto_8
    const/4 v0, 0x0

    .line 173
    goto/16 :goto_2

    .line 158
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    :cond_4
    :try_start_a
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 159
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/nativex/common/Utilities;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2    # "data":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 161
    const/4 v9, 0x1

    invoke-direct {p0, v2, v9}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto/16 :goto_3

    .line 167
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    :catchall_0
    move-exception v9

    .line 168
    :goto_9
    :try_start_b
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 172
    :goto_a
    const/4 v0, 0x0

    throw v9

    .line 169
    :catch_1
    move-exception v10

    goto :goto_a

    .line 167
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_9

    .line 169
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto :goto_8

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    move-object v3, v9

    goto :goto_7

    .line 169
    .restart local v2    # "data":Ljava/lang/String;
    :catch_4
    move-exception v9

    goto/16 :goto_4

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "data":Ljava/lang/String;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    :catch_5
    move-exception v9

    goto :goto_6

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v8    # "stream":Ljava/io/InputStream;
    :catch_6
    move-exception v9

    goto/16 :goto_1
.end method

.method static downloadHtml(Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;Landroid/content/Context;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;-><init>()V

    .line 91
    .local v0, "manager":Lcom/nativex/monetization/mraid/MRAIDAsyncManager;
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->DOWNLOAD_HTML:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    iput-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->action:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    .line 92
    iput-object p0, v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->url:Ljava/lang/String;

    .line 93
    iput-object p1, v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->listener:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;

    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->context:Landroid/content/Context;

    .line 97
    :cond_0
    invoke-direct {v0}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->start()V

    .line 98
    return-void
.end method

.method private downloadPicture()V
    .locals 5

    .prologue
    .line 116
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 118
    .local v2, "stream":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->storePictureToDevice(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "Failed to download image"

    .line 121
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static downloadPicture(Landroid/content/Context;Ljava/lang/String;Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;

    .prologue
    .line 78
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;

    invoke-direct {v0}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;-><init>()V

    .line 79
    .local v0, "manager":Lcom/nativex/monetization/mraid/MRAIDAsyncManager;
    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->DOWNLOAD_PICTURE:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    iput-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->action:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    .line 80
    iput-object p1, v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->url:Ljava/lang/String;

    .line 81
    iput-object p2, v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->listener:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->context:Landroid/content/Context;

    .line 83
    invoke-direct {v0}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->start()V

    .line 84
    return-void
.end method

.method private declared-synchronized fireListener(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->listener:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->listener:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;

    invoke-interface {v0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;->onActionComplete(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private start()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method private storePictureToDevice(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeX_temp-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 180
    .local v1, "fileStream":Ljava/io/OutputStream;
    invoke-static {v1, p1}, Lcom/nativex/common/Utilities;->savePictureStreamToFile(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 181
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDAsyncManager$Action:[I

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->action:Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const-string v0, "Unknown HTTP download command"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->fireListener(Ljava/lang/String;Z)V

    .line 68
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->downloadHtml()V

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDAsyncManager;->downloadPicture()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
