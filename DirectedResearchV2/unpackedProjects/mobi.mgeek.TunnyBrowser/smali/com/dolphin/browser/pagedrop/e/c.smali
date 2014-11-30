.class public Lcom/dolphin/browser/pagedrop/e/c;
.super Ljava/lang/Object;
.source "SendAroundUtil.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/dolphin/browser/pagedrop/e/c;->a:I

    return-void
.end method

.method public static declared-synchronized a()I
    .locals 3

    .prologue
    .line 340
    const-class v1, Lcom/dolphin/browser/pagedrop/e/c;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/dolphin/browser/pagedrop/e/c;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/dolphin/browser/pagedrop/e/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;[BII)I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 169
    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    add-int/lit8 v1, p2, 0x1

    aput-byte v3, p1, p2

    .line 172
    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    .line 225
    :goto_0
    return v0

    .line 175
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    .line 178
    :cond_1
    add-int/lit8 v1, p2, 0x1

    aput-byte v3, p1, p2

    .line 179
    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 184
    int-to-long v0, p3

    cmp-long v0, v5, v0

    if-lez v0, :cond_3

    .line 185
    add-int/lit8 v1, p2, 0x1

    aput-byte v3, p1, p2

    .line 186
    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    goto :goto_0

    .line 190
    :cond_3
    const-wide/32 v0, 0xffff

    and-long/2addr v0, v5

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(S)[B

    move-result-object v7

    move v1, v3

    move v0, p2

    .line 191
    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 192
    add-int/lit8 v2, v0, 0x1

    aget-byte v8, v7, v1

    aput-byte v8, p1, v0

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 195
    :cond_4
    const/4 v1, 0x0

    .line 197
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    move v0, v3

    .line 202
    :cond_5
    long-to-int v3, v5

    :try_start_1
    invoke-virtual {v2, p1, v1, v3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 203
    add-int/2addr v1, v3

    .line 204
    add-int/2addr v0, v3

    .line 205
    int-to-long v3, v0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    move v9, v0

    move v0, v1

    move v1, v9

    .line 209
    :goto_2
    int-to-long v3, v1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    .line 210
    add-int/lit8 v1, p2, 0x1

    const/4 v0, 0x0

    :try_start_2
    aput-byte v0, p1, p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x0

    :try_start_3
    aput-byte v3, p1, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 214
    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    add-int/lit8 v2, p2, 0x1

    const/4 v0, 0x0

    aput-byte v0, p1, p2

    .line 219
    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, p1, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 215
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move p2, v1

    move-object v1, v2

    goto :goto_3

    :catch_3
    move-exception v1

    move p2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :cond_7
    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_2
.end method

.method public static a([BI[B)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 105
    if-eqz p0, :cond_0

    if-gez p1, :cond_2

    :cond_0
    move v1, p1

    .line 123
    :cond_1
    :goto_0
    return v1

    .line 109
    :cond_2
    if-nez p2, :cond_3

    .line 110
    add-int/lit8 v2, p1, 0x1

    aput-byte v0, p0, p1

    .line 111
    add-int/lit8 v1, v2, 0x1

    aput-byte v0, p0, v2

    goto :goto_0

    .line 115
    :cond_3
    array-length v1, p2

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(S)[B

    move-result-object v3

    move v2, v0

    move v1, p1

    .line 116
    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    .line 117
    add-int/lit8 p1, v1, 0x1

    aget-byte v4, v3, v2

    aput-byte v4, p0, v1

    .line 116
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, p1

    goto :goto_1

    .line 119
    :cond_4
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 120
    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p2, v0

    aput-byte v3, p0, v1

    .line 119
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2
.end method

.method public static a([BI[BI)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 127
    if-eqz p0, :cond_0

    if-gez p1, :cond_2

    :cond_0
    move v1, p1

    .line 145
    :cond_1
    :goto_0
    return v1

    .line 131
    :cond_2
    if-eqz p2, :cond_3

    if-nez p3, :cond_4

    .line 132
    :cond_3
    add-int/lit8 v2, p1, 0x1

    aput-byte v0, p0, p1

    .line 133
    add-int/lit8 v1, v2, 0x1

    aput-byte v0, p0, v2

    goto :goto_0

    .line 137
    :cond_4
    const v1, 0xffff

    and-int/2addr v1, p3

    int-to-short v1, v1

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(S)[B

    move-result-object v3

    move v2, v0

    move v1, p1

    .line 138
    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_5

    .line 139
    add-int/lit8 p1, v1, 0x1

    aget-byte v4, v3, v2

    aput-byte v4, p0, v1

    .line 138
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, p1

    goto :goto_1

    .line 141
    :cond_5
    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 142
    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p2, v0

    aput-byte v3, p0, v1

    .line 141
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2
.end method

.method public static a(ILjava/lang/String;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 241
    if-eqz p0, :cond_1

    .line 242
    int-to-long v0, p0

    .line 253
    :cond_0
    :goto_0
    return-wide v0

    .line 244
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    if-nez p0, :cond_0

    .line 334
    const-string v0, ""

    .line 336
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 407
    if-nez p0, :cond_0

    .line 408
    const-string v0, ""

    .line 473
    :goto_0
    return-object v0

    .line 410
    :cond_0
    const-string v0, ""

    .line 412
    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 413
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 415
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 416
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 417
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 418
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e044e

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 423
    :cond_1
    sub-long v0, p3, p1

    .line 424
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 425
    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 426
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0445

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_2
    const-wide/16 v2, 0xe10

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    const-wide/16 v2, 0xe10

    div-long v2, v0, v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_4

    .line 431
    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 432
    const/16 v1, 0x3c

    if-ne v1, v0, :cond_3

    .line 434
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0447

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0448

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 444
    :cond_4
    const-wide/32 v2, 0x15180

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    const-wide/32 v2, 0x15180

    div-long v2, v0, v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_6

    .line 445
    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 446
    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    .line 448
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 449
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 450
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 451
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 452
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0449

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 457
    :cond_5
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0447

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 463
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 464
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 465
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 466
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 467
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 468
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 469
    if-ne v1, v2, :cond_7

    .line 470
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0449

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 472
    :cond_7
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e044e

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a([BIII)Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    add-int v0, p1, p2

    if-le v0, p3, :cond_1

    .line 92
    :cond_0
    const-string v0, ""

    .line 100
    :goto_0
    return-object v0

    .line 95
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 96
    const-string v1, "SendAroundUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteArrayToString result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 100
    const-string v0, ""

    goto :goto_0
.end method

.method public static a([BI)S
    .locals 2

    .prologue
    .line 73
    aget-byte v0, p0, p1

    .line 74
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    .line 76
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 78
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/pagedrop/a/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 404
    :cond_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 393
    const-string v5, ""

    .line 395
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 396
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 397
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/pagedrop/a/c;

    iget-wide v1, v0, Lcom/dolphin/browser/pagedrop/a/c;->i:J

    move-object v0, p0

    .line 399
    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/pagedrop/e/c;->a(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v5, v0

    .line 396
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public static a(I)[B
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 51
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 52
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 53
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 54
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 55
    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(S)[B
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 66
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 67
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 69
    return-object v0
.end method

.method public static declared-synchronized b()I
    .locals 2

    .prologue
    .line 344
    const-class v0, Lcom/dolphin/browser/pagedrop/e/c;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/dolphin/browser/pagedrop/e/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b([BI)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 82
    move v1, v0

    .line 83
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 84
    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 85
    add-int v3, v0, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return v1
.end method

.method public static b([BI[BI)I
    .locals 3

    .prologue
    .line 149
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    if-gtz p3, :cond_1

    .line 157
    :cond_0
    return p1

    .line 153
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 154
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p2, v0

    aput-byte v2, p0, p1

    .line 153
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 354
    const-string v0, "pagedrop_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0446

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_0
    if-nez v1, :cond_2

    .line 365
    :cond_1
    :goto_0
    return-object v0

    .line 361
    :cond_2
    const-string v2, "user_name"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 348
    const-class v0, Lcom/dolphin/browser/pagedrop/e/c;

    monitor-enter v0

    if-gez p0, :cond_0

    .line 351
    :goto_0
    monitor-exit v0

    return-void

    .line 350
    :cond_0
    :try_start_0
    sput p0, Lcom/dolphin/browser/pagedrop/e/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    if-nez p0, :cond_0

    .line 370
    const-string v0, ""

    .line 386
    :goto_0
    return-object v0

    .line 372
    :cond_0
    const-string v0, "pagedrop_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 373
    if-nez v0, :cond_1

    .line 374
    const-string v0, ""

    goto :goto_0

    .line 375
    :cond_1
    const-string v1, "head_imgname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    const-string v0, ""

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 382
    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
