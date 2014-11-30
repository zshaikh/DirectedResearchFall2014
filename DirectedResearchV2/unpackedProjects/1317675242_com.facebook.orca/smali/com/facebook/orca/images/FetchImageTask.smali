.class public Lcom/facebook/orca/images/FetchImageTask;
.super Lcom/facebook/orca/common/async/KeyedAsyncTask;
.source "FetchImageTask.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final c:Lcom/facebook/orca/images/ImageCache;

.field private d:Lcom/facebook/orca/images/FetchImageParams;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/facebook/orca/images/ImageCache;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;-><init>()V

    .line 64
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageTask;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 73
    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    .line 74
    return-void
.end method

.method private a(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/ImageCache;->e(Lcom/facebook/orca/images/ImageCacheKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 164
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const-string v0, "Download image"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v1

    .line 131
    const-string v2, "http"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/images/FetchImageTask;->h()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 139
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 142
    const-string v0, "Insert into cache"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 144
    :try_start_1
    sget-object v2, Lcom/facebook/orca/images/FetchImageTask$1;->a:[I

    invoke-static {v1}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResult;)Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, p1, v2, v3}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v4

    goto :goto_0

    .line 133
    :cond_2
    :try_start_2
    const-string v2, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/facebook/orca/images/FetchImageTask;->i()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v1

    .line 146
    :pswitch_0
    :try_start_3
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-static {v1}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->b(Lcom/facebook/orca/images/FetchImageTask$DownloadResult;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V

    .line 147
    invoke-static {v1}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->b(Lcom/facebook/orca/images/FetchImageTask$DownloadResult;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v1

    goto :goto_0

    .line 150
    :pswitch_1
    :try_start_4
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, p1, v2, v3}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v4

    goto/16 :goto_0

    .line 154
    :pswitch_2
    :try_start_5
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, p1, v2, v3}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 164
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v4

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lorg/apache/http/HttpResponse;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    const-string v0, "Decode image stream"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 261
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 263
    :try_start_0
    const-string v2, "orca:FetchImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 265
    new-instance v3, Ljava/io/File;

    const-string v4, "temp"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 269
    :cond_0
    const-string v2, "fetch_image_task"

    const-string v4, ""

    invoke-static {v2, v4, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 272
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/images/FetchImageTask;->a(Lorg/apache/http/HttpEntity;Ljava/io/File;)V

    .line 275
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 279
    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 280
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 282
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v4, :cond_1

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v4, :cond_2

    .line 308
    :cond_1
    :try_start_3
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 311
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 314
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v6

    .line 316
    :goto_0
    return-object v0

    .line 288
    :cond_2
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 289
    :try_start_6
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 290
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 291
    iget-object v5, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 292
    iget-object v6, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 296
    mul-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x4

    .line 297
    mul-int/lit8 v3, v5, 0x11

    mul-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0xa

    move v5, v1

    move v1, v7

    .line 299
    :goto_1
    if-le v5, v3, :cond_3

    .line 300
    mul-int/lit8 v1, v1, 0x2

    .line 301
    div-int/lit8 v5, v5, 0x4

    goto :goto_1

    .line 304
    :cond_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 305
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 306
    const/4 v1, 0x0

    invoke-static {v4, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v1

    .line 308
    :try_start_7
    invoke-static {v4}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 311
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 314
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v1

    .line 316
    goto :goto_0

    .line 308
    :catchall_0
    move-exception v3

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    :goto_2
    :try_start_9
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 311
    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 314
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v1

    .line 308
    :catchall_3
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 255
    invoke-virtual {v1, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/http/HttpEntity;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 323
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 326
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 328
    return-void

    .line 325
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 326
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v1
.end method

.method private h()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 207
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_6

    .line 208
    const-string v2, "orca:FetchImageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/facebook/orca/images/FetchImageTask;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    const-string v4, "image"

    invoke-virtual {v3, v4, v2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 212
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 213
    const/16 v5, 0x12e

    if-ne v4, v5, :cond_2

    .line 214
    const-string v4, "Location"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 215
    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 216
    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Landroid/net/Uri;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_7

    .line 218
    invoke-direct {p0, v1, v3}, Lcom/facebook/orca/images/FetchImageTask;->a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 220
    :goto_1
    const-string v3, "https"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attachment.fbsbx.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 225
    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 229
    :cond_1
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    .line 248
    :goto_2
    return-object v0

    .line 230
    :cond_2
    const/16 v0, 0xc8

    if-ne v4, v0, :cond_4

    .line 231
    invoke-direct {p0, v3}, Lcom/facebook/orca/images/FetchImageTask;->a(Lorg/apache/http/HttpResponse;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_3

    .line 233
    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_2

    .line 235
    :cond_3
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->DECODE_ERROR:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_2

    .line 237
    :cond_4
    const/16 v0, 0x194

    if-ne v4, v0, :cond_5

    .line 238
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_2

    .line 241
    :cond_5
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v1, "orca:FetchImageTask"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->IO_EXCEPTION:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_2

    .line 248
    :cond_6
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->OTHER:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v1, v3

    goto :goto_1
.end method

.method private i()Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 335
    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    .line 338
    sget-object v0, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->NOT_FOUND:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 341
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_1

    .line 343
    invoke-static {v1}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 348
    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    .line 345
    :cond_1
    :try_start_1
    sget-object v1, Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;->DECODE_ERROR:Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;

    invoke-static {v1}, Lcom/facebook/orca/images/FetchImageTask$DownloadResult;->a(Lcom/facebook/orca/images/FetchImageTask$DownloadResultCode;)Lcom/facebook/orca/images/FetchImageTask$DownloadResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 348
    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method a(Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/images/FetchImageParams;

    .line 78
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/FetchImageTask;->a(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method a(Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;)V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/facebook/orca/images/FetchImageTask;->g:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;->a(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/ImageCache;->d(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->f:Landroid/graphics/drawable/Drawable;

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v1, Lcom/facebook/orca/images/ImageCacheKey;

    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v2}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;)V

    .line 101
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/images/ImageCache;->d(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    if-nez v2, :cond_3

    .line 103
    invoke-direct {p0, v1}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    :goto_1
    if-eqz v1, :cond_2

    .line 107
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->d:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v2}, Lcom/facebook/orca/images/FetchImageParams;->b()Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v2, v1}, Lcom/facebook/orca/images/UrlImageProcessor;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    invoke-virtual {v2}, Lcom/facebook/orca/images/UrlImageProcessor;->a()Ljava/lang/String;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_2

    sget-object v3, Lcom/facebook/orca/images/UrlImageProcessor;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 112
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->c:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V

    :cond_2
    move-object v0, v1

    .line 117
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/facebook/orca/images/FetchImageTask;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/images/FetchImageTask;->g:Z

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;

    .line 172
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageTask;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageTask;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    return-void
.end method
