.class public final Lcom/dolphin/browser/util/bq;
.super Ljava/lang/Object;
.source "LongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[J

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/bq;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/bq;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lcom/dolphin/browser/util/bq;->b:Z

    .line 48
    invoke-static {p1}, Lcom/dolphin/browser/util/e;->b(I)I

    move-result v0

    .line 50
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/dolphin/browser/util/bq;->c:[J

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    .line 52
    iput v2, p0, Lcom/dolphin/browser/util/bq;->e:I

    .line 53
    return-void
.end method

.method private static a([JIIJ)I
    .locals 5

    .prologue
    .line 309
    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    .line 311
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 312
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 314
    aget-wide v3, p0, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    move v1, v2

    .line 315
    goto :goto_0

    :cond_0
    move v0, v2

    .line 317
    goto :goto_0

    .line 320
    :cond_1
    add-int v1, p1, p2

    if-ne v0, v1, :cond_3

    .line 321
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 325
    :cond_2
    :goto_1
    return v0

    .line 322
    :cond_3
    aget-wide v1, p0, v0

    cmp-long v1, v1, p3

    if-eqz v1, :cond_2

    .line 325
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 102
    iget v3, p0, Lcom/dolphin/browser/util/bq;->e:I

    .line 104
    iget-object v4, p0, Lcom/dolphin/browser/util/bq;->c:[J

    .line 105
    iget-object v5, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 107
    :goto_0
    if-ge v1, v3, :cond_2

    .line 108
    aget-object v6, v5, v1

    .line 110
    sget-object v7, Lcom/dolphin/browser/util/bq;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 111
    if-eq v1, v0, :cond_0

    .line 112
    aget-wide v7, v4, v1

    aput-wide v7, v4, v0

    .line 113
    aput-object v6, v5, v0

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_2
    iput-boolean v2, p0, Lcom/dolphin/browser/util/bq;->b:Z

    .line 121
    iput v0, p0, Lcom/dolphin/browser/util/bq;->e:I

    .line 124
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/dolphin/browser/util/bq;->b:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/dolphin/browser/util/bq;->c()V

    .line 186
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/util/bq;->e:I

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/dolphin/browser/util/bq;->b:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/dolphin/browser/util/bq;->c()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/util/bq;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/util/bq;->c:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/dolphin/browser/util/bq;->e:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/dolphin/browser/util/bq;->a([JIIJ)I

    move-result v0

    .line 71
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/dolphin/browser/util/bq;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object p3

    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 263
    iget v2, p0, Lcom/dolphin/browser/util/bq;->e:I

    .line 264
    iget-object v3, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    move v0, v1

    .line 266
    :goto_0
    if-ge v0, v2, :cond_0

    .line 267
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    iput v1, p0, Lcom/dolphin/browser/util/bq;->e:I

    .line 271
    iput-boolean v1, p0, Lcom/dolphin/browser/util/bq;->b:Z

    .line 272
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/util/bq;->c:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/dolphin/browser/util/bq;->e:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/dolphin/browser/util/bq;->a([JIIJ)I

    move-result v0

    .line 84
    if-ltz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/dolphin/browser/util/bq;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    sget-object v2, Lcom/dolphin/browser/util/bq;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/util/bq;->b:Z

    .line 90
    :cond_0
    return-void
.end method

.method public b(JLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/util/bq;->c:[J

    iget v1, p0, Lcom/dolphin/browser/util/bq;->e:I

    invoke-static {v0, v5, v1, p1, p2}, Lcom/dolphin/browser/util/bq;->a([JIIJ)I

    move-result v0

    .line 133
    if-ltz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 175
    :goto_0
    return-void

    .line 136
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 138
    iget v1, p0, Lcom/dolphin/browser/util/bq;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/dolphin/browser/util/bq;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->c:[J

    aput-wide p1, v1, v0

    .line 140
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_0

    .line 144
    :cond_1
    iget-boolean v1, p0, Lcom/dolphin/browser/util/bq;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/dolphin/browser/util/bq;->e:I

    iget-object v2, p0, Lcom/dolphin/browser/util/bq;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/dolphin/browser/util/bq;->c()V

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/util/bq;->c:[J

    iget v1, p0, Lcom/dolphin/browser/util/bq;->e:I

    invoke-static {v0, v5, v1, p1, p2}, Lcom/dolphin/browser/util/bq;->a([JIIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 151
    :cond_2
    iget v1, p0, Lcom/dolphin/browser/util/bq;->e:I

    iget-object v2, p0, Lcom/dolphin/browser/util/bq;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 152
    iget v1, p0, Lcom/dolphin/browser/util/bq;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/dolphin/browser/util/e;->b(I)I

    move-result v1

    .line 154
    new-array v2, v1, [J

    .line 155
    new-array v1, v1, [Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/dolphin/browser/util/bq;->c:[J

    iget-object v4, p0, Lcom/dolphin/browser/util/bq;->c:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v3, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v2, p0, Lcom/dolphin/browser/util/bq;->c:[J

    .line 162
    iput-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    .line 165
    :cond_3
    iget v1, p0, Lcom/dolphin/browser/util/bq;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->c:[J

    iget-object v2, p0, Lcom/dolphin/browser/util/bq;->c:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/dolphin/browser/util/bq;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/dolphin/browser/util/bq;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->c:[J

    aput-wide p1, v1, v0

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/util/bq;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 173
    iget v0, p0, Lcom/dolphin/browser/util/bq;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/util/bq;->e:I

    goto/16 :goto_0
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/util/bq;->b(J)V

    .line 97
    return-void
.end method

.method public d(J)I
    .locals 3

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/dolphin/browser/util/bq;->b:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/dolphin/browser/util/bq;->c()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/bq;->c:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/dolphin/browser/util/bq;->e:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/dolphin/browser/util/bq;->a([JIIJ)I

    move-result v0

    return v0
.end method
