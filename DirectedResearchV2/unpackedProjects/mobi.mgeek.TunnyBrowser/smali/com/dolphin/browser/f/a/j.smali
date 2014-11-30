.class public Lcom/dolphin/browser/f/a/j;
.super Ljava/lang/Object;
.source "KMeanCluster.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/f/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[I

.field private b:[I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    .line 20
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    .line 28
    invoke-direct {p0}, Lcom/dolphin/browser/f/a/j;->e()V

    .line 29
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aput v3, v2, v5

    aput v3, v1, v4

    aput v3, v0, v3

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    aput v3, v2, v5

    aput v3, v1, v4

    aput v3, v0, v3

    .line 34
    iput v3, p0, Lcom/dolphin/browser/f/a/j;->c:I

    .line 35
    iput v3, p0, Lcom/dolphin/browser/f/a/j;->d:I

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/f/a/j;)I
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/dolphin/browser/f/a/j;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/dolphin/browser/f/a/j;->d()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(III)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 42
    return-void
.end method

.method public a()[I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    return-object v0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    iget v0, p0, Lcom/dolphin/browser/f/a/j;->c:I

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/dolphin/browser/f/a/j;->c:I

    div-int/2addr v1, v2

    aput v1, v0, v3

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    aget v1, v1, v4

    iget v2, p0, Lcom/dolphin/browser/f/a/j;->c:I

    div-int/2addr v1, v2

    aput v1, v0, v4

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    aget v1, v1, v5

    iget v2, p0, Lcom/dolphin/browser/f/a/j;->c:I

    div-int/2addr v1, v2

    aput v1, v0, v5

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    aput v3, v2, v5

    aput v3, v1, v4

    aput v3, v0, v3

    .line 63
    iget v0, p0, Lcom/dolphin/browser/f/a/j;->c:I

    iput v0, p0, Lcom/dolphin/browser/f/a/j;->d:I

    .line 64
    iput v3, p0, Lcom/dolphin/browser/f/a/j;->c:I

    .line 66
    :cond_0
    return-void
.end method

.method public b(III)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v2, v2, v0

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-ne p3, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c(III)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    add-int/2addr v2, p2

    aput v2, v0, v1

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/2addr v2, p3

    aput v2, v0, v1

    .line 72
    iget v0, p0, Lcom/dolphin/browser/f/a/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/f/a/j;->c:I

    .line 73
    return-void
.end method

.method public c()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    iget v2, p0, Lcom/dolphin/browser/f/a/j;->c:I

    if-nez v2, :cond_0

    .line 90
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/dolphin/browser/f/a/j;->c:I

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    aget v2, v2, v0

    iget v3, p0, Lcom/dolphin/browser/f/a/j;->c:I

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->b:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/dolphin/browser/f/a/j;->c:I

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v3, v3, v4

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/dolphin/browser/f/a/j;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/j;->a(Lcom/dolphin/browser/f/a/j;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/dolphin/browser/f/a/j;->d:I

    return v0
.end method

.method public d(III)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v0, v0, v2

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v1, v1, v2

    sub-int v1, p1, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v1, v1, v3

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v2, v2, v3

    sub-int v2, p2, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v1, v1, v4

    sub-int v1, p3, v1

    iget-object v2, p0, Lcom/dolphin/browser/f/a/j;->a:[I

    aget v2, v2, v4

    sub-int v2, p3, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method
