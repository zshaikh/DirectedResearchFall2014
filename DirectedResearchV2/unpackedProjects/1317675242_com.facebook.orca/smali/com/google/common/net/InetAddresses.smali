.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final a:Ljava/net/Inet4Address;

.field private static final b:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->a:Ljava/net/Inet4Address;

    .line 124
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->b:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 187
    if-nez v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    :cond_0
    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'%s\' is not an IP string literal."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'%s\' is extremely broken."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x0

    .line 236
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 269
    :goto_0
    return-object v0

    .line 243
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    array-length v1, v0

    if-eq v1, v2, :cond_1

    move-object v0, v6

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    new-array v1, v2, [B

    .line 250
    const/4 v2, 0x0

    :goto_1
    :try_start_0
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 251
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 252
    if-ltz v3, :cond_2

    const/16 v4, 0xff

    if-le v3, v4, :cond_3

    :cond_2
    move-object v0, v6

    .line 253
    goto :goto_0

    .line 260
    :cond_3
    aget-object v4, v0, v2

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    move-object v0, v6

    .line 261
    goto :goto_0

    .line 263
    :cond_4
    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 266
    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 269
    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/16 v1, 0x10

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 273
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v8

    .line 351
    :goto_0
    return-object v0

    .line 276
    :cond_0
    const-string v0, ":::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v8

    .line 277
    goto :goto_0

    .line 280
    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    if-nez v0, :cond_3

    move-object v0, v8

    .line 283
    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 287
    :cond_3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 293
    const-string v2, "::"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 295
    aget-object v2, v0, v6

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 296
    aget-object v2, v0, v6

    const-string v3, ":"

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    move v3, v6

    .line 298
    :goto_1
    :try_start_0
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 299
    aget-object v4, v2, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v8

    .line 301
    goto :goto_0

    .line 303
    :cond_4
    aget-object v4, v2, v3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 304
    mul-int/lit8 v5, v3, 0x2

    int-to-short v4, v4

    invoke-virtual {v1, v5, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 306
    :cond_5
    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_2
    array-length v3, v0

    if-le v3, v9, :cond_c

    .line 318
    aget-object v3, v0, v9

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 319
    aget-object v3, v0, v9

    const-string v4, ":"

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    move v4, v6

    .line 321
    :goto_3
    :try_start_1
    array-length v5, v3

    if-ge v4, v5, :cond_8

    .line 322
    array-length v5, v3

    sub-int/2addr v5, v4

    sub-int/2addr v5, v9

    .line 323
    aget-object v6, v3, v5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v0, v8

    .line 325
    goto/16 :goto_0

    .line 307
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 308
    goto/16 :goto_0

    :cond_6
    move v2, v9

    .line 312
    goto :goto_2

    .line 327
    :cond_7
    aget-object v5, v3, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 328
    sub-int v6, v10, v4

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0x2

    .line 329
    int-to-short v5, v5

    invoke-virtual {v1, v6, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 331
    :cond_8
    array-length v3, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :goto_4
    add-int/2addr v2, v3

    .line 343
    if-le v2, v10, :cond_a

    move-object v0, v8

    .line 344
    goto/16 :goto_0

    .line 332
    :catch_1
    move-exception v0

    move-object v0, v8

    .line 333
    goto/16 :goto_0

    :cond_9
    move v3, v9

    .line 337
    goto :goto_4

    .line 346
    :cond_a
    array-length v0, v0

    if-ne v0, v9, :cond_b

    if-eq v2, v10, :cond_b

    move-object v0, v8

    .line 348
    goto/16 :goto_0

    .line 351
    :cond_b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move v3, v6

    goto :goto_4
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 355
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 356
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 357
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 359
    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    .line 362
    :cond_0
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
