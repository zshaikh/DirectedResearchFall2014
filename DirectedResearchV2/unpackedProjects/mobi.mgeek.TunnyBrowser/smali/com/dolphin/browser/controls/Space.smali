.class public final Lcom/dolphin/browser/controls/Space;
.super Landroid/view/View;
.source "Space.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/controls/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/controls/Space;->setVisibility(I)V

    .line 37
    :cond_0
    return-void
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 69
    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 73
    sparse-switch v1, :sswitch_data_0

    .line 84
    :goto_0
    :sswitch_0
    return p0

    .line 78
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 81
    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/dolphin/browser/controls/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/dolphin/browser/controls/Space;->a(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/controls/Space;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/dolphin/browser/controls/Space;->a(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/controls/Space;->setMeasuredDimension(II)V

    .line 92
    return-void
.end method
