.class Landroid/support/v4/view/be;
.super Ljava/lang/Object;
.source "ViewCompatGingerbread.java"


# direct methods
.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 28
    return-void
.end method
