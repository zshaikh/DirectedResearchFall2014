.class public Landroid/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;
.source "HCSparseArray.java"


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

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v2, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 41
    invoke-static {p1}, Landroid/support/v4/app/HCSparseArray;->h(I)I

    move-result v0

    .line 43
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    .line 45
    iput v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 46
    return-void
.end method

.method private static a([IIII)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 314
    add-int v0, p1, p2

    sub-int v1, p1, v4

    move v5, v1

    move v1, v0

    move v0, v5

    .line 316
    :goto_0
    sub-int v2, v1, v0

    if-le v2, v4, :cond_1

    .line 317
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 319
    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    move v0, v2

    .line 320
    goto :goto_0

    :cond_0
    move v1, v2

    .line 322
    goto :goto_0

    .line 325
    :cond_1
    add-int v0, p1, p2

    if-ne v1, v0, :cond_2

    .line 326
    add-int v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    .line 330
    :goto_1
    return v0

    .line 327
    :cond_2
    aget v0, p0, v1

    if-ne v0, p3, :cond_3

    move v0, v1

    .line 328
    goto :goto_1

    .line 330
    :cond_3
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 104
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 106
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 107
    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    move v3, v7

    move v4, v7

    .line 109
    :goto_0
    if-ge v3, v0, :cond_2

    .line 110
    aget-object v5, v2, v3

    .line 112
    sget-object v6, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 113
    if-eq v3, v4, :cond_0

    .line 114
    aget v6, v1, v3

    aput v6, v1, v4

    .line 115
    aput-object v5, v2, v4

    .line 118
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 109
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_2
    iput-boolean v7, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 123
    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 126
    return-void
.end method

.method static g(I)I
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 346
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 347
    shl-int v1, v2, v0

    sub-int/2addr v1, v3

    if-gt p0, v1, :cond_0

    .line 348
    shl-int v0, v2, v0

    sub-int/2addr v0, v3

    .line 350
    :goto_1
    return v0

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 350
    goto :goto_1
.end method

.method static h(I)I
    .locals 1

    .prologue
    .line 354
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->g(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->c()V

    .line 189
    :cond_0
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->e:I

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
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/HCSparseArray;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->a([IIII)I

    move-result v0

    .line 63
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v0, p2

    .line 66
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 268
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 269
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    move v2, v4

    .line 271
    :goto_0
    if-ge v2, v0, :cond_0

    .line 272
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_0
    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 276
    iput-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 277
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->a([IIII)I

    move-result v0

    .line 76
    if-ltz v0, :cond_0

    .line 77
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 82
    :cond_0
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v0, v5, v1, p1}, Landroid/support/v4/app/HCSparseArray;->a([IIII)I

    move-result v0

    .line 136
    if-ltz v0, :cond_0

    .line 137
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 178
    :goto_0
    return-void

    .line 139
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 141
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 142
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    aput p1, v1, v0

    .line 143
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_0

    .line 147
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 148
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->c()V

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v0, v5, v1, p1}, Landroid/support/v4/app/HCSparseArray;->a([IIII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 154
    :cond_2
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 155
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/app/HCSparseArray;->h(I)I

    move-result v1

    .line 157
    new-array v2, v1, [I

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    .line 161
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 165
    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    .line 168
    :cond_3
    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    aput p1, v1, v0

    .line 175
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 176
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    goto/16 :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/support/v4/app/HCSparseArray;->b(I)V

    .line 89
    return-void
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 99
    :cond_0
    return-void
.end method

.method public e(I)I
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->c()V

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public f(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->c()V

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
