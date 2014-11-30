.class public final Lcom/flurry/android/monolithic/sdk/impl/ps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ps;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:[C

.field private static final e:[B


# instance fields
.field protected b:Lcom/flurry/android/monolithic/sdk/impl/afy;

.field protected final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/afr;->d()[C

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ps;->d:[C

    .line 24
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/afr;->e()[B

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ps;->e:[B

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ps;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->c:[C

    .line 69
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->c:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 70
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->c:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 71
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->c:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 72
    return-void
.end method

.method private a(I[C)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 346
    if-gez p1, :cond_0

    .line 347
    add-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    .line 348
    const/16 v1, 0x75

    aput-char v1, p2, v2

    .line 350
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ps;->d:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    .line 351
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ps;->d:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v2, v0

    aput-char v0, p2, v1

    .line 352
    const/4 v0, 0x6

    .line 355
    :goto_0
    return v0

    .line 354
    :cond_0
    int-to-char v0, p1

    aput-char v0, p2, v2

    .line 355
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/ps;
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ps;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 81
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 83
    :goto_0
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ps;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ps;-><init>()V

    .line 85
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ps;->a:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-object v0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ps;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)[C
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 102
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->b:Lcom/flurry/android/monolithic/sdk/impl/afy;

    .line 103
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afy;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afn;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->b:Lcom/flurry/android/monolithic/sdk/impl/afy;

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->k()[C

    move-result-object v1

    .line 108
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/afr;->c()[I

    move-result-object v2

    .line 109
    array-length v3, v2

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v10

    move-object v6, v1

    move v1, v10

    .line 115
    :goto_0
    if-ge v5, v4, :cond_4

    .line 118
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 119
    if-ge v7, v3, :cond_2

    aget v8, v2, v7

    if-eqz v8, :cond_2

    .line 132
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v5, v2, v5

    .line 133
    iget-object v8, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->c:[C

    invoke-direct {p0, v5, v8}, Lcom/flurry/android/monolithic/sdk/impl/ps;->a(I[C)I

    move-result v5

    .line 134
    add-int v8, v1, v5

    array-length v9, v6

    if-le v8, v9, :cond_6

    .line 135
    array-length v8, v6

    sub-int/2addr v8, v1

    .line 136
    if-lez v8, :cond_1

    .line 137
    iget-object v9, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->c:[C

    invoke-static {v9, v10, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->m()[C

    move-result-object v6

    .line 140
    sub-int/2addr v5, v8

    .line 141
    iget-object v9, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->c:[C

    invoke-static {v9, v8, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    add-int/2addr v1, v5

    move-object v5, v6

    :goto_2
    move-object v6, v5

    move v5, v7

    .line 148
    goto :goto_0

    .line 122
    :cond_2
    array-length v8, v6

    if-lt v1, v8, :cond_3

    .line 123
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->m()[C

    move-result-object v1

    move-object v6, v1

    move v1, v10

    .line 126
    :cond_3
    add-int/lit8 v8, v1, 0x1

    aput-char v7, v6, v1

    .line 127
    add-int/lit8 v1, v5, 0x1

    if-lt v1, v4, :cond_5

    move v1, v8

    .line 149
    :cond_4
    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/afy;->a(I)V

    .line 150
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->g()[C

    move-result-object v0

    return-object v0

    :cond_5
    move v5, v1

    move v1, v8

    .line 130
    goto :goto_1

    .line 144
    :cond_6
    iget-object v8, p0, Lcom/flurry/android/monolithic/sdk/impl/ps;->c:[C

    invoke-static {v8, v10, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    add-int/2addr v1, v5

    move-object v5, v6

    goto :goto_2
.end method
