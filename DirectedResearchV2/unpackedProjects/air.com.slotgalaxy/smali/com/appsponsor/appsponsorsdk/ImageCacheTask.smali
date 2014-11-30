.class public Lcom/appsponsor/appsponsorsdk/ImageCacheTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCacheTask"


# instance fields
.field private callback:Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;

.field private encoded:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private response:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->callback:Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const-string v1, "ImageCacheTask"

    const-string v0, "ImageCacheTask"

    const-string v0, "ImageCacheTask doInBackground"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v3, "ImageCacheTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageCacheTask start with URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->imageUrl:Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ImageCacheTask"

    const-string v4, "This connections uses cache"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    :goto_2
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    instance-of v4, v0, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    const-string v4, "ImageCacheTask"

    const-string v5, "typecast to bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;

    invoke-direct {v4}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;-><init>()V

    const-string v5, "image/gif"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_4
    invoke-virtual {v4}, Lcom/appsponsor/appsponsorsdk/utils/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/appsponsor/appsponsorsdk/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->encoded:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "ImageCacheTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pre_cache Exception EXCEPTION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_2
    const-string v0, "ImageCacheTask"

    const-string v4, "This connections DOES NOT uses cache"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v4, "ImageCacheTask"

    const-string v5, "not bitmap, most likely an inputstream"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v5, "image/jpeg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x32

    invoke-virtual {v0, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4

    :cond_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->encoded:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    const-string v1, "ImageCacheTask"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "ImageCacheTask"

    const-string v0, "pre_cache results: NON empty"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->callback:Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;

    iget-object v1, p0, Lcom/appsponsor/appsponsorsdk/ImageCacheTask;->imageUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/appsponsor/appsponsorsdk/ImageCacheTask$ImageCacheTaskCallback;->onTaskDone(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ImageCacheTask"

    const-string v0, "pre_cache results: empty"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
