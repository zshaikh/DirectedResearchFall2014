.class Landroid/support/v4/view/ao;
.super Landroid/support/v4/view/an;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Landroid/support/v4/view/an;-><init>()V

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Landroid/support/v4/view/aw;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 395
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/aw;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 396
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ao;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ao;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 408
    return-void
.end method

.method public d(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 391
    invoke-static {p1}, Landroid/support/v4/view/aw;->a(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 399
    invoke-static {p1}, Landroid/support/v4/view/aw;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method
