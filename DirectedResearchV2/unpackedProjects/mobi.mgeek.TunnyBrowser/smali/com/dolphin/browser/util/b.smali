.class public Lcom/dolphin/browser/util/b;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Lcom/dolphin/browser/util/ar;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/dolphin/browser/util/ar",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private transient b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient c:I

.field private transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/dolphin/browser/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dolphin/browser/util/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 165
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/util/b;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    return v0
.end method

.method private a(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0}, Lcom/dolphin/browser/util/b;->g()V

    .line 509
    iget-object v2, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    .line 510
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 511
    iget v4, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 512
    iget v5, p0, Lcom/dolphin/browser/util/b;->d:I

    .line 513
    sub-int v6, p1, v4

    and-int/2addr v6, v3

    .line 514
    sub-int v7, v5, p1

    and-int/2addr v7, v3

    .line 517
    sub-int v8, v5, v4

    and-int/2addr v8, v3

    if-lt v6, v8, :cond_0

    .line 518
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 521
    :cond_0
    if-ge v6, v7, :cond_2

    .line 522
    if-gt v4, p1, :cond_1

    .line 523
    add-int/lit8 v1, v4, 0x1

    invoke-static {v2, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    :goto_0
    const/4 v1, 0x0

    aput-object v1, v2, v4

    .line 530
    add-int/lit8 v1, v4, 0x1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 542
    :goto_1
    return v0

    .line 525
    :cond_1
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    aget-object v1, v2, v3

    aput-object v1, v2, v0

    .line 527
    add-int/lit8 v1, v4, 0x1

    sub-int v5, v3, v4

    invoke-static {v2, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 533
    :cond_2
    if-ge p1, v5, :cond_3

    .line 534
    add-int/lit8 v0, p1, 0x1

    invoke-static {v2, v0, v2, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/dolphin/browser/util/b;->d:I

    :goto_2
    move v0, v1

    .line 542
    goto :goto_1

    .line 537
    :cond_3
    add-int/lit8 v4, p1, 0x1

    sub-int v6, v3, p1

    invoke-static {v2, v4, v2, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    aget-object v4, v2, v0

    aput-object v4, v2, v3

    .line 539
    invoke-static {v2, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    add-int/lit8 v0, v5, -0x1

    and-int/2addr v0, v3

    iput v0, p0, Lcom/dolphin/browser/util/b;->d:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/dolphin/browser/util/b;I)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/b;->a(I)Z

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 150
    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->size()I

    move-result v2

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :cond_0
    :goto_0
    return-object p1

    .line 152
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    if-le v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    sub-int/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/dolphin/browser/util/b;->c:I

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v1, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/dolphin/browser/util/b;->d:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 817
    if-nez p0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 820
    :cond_0
    if-gez p1, :cond_1

    .line 821
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 823
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/dolphin/browser/util/b;->a([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 843
    array-length v0, p0

    .line 844
    if-le p1, p2, :cond_0

    .line 845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 847
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 848
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 850
    :cond_2
    sub-int v1, p2, p1

    .line 851
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 852
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 853
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/util/b;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/dolphin/browser/util/b;->d:I

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/util/b;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 127
    sget-boolean v0, Lcom/dolphin/browser/util/b;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_0
    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v2, v0

    .line 130
    sub-int v3, v2, v1

    .line 131
    shl-int/lit8 v0, v2, 0x1

    .line 132
    if-gez v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    iget-object v4, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    invoke-static {v4, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v4, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    invoke-static {v4, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    .line 138
    iput v5, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 139
    iput v2, p0, Lcom/dolphin/browser/util/b;->d:I

    .line 140
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 490
    sget-boolean v0, Lcom/dolphin/browser/util/b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 491
    :cond_0
    sget-boolean v0, Lcom/dolphin/browser/util/b;->a:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 494
    :cond_1
    sget-boolean v0, Lcom/dolphin/browser/util/b;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 495
    :cond_4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->b()Ljava/lang/Object;

    move-result-object v0

    .line 256
    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 258
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    aput-object p1, v0, v1

    .line 223
    iget v0, p0, Lcom/dolphin/browser/util/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/util/b;->d:I

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    if-ne v0, v1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/dolphin/browser/util/b;->f()V

    .line 225
    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/b;->a(Ljava/lang/Object;)V

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 272
    iget v2, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 273
    iget-object v1, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 274
    if-nez v1, :cond_0

    .line 278
    :goto_0
    return-object v0

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 277
    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/dolphin/browser/util/b;->c:I

    move-object v0, v1

    .line 278
    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/b;->a(Ljava/lang/Object;)V

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    aget-object v0, v0, v1

    .line 296
    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 298
    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 332
    if-nez p1, :cond_0

    move v0, v1

    .line 344
    :goto_0
    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 335
    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 337
    :goto_1
    iget-object v3, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 338
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/b;->a(I)Z

    .line 340
    const/4 v0, 0x1

    goto :goto_0

    .line 342
    :cond_1
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 344
    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 708
    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 709
    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    .line 710
    if-eq v0, v1, :cond_1

    .line 711
    const/4 v2, 0x0

    iput v2, p0, Lcom/dolphin/browser/util/b;->d:I

    iput v2, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 713
    iget-object v2, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 715
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 716
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    .line 717
    if-ne v0, v1, :cond_0

    .line 719
    :cond_1
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->e()Lcom/dolphin/browser/util/b;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 673
    if-nez p1, :cond_0

    move v0, v1

    .line 683
    :goto_0
    return v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 676
    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    .line 678
    :goto_1
    iget-object v3, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 679
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    const/4 v0, 0x1

    goto :goto_0

    .line 681
    :cond_1
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 683
    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Lcom/dolphin/browser/util/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/util/b",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 795
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/util/b;

    .line 796
    iget-object v1, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/b;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    return-object v0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 563
    iget v0, p0, Lcom/dolphin/browser/util/b;->c:I

    iget v1, p0, Lcom/dolphin/browser/util/b;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 575
    new-instance v0, Lcom/dolphin/browser/util/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/util/d;-><init>(Lcom/dolphin/browser/util/b;Lcom/dolphin/browser/util/c;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/b;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/b;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lcom/dolphin/browser/util/b;->d:I

    iget v1, p0, Lcom/dolphin/browser/util/b;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/dolphin/browser/util/b;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/b;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/dolphin/browser/util/b;->size()I

    move-result v1

    .line 777
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 778
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 780
    :goto_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/b;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 781
    array-length v2, v0

    if-le v2, v1, :cond_0

    .line 782
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 783
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method
