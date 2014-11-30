.class public Lorg/c/a/d/p;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/nio/charset/Charset;

.field private static final d:Lorg/c/a/d/c/d;

.field private static e:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lorg/c/a/d/p;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/p;->d:Lorg/c/a/d/c/d;

    .line 42
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/p;->a:Ljava/lang/String;

    .line 55
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/p;->b:Ljava/nio/charset/Charset;

    .line 56
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/p;->c:Ljava/nio/charset/Charset;

    .line 59
    const/16 v0, 0x80

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/c/a/d/p;->e:[C

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x7f

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    .line 89
    :goto_0
    add-int/lit8 v0, v2, -0x1

    if-lez v2, :cond_4

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 92
    if-gt v2, v4, :cond_0

    .line 94
    sget-object v3, Lorg/c/a/d/p;->e:[C

    aget-char v3, v3, v2

    .line 95
    if-eq v2, v3, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 98
    aput-char v3, v1, v0

    move-object v2, v1

    .line 104
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 106
    aget-char v0, v2, v1

    if-gt v0, v4, :cond_3

    .line 107
    sget-object v0, Lorg/c/a/d/p;->e:[C

    aget-char v3, v2, v1

    aget-char v0, v0, v3

    aput-char v0, v2, v1

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 102
    goto :goto_0

    .line 110
    :cond_1
    if-nez v2, :cond_2

    :goto_2
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_1
.end method

.method public static a([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 279
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    invoke-static {p0}, Lorg/c/a/d/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 378
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 380
    :catch_0
    move-exception v0

    .line 382
    sget-object v1, Lorg/c/a/d/p;->d:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V

    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
