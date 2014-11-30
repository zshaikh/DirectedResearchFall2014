.class Lcom/voxel/sdk/AssetManager$FetchTask;
.super Landroid/os/AsyncTask;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/voxel/sdk/AssetManager$FetchItem;",
        "Ljava/lang/Void;",
        "Lcom/voxel/sdk/AssetManager$FetchItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/AssetManager;


# direct methods
.method private constructor <init>(Lcom/voxel/sdk/AssetManager;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/voxel/sdk/AssetManager$FetchTask;->this$0:Lcom/voxel/sdk/AssetManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/sdk/AssetManager;Lcom/voxel/sdk/AssetManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/voxel/sdk/AssetManager;
    .param p2, "x1"    # Lcom/voxel/sdk/AssetManager$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/voxel/sdk/AssetManager$FetchTask;-><init>(Lcom/voxel/sdk/AssetManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/voxel/sdk/AssetManager$FetchItem;)Lcom/voxel/sdk/AssetManager$FetchItem;
    .locals 16
    .param p1, "params"    # [Lcom/voxel/sdk/AssetManager$FetchItem;

    .prologue
    .line 124
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    if-nez v12, :cond_0

    .line 125
    const/4 v12, 0x0

    .line 183
    :goto_0
    return-object v12

    .line 126
    :cond_0
    const/4 v12, 0x0

    aget-object v7, p1, v12

    .line 127
    .local v7, "item":Lcom/voxel/sdk/AssetManager$FetchItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/AssetManager$FetchTask;->this$0:Lcom/voxel/sdk/AssetManager;

    move-object v12, v0

    invoke-virtual {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/voxel/sdk/AssetManager;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 128
    .local v5, "fetchedItem":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x5265c00

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 131
    const/4 v12, 0x1

    # setter for: Lcom/voxel/sdk/AssetManager$FetchItem;->success:Z
    invoke-static {v7, v12}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$502(Lcom/voxel/sdk/AssetManager$FetchItem;Z)Z

    move-object v12, v7

    .line 132
    goto :goto_0

    .line 136
    :cond_1
    # getter for: Lcom/voxel/sdk/AssetManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/voxel/sdk/AssetManager;->access$600()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fetching item: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->getApiClient()Lcom/voxel/api/ApiClient;

    move-result-object v12

    invoke-virtual {v12}, Lcom/voxel/api/ApiClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 139
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 140
    .local v9, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 141
    const/4 v12, 0x0

    # setter for: Lcom/voxel/sdk/AssetManager$FetchItem;->success:Z
    invoke-static {v7, v12}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$502(Lcom/voxel/sdk/AssetManager$FetchItem;Z)Z

    .line 142
    const/4 v10, 0x0

    .line 144
    .local v10, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {v3, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 149
    :goto_1
    if-nez v10, :cond_2

    move-object v12, v7

    .line 150
    goto :goto_0

    .line 153
    :cond_2
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 154
    .local v11, "statusCode":I
    const/16 v12, 0xc8

    if-eq v11, v12, :cond_3

    move-object v12, v7

    .line 155
    goto :goto_0

    .line 158
    :cond_3
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 159
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-nez v4, :cond_4

    move-object v12, v7

    .line 160
    goto/16 :goto_0

    .line 163
    :cond_4
    :try_start_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voxel/sdk/AssetManager$FetchTask;->this$0:Lcom/voxel/sdk/AssetManager;

    move-object v13, v0

    # getter for: Lcom/voxel/sdk/AssetManager;->mCachePath:Ljava/io/File;
    invoke-static {v13}, Lcom/voxel/sdk/AssetManager;->access$800(Lcom/voxel/sdk/AssetManager;)Ljava/io/File;

    move-result-object v13

    # getter for: Lcom/voxel/sdk/AssetManager$FetchItem;->key:Ljava/lang/String;
    invoke-static {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$000(Lcom/voxel/sdk/AssetManager$FetchItem;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # setter for: Lcom/voxel/sdk/AssetManager$FetchItem;->path:Ljava/io/File;
    invoke-static {v7, v12}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$702(Lcom/voxel/sdk/AssetManager$FetchItem;Ljava/io/File;)Ljava/io/File;

    .line 164
    # getter for: Lcom/voxel/sdk/AssetManager$FetchItem;->path:Ljava/io/File;
    invoke-static {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$700(Lcom/voxel/sdk/AssetManager$FetchItem;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    .line 165
    # getter for: Lcom/voxel/sdk/AssetManager$FetchItem;->path:Ljava/io/File;
    invoke-static {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$700(Lcom/voxel/sdk/AssetManager$FetchItem;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 166
    :cond_5
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 167
    .local v6, "instream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    # getter for: Lcom/voxel/sdk/AssetManager$FetchItem;->path:Ljava/io/File;
    invoke-static {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$700(Lcom/voxel/sdk/AssetManager$FetchItem;)Ljava/io/File;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v8, v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 169
    .local v8, "outstream":Ljava/io/FileOutputStream;
    const/16 v12, 0x800

    new-array v1, v12, [B

    .line 170
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 171
    .local v2, "bytesRead":I
    :goto_2
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_6

    .line 172
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 179
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v8    # "outstream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v12

    :goto_3
    move-object v12, v7

    .line 183
    goto/16 :goto_0

    .line 174
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "instream":Ljava/io/InputStream;
    .restart local v8    # "outstream":Ljava/io/FileOutputStream;
    :cond_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 175
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 176
    # getter for: Lcom/voxel/sdk/AssetManager$FetchItem;->path:Ljava/io/File;
    invoke-static {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$700(Lcom/voxel/sdk/AssetManager$FetchItem;)Ljava/io/File;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/io/File;->setLastModified(J)Z

    .line 177
    const/4 v12, 0x1

    # setter for: Lcom/voxel/sdk/AssetManager$FetchItem;->success:Z
    invoke-static {v7, v12}, Lcom/voxel/sdk/AssetManager$FetchItem;->access$502(Lcom/voxel/sdk/AssetManager$FetchItem;Z)Z

    .line 178
    # getter for: Lcom/voxel/sdk/AssetManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/voxel/sdk/AssetManager;->access$600()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Successfully fetched "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/voxel/sdk/AssetManager$FetchItem;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 180
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v8    # "outstream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    goto :goto_3

    .line 145
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "statusCode":I
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .line 146
    :catch_3
    move-exception v12

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, [Lcom/voxel/sdk/AssetManager$FetchItem;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/AssetManager$FetchTask;->doInBackground([Lcom/voxel/sdk/AssetManager$FetchItem;)Lcom/voxel/sdk/AssetManager$FetchItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/voxel/sdk/AssetManager$FetchItem;)V
    .locals 2
    .param p1, "item"    # Lcom/voxel/sdk/AssetManager$FetchItem;

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/voxel/sdk/AssetManager$FetchItem;->getListener()Lcom/voxel/sdk/AssetManager$FetchListener;

    move-result-object v0

    .line 189
    .local v0, "listener":Lcom/voxel/sdk/AssetManager$FetchListener;
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/sdk/AssetManager$FetchItem;->isSuccess()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/voxel/sdk/AssetManager$FetchListener;->onFetchComplete(ZLcom/voxel/sdk/AssetManager$FetchItem;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, Lcom/voxel/sdk/AssetManager$FetchItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/voxel/sdk/AssetManager$FetchTask;->onPostExecute(Lcom/voxel/sdk/AssetManager$FetchItem;)V

    return-void
.end method
