.class public Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;
.super Ljava/net/ContentHandler;
.source "GamesysContentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method

.method public static loadCharInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 41
    const/high16 v5, 0x10000

    new-array v0, v5, [C

    .line 42
    .local v0, "buffer":[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v3, "out":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v2, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v2, "in":Ljava/io/Reader;
    :cond_0
    :goto_0
    array-length v5, v0

    invoke-virtual {v2, v0, v6, v5}, Ljava/io/Reader;->read([CII)I

    move-result v4

    .line 53
    .local v4, "read":I
    if-lez v4, :cond_1

    .line 54
    invoke-virtual {v3, v0, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    if-gez v4, :cond_0

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 46
    .end local v2    # "in":Ljava/io/Reader;
    .end local v4    # "read":I
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .restart local v2    # "in":Ljava/io/Reader;
    goto :goto_0
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 2
    .param p1, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 31
    .local v0, "input":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;->loadCharInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
