.class Lc/a/a/d/g;
.super Lc/a/a/d/k;
.source "DateTimeFormatterBuilder.java"


# direct methods
.method protected constructor <init>(Lc/a/a/d;IZ)V
    .locals 0

    .prologue
    .line 1522
    invoke-direct {p0, p1, p2, p3, p2}, Lc/a/a/d/k;-><init>(Lc/a/a/d;IZI)V

    .line 1523
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/d/t;Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 1526
    invoke-super {p0, p1, p2, p3}, Lc/a/a/d/k;->a(Lc/a/a/d/t;Ljava/lang/String;I)I

    move-result v0

    .line 1527
    if-gez v0, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return v0

    .line 1530
    :cond_1
    iget v1, p0, Lc/a/a/d/g;->b:I

    add-int/2addr v1, p3

    .line 1531
    if-eq v0, v1, :cond_0

    .line 1532
    iget-boolean v2, p0, Lc/a/a/d/g;->c:Z

    if-eqz v2, :cond_3

    .line 1533
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1534
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    .line 1535
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1538
    :cond_3
    if-le v0, v1, :cond_4

    .line 1540
    add-int/lit8 v0, v1, 0x1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1541
    :cond_4
    if-ge v0, v1, :cond_0

    .line 1543
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
