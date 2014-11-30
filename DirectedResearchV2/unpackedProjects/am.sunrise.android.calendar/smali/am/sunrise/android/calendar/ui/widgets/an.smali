.class public Lam/sunrise/android/calendar/ui/widgets/an;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public static a(Ljava/lang/String;IILandroid/text/TextPaint;)Landroid/text/StaticLayout;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {p0, p1, p2, p3, v0}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILandroid/text/TextPaint;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout;
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 53
    new-instance v0, Landroid/text/StaticLayout;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 56
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 57
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    .line 58
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v0, Landroid/text/StaticLayout;

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public static a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 39
    iput p0, v0, Landroid/text/TextPaint;->density:F

    .line 40
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 41
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 42
    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 43
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 29
    return-void
.end method
