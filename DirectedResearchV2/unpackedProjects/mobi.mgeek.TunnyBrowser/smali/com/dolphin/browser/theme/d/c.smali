.class public Lcom/dolphin/browser/theme/d/c;
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
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/theme/d/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/d/c;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v2, p0, Lcom/dolphin/browser/theme/d/c;->b:Z

    .line 30
    invoke-static {p1}, Lcom/dolphin/browser/util/e;->b(I)I

    move-result v0

    .line 32
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    .line 34
    iput v2, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    .line 35
    return-void
.end method

.method private static a([JIIJ)I
    .locals 5

    .prologue
    .line 315
    add-int v2, p1, p2

    add-int/lit8 v0, p1, -0x1

    move v1, v0

    move v0, v2

    .line 317
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 318
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 320
    aget-wide v3, p0, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    move v1, v2

    .line 321
    goto :goto_0

    :cond_0
    move v0, v2

    .line 323
    goto :goto_0

    .line 326
    :cond_1
    add-int v1, p1, p2

    if-ne v0, v1, :cond_3

    .line 327
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 331
    :cond_2
    :goto_1
    return v0

    .line 328
    :cond_3
    aget-wide v1, p0, v0

    cmp-long v1, v1, p3

    if-eqz v1, :cond_2

    .line 331
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 105
    iget v3, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    .line 107
    iget-object v4, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    .line 108
    iget-object v5, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 110
    :goto_0
    if-ge v1, v3, :cond_2

    .line 111
    aget-object v6, v5, v1

    .line 113
    sget-object v7, Lcom/dolphin/browser/theme/d/c;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 114
    if-eq v1, v0, :cond_0

    .line 115
    aget-wide v7, v4, v1

    aput-wide v7, v4, v0

    .line 116
    aput-object v6, v5, v0

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_2
    iput-boolean v2, p0, Lcom/dolphin/browser/theme/d/c;->b:Z

    .line 124
    iput v0, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    .line 127
    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/theme/d/c;->a(JLjava/lang/Object;)Ljava/lang/Object;

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
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/dolphin/browser/theme/d/c;->a([JIIJ)I

    move-result v0

    .line 74
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/dolphin/browser/theme/d/c;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object p3

    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/dolphin/browser/theme/d/c;->a([JIIJ)I

    move-result v0

    .line 87
    if-ltz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/dolphin/browser/theme/d/c;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 89
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    sget-object v2, Lcom/dolphin/browser/theme/d/c;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/d/c;->b:Z

    .line 93
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

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    iget v1, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    invoke-static {v0, v5, v1, p1, p2}, Lcom/dolphin/browser/theme/d/c;->a([JIIJ)I

    move-result v0

    .line 137
    if-ltz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 179
    :goto_0
    return-void

    .line 140
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 142
    iget v1, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/dolphin/browser/theme/d/c;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 143
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    aput-wide p1, v1, v0

    .line 144
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_0

    .line 148
    :cond_1
    iget-boolean v1, p0, Lcom/dolphin/browser/theme/d/c;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    iget-object v2, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/dolphin/browser/theme/d/c;->a()V

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    iget v1, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    invoke-static {v0, v5, v1, p1, p2}, Lcom/dolphin/browser/theme/d/c;->a([JIIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 155
    :cond_2
    iget v1, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    iget-object v2, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 156
    iget v1, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/dolphin/browser/util/e;->b(I)I

    move-result v1

    .line 158
    new-array v2, v1, [J

    .line 159
    new-array v1, v1, [Ljava/lang/Object;

    .line 162
    iget-object v3, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    iget-object v4, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v3, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-object v2, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    .line 166
    iput-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    .line 169
    :cond_3
    iget v1, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    iget-object v2, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->c:[J

    aput-wide p1, v1, v0

    .line 176
    iget-object v1, p0, Lcom/dolphin/browser/theme/d/c;->d:[Ljava/lang/Object;

    aput-object p3, v1, v0

    .line 177
    iget v0, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/theme/d/c;->e:I

    goto/16 :goto_0
.end method

.method public c(J)V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/theme/d/c;->b(J)V

    .line 100
    return-void
.end method
