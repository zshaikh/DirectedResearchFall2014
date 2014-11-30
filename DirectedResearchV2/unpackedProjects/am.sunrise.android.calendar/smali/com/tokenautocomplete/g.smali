.class Lcom/tokenautocomplete/g;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"


# direct methods
.method private static a(FLandroid/widget/TextView;)F
    .locals 3

    .prologue
    .line 1031
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1032
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p0, v0

    .line 1037
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1038
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 1039
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1040
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1044
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1045
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1046
    return v0

    .line 1034
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p0, v0

    goto :goto_0

    .line 1042
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1
.end method

.method public static a(FFLandroid/widget/TextView;Landroid/text/Layout;)I
    .locals 1

    .prologue
    .line 1025
    if-nez p3, :cond_0

    const/4 v0, -0x1

    .line 1027
    :goto_0
    return v0

    .line 1026
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/tokenautocomplete/g;->a(FLandroid/widget/TextView;Landroid/text/Layout;)I

    move-result v0

    .line 1027
    invoke-static {v0, p0, p2, p3}, Lcom/tokenautocomplete/g;->a(IFLandroid/widget/TextView;Landroid/text/Layout;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(FLandroid/widget/TextView;Landroid/text/Layout;)I
    .locals 3

    .prologue
    .line 1050
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1051
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p0, v0

    .line 1056
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1057
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 1058
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1059
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1063
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1064
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1065
    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0

    .line 1053
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p0, v0

    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1
.end method

.method private static a(IFLandroid/widget/TextView;Landroid/text/Layout;)I
    .locals 1

    .prologue
    .line 1069
    invoke-static {p1, p2}, Lcom/tokenautocomplete/g;->a(FLandroid/widget/TextView;)F

    move-result v0

    .line 1070
    invoke-virtual {p3, p0, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method
