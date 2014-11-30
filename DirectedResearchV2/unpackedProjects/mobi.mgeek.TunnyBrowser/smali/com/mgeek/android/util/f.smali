.class Lcom/mgeek/android/util/f;
.super Lcom/dolphin/browser/util/f;
.source "DataSyncScheduler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgeek/android/util/e;

.field private b:Lcom/mgeek/android/util/h;


# direct methods
.method public constructor <init>(Lcom/mgeek/android/util/e;Lcom/mgeek/android/util/h;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    .line 260
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    instance-of v0, v0, Lcom/dolphin/browser/ui/launcher/a/g;

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "Preload Speeddial Data"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mgeek/android/util/f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 277
    iget-object v0, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    invoke-virtual {v0}, Lcom/mgeek/android/util/h;->i()V

    .line 280
    iget-object v0, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    invoke-virtual {v0}, Lcom/mgeek/android/util/h;->a()Ljava/lang/String;

    move-result-object v5

    .line 283
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "start fetch url %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v4

    invoke-static {v0, v3, v6}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 286
    if-eqz v5, :cond_6

    const-string v0, "assets://"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_4

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 293
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 294
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v0, v3, v6

    const/4 v0, 0x2

    const/4 v6, 0x0

    aput-object v6, v3, v0

    .line 295
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->b(Lcom/mgeek/android/util/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v6, 0x3e8

    invoke-virtual {v0, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 296
    iget-object v3, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v3}, Lcom/mgeek/android/util/e;->b(Lcom/mgeek/android/util/e;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Succeeded to fetch url %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v0, v3, v6}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    move v0, v1

    :goto_0
    move v3, v0

    move-object v0, v2

    .line 359
    :goto_1
    if-nez v3, :cond_1

    .line 360
    iget-object v3, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v3}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Failed to fetch url %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v4

    invoke-static {v3, v6, v7}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 361
    new-array v3, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    .line 362
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->b(Lcom/mgeek/android/util/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v1}, Lcom/mgeek/android/util/e;->b(Lcom/mgeek/android/util/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    monitor-enter v1

    .line 367
    :try_start_2
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->d(Lcom/mgeek/android/util/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->d(Lcom/mgeek/android/util/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "All task are handled, stop my self"

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->b(Lcom/mgeek/android/util/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    :cond_3
    return-object v2

    .line 301
    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v4

    .line 302
    :goto_2
    iget-object v6, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v6}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 305
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "empty response."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move v3, v4

    goto :goto_1

    .line 308
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal response"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_1

    .line 312
    :cond_6
    iget-object v0, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    invoke-virtual {v0}, Lcom/mgeek/android/util/h;->e()[Lorg/apache/http/Header;

    move-result-object v0

    .line 314
    new-instance v3, Lcom/dolphin/browser/Network/h;

    invoke-direct {v3, v5}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    iget-object v3, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    invoke-virtual {v3}, Lcom/mgeek/android/util/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/16 v3, 0xbb8

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    const/16 v3, 0xbb8

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 322
    :try_start_3
    invoke-direct {p0}, Lcom/mgeek/android/util/f;->g()V

    .line 323
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Lcom/mgeek/android/util/f;->f()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v3}, Lcom/mgeek/android/util/e;->c(Lcom/mgeek/android/util/e;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 328
    iget-object v3, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v3}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Got status code %d for url %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v3, v6, v7}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 329
    iget-object v3, v0, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_8

    .line 330
    iget-object v3, v0, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v3}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 332
    iget-object v0, v0, Lcom/dolphin/browser/Network/n;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 334
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "{"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 336
    :cond_7
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    .line 338
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    aput-object v0, v6, v3

    .line 339
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->b(Lcom/mgeek/android/util/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 340
    iget-object v3, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v3}, Lcom/mgeek/android/util/e;->b(Lcom/mgeek/android/util/e;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 344
    :try_start_4
    iget-object v0, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v0}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Succeeded to fetch url %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v0, v3, v6}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move v0, v1

    :goto_3
    move v3, v0

    move-object v0, v2

    .line 353
    goto/16 :goto_1

    .line 347
    :catch_1
    move-exception v0

    move v3, v4

    .line 348
    :goto_4
    iget-object v6, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v6}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 350
    :catch_2
    move-exception v0

    move v3, v4

    .line 351
    :goto_5
    iget-object v6, p0, Lcom/mgeek/android/util/f;->a:Lcom/mgeek/android/util/e;

    invoke-static {v6}, Lcom/mgeek/android/util/e;->a(Lcom/mgeek/android/util/e;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 374
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 350
    :catch_3
    move-exception v0

    move v3, v1

    goto :goto_5

    .line 347
    :catch_4
    move-exception v0

    move v3, v1

    goto :goto_4

    .line 301
    :catch_5
    move-exception v0

    move-object v3, v0

    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v4

    goto :goto_3
.end method

.method public c()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mgeek/android/util/f;->b:Lcom/mgeek/android/util/h;

    .line 264
    invoke-virtual {v0}, Lcom/mgeek/android/util/h;->g()V

    .line 265
    invoke-virtual {p0}, Lcom/mgeek/android/util/f;->f()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/mgeek/android/util/f;->e()Lcom/dolphin/browser/util/p;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v1, v2, :cond_2

    .line 266
    invoke-virtual {v0}, Lcom/mgeek/android/util/h;->f()I

    move-result v1

    .line 267
    const/4 v2, -0x3

    if-eq v2, v1, :cond_0

    const/4 v2, -0x2

    if-ne v2, v1, :cond_1

    .line 269
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/util/h;->a(I)V

    .line 271
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgeek/android/util/f;->b(Z)Z

    .line 273
    :cond_2
    return-void
.end method
