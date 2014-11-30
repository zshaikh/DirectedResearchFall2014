.class public Lcom/pocketchange/android/util/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/pocketchange/android/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 12
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 4
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 15
    array-length v0, p2

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 17
    if-lez v1, :cond_0

    .line 18
    invoke-virtual {p1, p2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pocketchange/android/util/IOUtils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    invoke-static {p0, v0}, Lcom/pocketchange/android/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 51
    if-nez p1, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method
