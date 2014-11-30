.class final Lcom/facebook/internal/FileLruCache$StreamHeader;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamHeader"
.end annotation


# static fields
.field private static final HEADER_VERSION:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 355
    .local v0, "version":I
    if-eqz v0, :cond_0

    .line 356
    const/4 p0, 0x0

    .line 398
    .end local v0    # "version":I
    .end local p0    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object p0

    .line 359
    .restart local v0    # "version":I
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_0
    const/4 v0, 0x0

    .line 360
    .local v0, "headerSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v1, v0

    .end local v0    # "headerSize":I
    .local v1, "headerSize":I
    :goto_1
    const/4 v0, 0x3

    if-lt v2, v0, :cond_1

    .line 371
    new-array v1, v1, [B

    .line 372
    .local v1, "headerBytes":[B
    const/4 v0, 0x0

    .line 373
    .end local v2    # "i":I
    .local v0, "count":I
    :goto_2
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 384
    new-instance v0, Ljava/lang/String;

    .end local v0    # "count":I
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 385
    .local v0, "headerString":Ljava/lang/String;
    const/4 p0, 0x0

    .line 386
    .local p0, "header":Lorg/json/JSONObject;
    new-instance p0, Lorg/json/JSONTokener;

    .end local p0    # "header":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 388
    .local p0, "tokener":Lorg/json/JSONTokener;
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    .line 389
    .local p0, "parsed":Ljava/lang/Object;
    instance-of v0, p0, Lorg/json/JSONObject;

    .end local v0    # "headerString":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 390
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v1, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .end local v1    # "headerBytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readHeader: expected JSONObject, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .end local p0    # "parsed":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    const/4 p0, 0x0

    goto :goto_0

    .line 361
    .local v1, "headerSize":I
    .restart local v2    # "i":I
    .local p0, "stream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 362
    .local v0, "b":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 363
    sget-object p0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .end local p0    # "stream":Ljava/io/InputStream;
    sget-object v0, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .line 364
    .end local v0    # "b":I
    const-string v1, "readHeader: stream.read returned -1 while reading header size"

    .line 363
    .end local v1    # "headerSize":I
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 p0, 0x0

    goto :goto_0

    .line 367
    .restart local v0    # "b":I
    .restart local v1    # "headerSize":I
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_2
    shl-int/lit8 v1, v1, 0x8

    .line 368
    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 360
    .end local v1    # "headerSize":I
    .local v0, "headerSize":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v1, v0

    .end local v0    # "headerSize":I
    .local v1, "headerSize":I
    goto :goto_1

    .line 374
    .end local v2    # "i":I
    .local v0, "count":I
    .local v1, "headerBytes":[B
    :cond_3
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 375
    .local v2, "readCount":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    .line 376
    sget-object p0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .end local p0    # "stream":Ljava/io/InputStream;
    sget-object v2, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .line 377
    .end local v2    # "readCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readHeader: stream.read stopped at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0    # "count":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " when expected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    array-length v1, v1

    .end local v1    # "headerBytes":[B
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {p0, v2, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 381
    .restart local v0    # "count":I
    .restart local v1    # "headerBytes":[B
    .restart local v2    # "readCount":I
    .restart local p0    # "stream":Ljava/io/InputStream;
    :cond_4
    add-int/2addr v0, v2

    goto/16 :goto_2

    .line 393
    .end local v0    # "count":I
    .end local v2    # "readCount":I
    .local p0, "parsed":Ljava/lang/Object;
    :cond_5
    :try_start_1
    check-cast p0, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .local p0, "header":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 394
    .end local v1    # "headerBytes":[B
    .end local p0    # "header":Lorg/json/JSONObject;
    :catch_0
    move-exception p0

    .line 395
    .local p0, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "e":Lorg/json/JSONException;
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "header"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "headerString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 345
    .local v0, "headerBytes":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 346
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 347
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 348
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 350
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 351
    return-void
.end method
