.class public Lcom/google/android/imageloader/BitmapContentHandler;
.super Ljava/net/ContentHandler;
.source "BitmapContentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 41
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lcom/google/android/imageloader/BlockingFilterInputStream;

    invoke-direct {v2, v1}, Lcom/google/android/imageloader/BlockingFilterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .end local v1    # "input":Ljava/io/InputStream;
    .local v2, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 44
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Image could not be decoded"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    move-object v1, v2

    .line 48
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 49
    throw v3

    .line 48
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "input":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 46
    return-object v0

    .line 47
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    goto :goto_0
.end method

.method public bridge synthetic getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/imageloader/BitmapContentHandler;->getContent(Ljava/net/URLConnection;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
