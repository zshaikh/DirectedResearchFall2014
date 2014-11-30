.class Lcom/google/android/filecache/SinkContentHandler;
.super Ljava/net/ContentHandler;
.source "SinkContentHandler.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method

.method private static getVia(Ljava/net/URLConnection;)Ljava/util/List;
    .locals 3
    .param p0, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 60
    .local v0, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v2, "via"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 61
    .local v1, "via":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 64
    :cond_0
    return-object v1
.end method

.method static isViaLocalhost(Ljava/net/URLConnection;)Z
    .locals 2
    .param p0, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/android/filecache/SinkContentHandler;->getVia(Ljava/net/URLConnection;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "via":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "1.0 localhost"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.1 localhost"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static skipAll(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/16 v1, 0x1000

    new-array v0, v1, [B

    .line 54
    .local v0, "buffer":[B
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/filecache/SinkContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Void;
    .locals 3
    .param p1, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 75
    .local v0, "input":Ljava/io/InputStream;
    invoke-static {p1}, Lcom/google/android/filecache/SinkContentHandler;->isViaLocalhost(Ljava/net/URLConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 86
    :goto_0
    return-object v2

    .line 82
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/filecache/SinkContentHandler;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 85
    throw v1
.end method
