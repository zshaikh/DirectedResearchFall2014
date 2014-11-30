.class public Lcom/nativex/common/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/common/Utilities$FlushedInputStream;
    }
.end annotation


# static fields
.field private static final BYTE_DIMENTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 464
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "kB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nativex/common/Utilities;->BYTE_DIMENTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method public static appendParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "UTF-8"

    .line 412
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 416
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0    # "url":Ljava/lang/String;
    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 418
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_1
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    :goto_2
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 419
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 422
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 427
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 430
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_3
    return-object v5

    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    move-object v5, p0

    goto :goto_3
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 312
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 313
    .local v0, "height":I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 314
    .local v3, "width":I
    const/4 v2, 0x1

    .line 316
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 319
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 320
    .local v1, "heightRatio":I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 325
    .local v4, "widthRatio":I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 328
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "heightRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2
    move v2, v4

    .line 325
    goto :goto_0
.end method

.method private static convertColorPartToHex(I)Ljava/lang/String;
    .locals 3
    .param p0, "colorPart"    # I

    .prologue
    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method

.method public static convertColorToRGBHex(I)Ljava/lang/String;
    .locals 3
    .param p0, "color"    # I

    .prologue
    .line 91
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Lcom/nativex/common/Utilities;->convertColorPartToHex(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "hex":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Lcom/nativex/common/Utilities;->convertColorPartToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Lcom/nativex/common/Utilities;->convertColorPartToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public static declared-synchronized convertInputStreamToByteArrat(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const-class v3, Lcom/nativex/common/Utilities;

    monitor-enter v3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x4000

    new-array v1, v4, [B

    .line 141
    .local v1, "data":[B
    :goto_0
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "nRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v2    # "nRead":I
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 145
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v2    # "nRead":I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 147
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit v3

    return-object v4
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    .line 114
    :try_start_0
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 116
    .local v4, "writer":Ljava/io/Writer;
    const/16 v5, 0x400

    new-array v0, v5, [C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v0, "buffer":[C
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v3, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .local v2, "n":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 121
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    .end local v2    # "n":I
    .end local v3    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .end local v0    # "buffer":[C
    .end local v4    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Utilities.convertStreamToString(): exception caught."

    invoke-static {v5, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, ""

    :goto_1
    return-object v5

    .line 124
    .restart local v0    # "buffer":[C
    .restart local v2    # "n":I
    .restart local v3    # "reader":Ljava/io/Reader;
    .restart local v4    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public static decodeSampledBitmapFromInternalMemory(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 287
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 289
    .local v3, "stream":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 290
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 291
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-static {v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 294
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 296
    invoke-static {v1, p2, p3}, Lcom/nativex/common/Utilities;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 299
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    invoke-static {v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 304
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "padding":Landroid/graphics/Rect;
    .end local v3    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v4

    .line 301
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Exception caught while decoding Bitmap from stream"

    invoke-static {v4, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 152
    const-class v3, Lcom/nativex/common/Utilities;

    monitor-enter v3

    if-eqz p0, :cond_0

    .line 154
    :try_start_0
    invoke-static {p0}, Lcom/nativex/common/Utilities;->convertInputStreamToByteArrat(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 155
    .local v1, "bytes":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v4, v0

    .line 162
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bytes":[B
    :goto_0
    monitor-exit v3

    return-object v4

    .line 158
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 159
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Unable to convert downloaded stream to bitmap"

    invoke-static {v4, v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 443
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 444
    .local v9, "url":Ljava/net/URL;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v9

    .line 446
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 449
    .end local v0    # "uri":Ljava/net/URI;
    .end local v9    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 447
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 448
    .local v8, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The url ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") cannot be parsed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, p0

    .line 449
    goto :goto_0
.end method

.method public static getDateInFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 216
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 221
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 218
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception caught when generating picture name while formatting pattern date/time."

    invoke-static {v2, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    invoke-static {}, Lcom/nativex/common/Utilities;->getLocaleDateFormat()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDateTimeUtcAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "utcDateTime":Ljava/lang/String;
    return-object v0
.end method

.method public static getLocaleDateFormat()Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    :try_start_0
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 206
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 210
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    :goto_0
    return-object v2

    .line 207
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception caught when generating picture name while formatting locale date/time."

    invoke-static {v2, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHttpOrHttpsUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 80
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x1

    .line 86
    .end local v0    # "uri":Ljava/net/URI;
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v1

    .line 86
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static milliesToMinutes(J)J
    .locals 2
    .param p0, "abs"    # J

    .prologue
    .line 398
    const-wide/32 v0, 0xea60

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static parseBytes(I)Ljava/lang/String;
    .locals 9
    .param p0, "byteCount"    # I

    .prologue
    .line 472
    int-to-float v5, p0

    .line 474
    .local v5, "size":F
    const/4 v0, 0x0

    .line 475
    .local v0, "byteDimention":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v6, Lcom/nativex/common/Utilities;->BYTE_DIMENTIONS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 476
    move v0, v2

    .line 477
    int-to-float v6, p0

    const/high16 v7, 0x44800000

    div-float v3, v6, v7

    .line 478
    .local v3, "newSize":F
    const/high16 v6, 0x3f800000

    cmpg-float v6, v3, v6

    if-gez v6, :cond_1

    .line 483
    .end local v3    # "newSize":F
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v6, "0.00##"

    invoke-direct {v1, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 484
    .local v1, "df":Ljava/text/DecimalFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/nativex/common/Utilities;->BYTE_DIMENTIONS:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, "result":Ljava/lang/String;
    return-object v4

    .line 481
    .end local v1    # "df":Ljava/text/DecimalFormat;
    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "newSize":F
    :cond_1
    move v5, v3

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "formats"    # [Ljava/lang/String;

    .prologue
    .line 334
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 336
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 341
    :goto_0
    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DateUtils"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v2, "Z"

    .line 375
    const-string v1, "Z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "Z"

    const-string v1, "+0000"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 378
    :cond_0
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd HH:mmZ"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "yyyy-MM-dd\'T\'HH:mmz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "yyyy-MM-dd HH:mmz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "yyyy-MM-dd HH:mm:ssz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSSz"

    aput-object v2, v0, v1

    .line 393
    .local v0, "formats":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/nativex/common/Utilities;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static readMotionAction(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 9
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-class v8, Landroid/view/MotionEvent;

    .line 346
    const-class v7, Landroid/view/MotionEvent;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 347
    .local v2, "declaredFields":[Ljava/lang/reflect/Field;
    const-class v7, Landroid/view/MotionEvent;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 349
    .local v4, "fields":[Ljava/lang/reflect/Field;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v0, "allFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 351
    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 353
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v1, v5

    .line 355
    .local v3, "f":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ACTION_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 356
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 357
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    if-ne v7, v8, :cond_1

    .line 358
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 359
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 368
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :goto_1
    return-object v7

    .line 363
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v7

    .line 353
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 368
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_2
    const-string v7, "Invalid action"

    goto :goto_1
.end method

.method public static saveBitmapToPicturesFolder(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v11, "Utilities - failed to close stream"

    .line 230
    const-string v8, ".jpg"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 231
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 237
    .local v6, "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "image-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "yyyy-MM-dd_HH:mm:ss"

    invoke-static {v9}, Lcom/nativex/common/Utilities;->getDateInFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "filename":Ljava/lang/String;
    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 239
    .local v7, "path":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 241
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v4, "file":Ljava/io/File;
    const/4 v0, 0x1

    .line 243
    .local v0, "count":I
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 244
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4    # "file":Ljava/io/File;
    goto :goto_1

    .line 233
    .end local v0    # "count":I
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v7    # "path":Ljava/io/File;
    :cond_0
    const-string p2, ".png"

    .line 234
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v6    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .line 246
    .restart local v0    # "count":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "filename":Ljava/lang/String;
    .restart local v7    # "path":Ljava/io/File;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 247
    const/4 v2, 0x0

    .line 249
    .local v2, "fOut":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v2    # "fOut":Ljava/io/OutputStream;
    .local v3, "fOut":Ljava/io/OutputStream;
    const/16 v8, 0x64

    :try_start_1
    invoke-virtual {p1, v6, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 252
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 253
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 255
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    new-instance v10, Lcom/nativex/common/Utilities$1;

    invoke-direct {v10}, Lcom/nativex/common/Utilities$1;-><init>()V

    invoke-static {p0, v8, v9, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 265
    const-string v8, "Picture Stored"

    invoke-static {v8}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    if-eqz v3, :cond_2

    .line 271
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    :cond_2
    :goto_2
    return-void

    .line 272
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Utilities - failed to close stream"

    invoke-static {v11, v1}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fOut":Ljava/io/OutputStream;
    .restart local v2    # "fOut":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 267
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v2, :cond_3

    .line 271
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 275
    :cond_3
    :goto_5
    throw v8

    .line 272
    :catch_2
    move-exception v1

    .line 274
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "Utilities - failed to close stream"

    invoke-static {v11, v1}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fOut":Ljava/io/OutputStream;
    .restart local v3    # "fOut":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fOut":Ljava/io/OutputStream;
    .restart local v2    # "fOut":Ljava/io/OutputStream;
    goto :goto_4

    .line 266
    .end local v2    # "fOut":Ljava/io/OutputStream;
    .restart local v3    # "fOut":Ljava/io/OutputStream;
    :catch_3
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .end local v3    # "fOut":Ljava/io/OutputStream;
    .restart local v2    # "fOut":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public static savePictureStreamToFile(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 6
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 193
    new-instance v2, Lcom/nativex/common/Utilities$FlushedInputStream;

    invoke-direct {v2, p1}, Lcom/nativex/common/Utilities$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 194
    .local v2, "pictureStream":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-ge v3, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    :goto_0
    new-array v0, v3, [B

    .line 195
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 196
    .local v1, "bytesRead":I
    :goto_1
    array-length v3, v0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    .line 197
    invoke-virtual {p0, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :cond_0
    move v3, v5

    .line 194
    goto :goto_0

    .line 199
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 200
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 201
    return-void
.end method

.method public static sleep(J)V
    .locals 4
    .param p0, "millies"    # J

    .prologue
    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p0

    .line 456
    .local v0, "endTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 458
    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v2

    goto :goto_0

    .line 462
    :cond_0
    return-void
.end method

.method public static stringIsEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 403
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
