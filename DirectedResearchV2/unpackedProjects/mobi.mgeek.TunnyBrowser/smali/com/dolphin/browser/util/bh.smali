.class public final Lcom/dolphin/browser/util/bh;
.super Ljava/lang/Object;
.source "IntegralToString.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[C

.field private static final e:[C

.field private static final f:[C

.field private static final g:[C

.field private static final h:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x24

    const/16 v1, 0x64

    .line 46
    new-instance v0, Lcom/dolphin/browser/util/bi;

    invoke-direct {v0}, Lcom/dolphin/browser/util/bi;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/bh;->a:Ljava/lang/ThreadLocal;

    .line 61
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/dolphin/browser/util/bh;->b:[Ljava/lang/String;

    .line 62
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/dolphin/browser/util/bh;->c:[Ljava/lang/String;

    .line 65
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/util/bh;->d:[C

    .line 79
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dolphin/browser/util/bh;->e:[C

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/dolphin/browser/util/bh;->f:[C

    .line 104
    new-array v0, v2, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/dolphin/browser/util/bh;->g:[C

    .line 111
    new-array v0, v2, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/dolphin/browser/util/bh;->h:[C

    return-void

    .line 65
    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    .line 79
    :array_1
    .array-data 2
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
    .end array-data

    .line 97
    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x4s
        0x5s
        0x5s
        0x6s
        0x7s
        0x7s
        0x8s
        0x8s
        0x9s
        0x0s
    .end array-data

    .line 104
    :array_3
    .array-data 2
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
    .end array-data

    .line 111
    :array_4
    .array-data 2
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 473
    if-eqz p1, :cond_0

    sget-object v0, Lcom/dolphin/browser/util/bh;->h:[C

    .line 474
    :goto_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    new-array v3, v2, [C

    .line 476
    array-length v4, p0

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_1

    aget-byte v5, p0, v1

    .line 477
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    aput-char v7, v3, v2

    .line 478
    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v3, v6

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 473
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/bh;->g:[C

    goto :goto_0

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
