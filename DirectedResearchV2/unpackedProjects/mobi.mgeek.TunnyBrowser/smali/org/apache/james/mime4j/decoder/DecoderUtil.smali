.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 78
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 83
    new-instance v2, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    :goto_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 88
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 94
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 97
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 49
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    new-instance v2, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    :goto_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 59
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 65
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v3, 0x3f

    const/4 v0, 0x0

    .line 214
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 215
    add-int/lit8 v2, p2, -0x2

    if-ne v1, v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 219
    add-int/lit8 v3, p2, -0x2

    if-eq v2, v3, :cond_0

    .line 222
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 223
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 224
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, p2, -0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    if-nez v4, :cond_2

    .line 228
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIME charset \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in encoded word \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' doesn\'t have a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "corresponding Java charset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 235
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' (MIME charset \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in encoded word \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 244
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 245
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing encoded text in encoded word: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 253
    :cond_4
    :try_start_0
    const-string v3, "Q"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 254
    invoke-static {v2, v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 255
    :cond_5
    const-string v3, "B"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    invoke-static {v2, v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 258
    :cond_6
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: Unknown encoding in encoded word \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 266
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding in encoded word \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 271
    :catch_1
    move-exception v1

    .line 272
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not decode encoded word \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 160
    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-object p0

    .line 167
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    .line 170
    :goto_1
    const-string v3, "=?"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 175
    add-int/lit8 v3, v6, 0x2

    .line 176
    if-eq v6, v4, :cond_2

    .line 177
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 178
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 179
    if-eq v7, v4, :cond_2

    .line 180
    add-int/lit8 v3, v7, 0x1

    .line 184
    :cond_2
    if-ne v6, v4, :cond_3

    move v3, v4

    .line 185
    :goto_2
    if-ne v3, v4, :cond_4

    .line 186
    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 184
    :cond_3
    const-string v7, "?="

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    .line 192
    :cond_4
    add-int/lit8 v3, v3, 0x2

    .line 194
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {p0, v6, v3}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 197
    if-nez v7, :cond_5

    .line 198
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_3
    if-eqz v7, :cond_8

    const/4 v0, 0x1

    :goto_4
    move v2, v3

    .line 209
    goto :goto_1

    .line 201
    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 202
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    move v0, v1

    .line 208
    goto :goto_4
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 135
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_0

    .line 136
    const-string v2, "=20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
