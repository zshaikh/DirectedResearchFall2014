.class public Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;
.super Landroid/widget/ScrollView;
.source "WrapedFadingEdgeScrollView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v2, p0, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->a:Landroid/graphics/drawable/Drawable;

    .line 41
    if-nez v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    .line 47
    :goto_1
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 46
    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/WrapedFadingEdgeScrollView;->a(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method
