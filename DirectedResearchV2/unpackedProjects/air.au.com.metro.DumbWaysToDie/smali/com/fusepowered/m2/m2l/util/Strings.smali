.class public Lcom/fusepowered/m2/m2l/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "numberBytesRead":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .local v2, "out":Ljava/lang/StringBuffer;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 43
    .local v0, "bytes":[B
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 44
    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    if-nez p0, :cond_0

    move v0, v1

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
