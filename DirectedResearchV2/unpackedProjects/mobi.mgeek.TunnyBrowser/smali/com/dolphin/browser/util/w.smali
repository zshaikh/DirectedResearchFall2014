.class Lcom/dolphin/browser/util/w;
.super Ljava/lang/Object;
.source "BackupHelper.java"


# static fields
.field private static final a:[B


# instance fields
.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/util/w;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0x0t
        0x1t
        0xft
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/w;-><init>(I)V

    .line 427
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/util/w;->b:I

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/util/w;->c:Z

    .line 430
    iput p1, p0, Lcom/dolphin/browser/util/w;->b:I

    .line 431
    return-void
.end method

.method private static final a([B)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 530
    move v1, v0

    .line 531
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 532
    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    :cond_0
    return v1
.end method

.method public static a(Ljava/io/InputStream;Ljavax/crypto/Cipher;)Lcom/dolphin/browser/util/w;
    .locals 6

    .prologue
    .line 434
    new-instance v1, Lcom/dolphin/browser/util/w;

    invoke-direct {v1}, Lcom/dolphin/browser/util/w;-><init>()V

    .line 437
    :try_start_0
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 438
    sget-object v0, Lcom/dolphin/browser/util/w;->a:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 439
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 440
    sget-object v4, Lcom/dolphin/browser/util/w;->a:[B

    array-length v4, v4

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/dolphin/browser/util/w;->a:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    :cond_0
    new-instance v0, Lcom/dolphin/browser/util/x;

    invoke-direct {v0}, Lcom/dolphin/browser/util/x;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 478
    :catch_0
    move-exception v0

    .line 479
    new-instance v0, Lcom/dolphin/browser/util/x;

    invoke-direct {v0}, Lcom/dolphin/browser/util/x;-><init>()V

    throw v0

    .line 443
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 444
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 445
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 446
    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 447
    invoke-static {v0}, Lcom/dolphin/browser/util/w;->a([B)I

    move-result v3

    iput v3, v1, Lcom/dolphin/browser/util/w;->b:I

    .line 449
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 450
    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 451
    invoke-static {v0}, Lcom/dolphin/browser/util/w;->a([B)I

    move-result v3

    .line 453
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/dolphin/browser/util/w;->c:Z

    .line 454
    iget-boolean v0, v1, Lcom/dolphin/browser/util/w;->c:Z

    if-eqz v0, :cond_4

    .line 455
    if-eqz p1, :cond_3

    .line 456
    new-array v0, v3, [B

    .line 457
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 458
    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 459
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 461
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 462
    const-string v0, "58324759256a4d792828644f3c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 463
    new-instance v0, Lcom/dolphin/browser/util/y;

    invoke-direct {v0}, Lcom/dolphin/browser/util/y;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 480
    :catch_1
    move-exception v0

    .line 481
    new-instance v0, Lcom/dolphin/browser/util/x;

    invoke-direct {v0}, Lcom/dolphin/browser/util/x;-><init>()V

    throw v0

    .line 453
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 466
    :cond_3
    :try_start_2
    new-instance v0, Lcom/dolphin/browser/util/y;

    invoke-direct {v0}, Lcom/dolphin/browser/util/y;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 482
    :catch_2
    move-exception v0

    .line 483
    new-instance v0, Lcom/dolphin/browser/util/y;

    invoke-direct {v0}, Lcom/dolphin/browser/util/y;-><init>()V

    throw v0

    .line 470
    :cond_4
    const/16 v0, 0x8

    :try_start_3
    new-array v0, v0, [B

    .line 471
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 474
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v0}, Lcom/dolphin/browser/util/w;->b([B)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 475
    new-instance v0, Lcom/dolphin/browser/util/x;

    invoke-direct {v0}, Lcom/dolphin/browser/util/x;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 486
    :cond_5
    return-object v1
.end method

.method private static final a(I)[B
    .locals 5

    .prologue
    .line 548
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 549
    const/high16 v1, -0x1000000

    .line 550
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 551
    and-int v3, p0, v1

    add-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x20

    ushr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 552
    ushr-int/lit8 v1, v1, 0x8

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    return-object v2
.end method

.method private static final a(J)[B
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 559
    new-array v3, v7, [B

    .line 560
    const-wide/high16 v1, -0x100000000000000L

    .line 561
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 562
    and-long v4, p0, v1

    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, 0x40

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 563
    ushr-long/2addr v1, v7

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_0
    return-object v3
.end method

.method private static final b([B)J
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 539
    const-wide/16 v1, 0x0

    .line 540
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 541
    shl-long/2addr v1, v5

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_0
    return-wide v1
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 3

    .prologue
    .line 491
    :try_start_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 492
    sget-object v1, Lcom/dolphin/browser/util/w;->a:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 493
    sget-object v1, Lcom/dolphin/browser/util/w;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 495
    iget v1, p0, Lcom/dolphin/browser/util/w;->b:I

    invoke-static {v1}, Lcom/dolphin/browser/util/w;->a(I)[B

    move-result-object v1

    .line 496
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 497
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 499
    if-eqz p2, :cond_0

    .line 500
    const-string v1, "58324759256a4d792828644f3c"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 501
    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 503
    array-length v2, v1

    invoke-static {v2}, Lcom/dolphin/browser/util/w;->a(I)[B

    move-result-object v2

    .line 504
    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 505
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 507
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 508
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 515
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/w;->a(J)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 527
    return-void

    .line 510
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/dolphin/browser/util/w;->a(I)[B

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 512
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    const-string v1, "BackupHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    new-instance v1, Lcom/dolphin/browser/util/v;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 520
    :catch_1
    move-exception v0

    .line 521
    const-string v1, "BackupHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    new-instance v1, Lcom/dolphin/browser/util/v;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 523
    :catch_2
    move-exception v0

    .line 524
    const-string v1, "BackupHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    new-instance v1, Lcom/dolphin/browser/util/v;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/util/v;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
