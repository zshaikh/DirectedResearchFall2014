.class public Lcom/dolphin/browser/ui/launcher/MyScrollView;
.super Landroid/widget/ScrollView;
.source "MyScrollView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/ui/launcher/MyScrollView;->a:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/ui/launcher/MyScrollView;->a:I

    .line 50
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/dolphin/browser/ui/launcher/MyScrollView;->a:I

    .line 60
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 66
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 67
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/dolphin/browser/ui/launcher/MyScrollView;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 68
    iget v2, p0, Lcom/dolphin/browser/ui/launcher/MyScrollView;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 69
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 72
    return-void
.end method
