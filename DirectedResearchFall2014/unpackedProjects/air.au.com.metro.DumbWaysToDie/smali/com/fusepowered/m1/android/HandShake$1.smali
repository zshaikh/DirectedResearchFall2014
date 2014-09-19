.class Lcom/fusepowered/m1/android/HandShake$1;
.super Ljava/lang/Object;
.source "HandShake.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/HandShake;->requestHandshake(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/HandShake;

.field final synthetic val$isInitialize:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/HandShake;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    iput-boolean p2, p0, Lcom/fusepowered/m1/android/HandShake$1;->val$isInitialize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 268
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #getter for: Lcom/fusepowered/m1/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v10}, Lcom/fusepowered/m1/android/HandShake;->access$000(Lcom/fusepowered/m1/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    .line 269
    .local v9, tempContext:Landroid/content/Context;
    if-nez v9, :cond_0

    .line 270
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #getter for: Lcom/fusepowered/m1/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v10}, Lcom/fusepowered/m1/android/HandShake;->access$100(Lcom/fusepowered/m1/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #tempContext:Landroid/content/Context;
    check-cast v9, Landroid/content/Context;

    .line 271
    .restart local v9       #tempContext:Landroid/content/Context;
    :cond_0
    if-nez v9, :cond_2

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    const/4 v8, 0x0

    .line 276
    .local v8, isFirstLaunch:Z
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v4, handshakeUrlBuilder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 279
    .local v0, deviceValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "ua"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Android:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #calls: Lcom/fusepowered/m1/android/HandShake;->isFirstLaunch(Landroid/content/Context;)Z
    invoke-static {v10, v9}, Lcom/fusepowered/m1/android/HandShake;->access$200(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)Z

    move-result v8

    .line 281
    if-eqz v8, :cond_3

    .line 283
    const-string v10, "firstlaunch"

    const-string v11, "1"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_3
    iget-boolean v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->val$isInitialize:Z

    if-eqz v10, :cond_4

    .line 286
    const-string v10, "init"

    const-string v11, "1"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_4
    invoke-static {v9, v0}, Lcom/fusepowered/m1/android/MMSDK;->insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    .line 288
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v0           #deviceValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 289
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "&%s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-static {v0, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 345
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #handshakeUrlBuilder:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 347
    .local v7, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v10, "Could not get a handshake. %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    const/4 v8, 0x0

    .line 357
    if-eqz v8, :cond_1

    .line 359
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #calls: Lcom/fusepowered/m1/android/HandShake;->sentFirstLaunch(Landroid/content/Context;)V
    invoke-static {v10, v9}, Lcom/fusepowered/m1/android/HandShake;->access$1000(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 291
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #handshakeUrlBuilder:Ljava/lang/StringBuilder;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/m1/android/HandShake;->access$300()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/fusepowered/m1/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, handshakeUrl:Ljava/lang/String;
    const-string v10, "Performing handshake: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 294
    const/4 v5, 0x0

    .line 298
    .local v5, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_3
    new-instance v10, Lcom/fusepowered/m1/android/HttpGetRequest;

    const/16 v11, 0xbb8

    invoke-direct {v10, v11}, Lcom/fusepowered/m1/android/HttpGetRequest;-><init>(I)V

    invoke-virtual {v10, v3}, Lcom/fusepowered/m1/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 306
    :goto_2
    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_7

    .line 310
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/fusepowered/m1/android/HandShake;->access$300()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https://"

    const-string v12, "http://"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/m1/android/HandShake;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/fusepowered/m1/android/HandShake;->access$300()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/fusepowered/m1/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    const-string v10, "Performing handshake (HTTP Fallback): %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    new-instance v10, Lcom/fusepowered/m1/android/HttpGetRequest;

    invoke-direct {v10}, Lcom/fusepowered/m1/android/HttpGetRequest;-><init>()V

    invoke-virtual {v10, v3}, Lcom/fusepowered/m1/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v5

    .line 321
    :cond_7
    :goto_3
    if-eqz v5, :cond_8

    :try_start_6
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_9

    .line 325
    :cond_8
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://ads.mp.mydas.mobi/appConfigServlet?apid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/fusepowered/m1/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    const-string v10, "Performing handshake (HTTP Fallback Original): %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    new-instance v10, Lcom/fusepowered/m1/android/HttpGetRequest;

    invoke-direct {v10}, Lcom/fusepowered/m1/android/HttpGetRequest;-><init>()V

    invoke-virtual {v10, v3}, Lcom/fusepowered/m1/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v5

    .line 335
    :cond_9
    :goto_4
    if-eqz v5, :cond_b

    :try_start_8
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_b

    .line 337
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    iget-object v11, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Lcom/fusepowered/m1/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/fusepowered/m1/android/HandShake;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v11, v12}, Lcom/fusepowered/m1/android/HandShake;->access$400(Lcom/fusepowered/m1/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    #calls: Lcom/fusepowered/m1/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;)V
    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/HandShake;->access$500(Lcom/fusepowered/m1/android/HandShake;Lorg/json/JSONObject;)V

    .line 338
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #calls: Lcom/fusepowered/m1/android/HandShake;->saveHandShake(Landroid/content/Context;)V
    invoke-static {v10, v9}, Lcom/fusepowered/m1/android/HandShake;->access$600(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V

    .line 339
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #getter for: Lcom/fusepowered/m1/android/HandShake;->handler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/fusepowered/m1/android/HandShake;->access$900(Lcom/fusepowered/m1/android/HandShake;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #getter for: Lcom/fusepowered/m1/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/fusepowered/m1/android/HandShake;->access$700(Lcom/fusepowered/m1/android/HandShake;)Ljava/lang/Runnable;

    move-result-object v11

    iget-object v12, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #getter for: Lcom/fusepowered/m1/android/HandShake;->handShakeCallback:J
    invoke-static {v12}, Lcom/fusepowered/m1/android/HandShake;->access$800(Lcom/fusepowered/m1/android/HandShake;)J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    const-string v10, "Obtained a new handshake"

    invoke-static {v10}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 357
    :goto_5
    if-eqz v8, :cond_1

    .line 359
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #calls: Lcom/fusepowered/m1/android/HandShake;->sentFirstLaunch(Landroid/content/Context;)V
    invoke-static {v10, v9}, Lcom/fusepowered/m1/android/HandShake;->access$1000(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 300
    :catch_1
    move-exception v10

    move-object v7, v10

    .line 302
    .restart local v7       #ioe:Ljava/io/IOException;
    :try_start_9
    const-string v10, "Could not get a handshake. %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2

    .line 350
    .end local v3           #handshakeUrl:Ljava/lang/String;
    .end local v4           #handshakeUrlBuilder:Ljava/lang/StringBuilder;
    .end local v5           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v10

    move-object v1, v10

    .line 352
    .local v1, e:Ljava/lang/Exception;
    :try_start_a
    const-string v10, "Could not get a handshake. %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 353
    const/4 v8, 0x0

    .line 357
    if-eqz v8, :cond_1

    .line 359
    iget-object v10, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #calls: Lcom/fusepowered/m1/android/HandShake;->sentFirstLaunch(Landroid/content/Context;)V
    invoke-static {v10, v9}, Lcom/fusepowered/m1/android/HandShake;->access$1000(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 315
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #handshakeUrl:Ljava/lang/String;
    .restart local v4       #handshakeUrlBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v6       #i$:Ljava/util/Iterator;
    :catch_3
    move-exception v10

    move-object v7, v10

    .line 317
    .restart local v7       #ioe:Ljava/io/IOException;
    :try_start_b
    const-string v10, "Could not get a handshake. %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_3

    .line 357
    .end local v3           #handshakeUrl:Ljava/lang/String;
    .end local v4           #handshakeUrlBuilder:Ljava/lang/StringBuilder;
    .end local v5           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v8, :cond_a

    .line 359
    iget-object v11, p0, Lcom/fusepowered/m1/android/HandShake$1;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #calls: Lcom/fusepowered/m1/android/HandShake;->sentFirstLaunch(Landroid/content/Context;)V
    invoke-static {v11, v9}, Lcom/fusepowered/m1/android/HandShake;->access$1000(Lcom/fusepowered/m1/android/HandShake;Landroid/content/Context;)V

    :cond_a
    throw v10

    .line 329
    .restart local v3       #handshakeUrl:Ljava/lang/String;
    .restart local v4       #handshakeUrlBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v6       #i$:Ljava/util/Iterator;
    :catch_4
    move-exception v10

    move-object v7, v10

    .line 331
    .restart local v7       #ioe:Ljava/io/IOException;
    :try_start_c
    const-string v10, "Could not get a handshake. %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 343
    .end local v7           #ioe:Ljava/io/IOException;
    :cond_b
    const/4 v8, 0x0

    goto :goto_5
.end method
