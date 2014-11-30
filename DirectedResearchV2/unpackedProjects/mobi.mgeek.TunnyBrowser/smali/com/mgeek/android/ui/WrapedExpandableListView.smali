.class public Lcom/mgeek/android/ui/WrapedExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "WrapedExpandableListView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mgeek/android/ui/WrapedExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mgeek/android/ui/WrapedExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/mgeek/android/ui/WrapedExpandableListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->WrapedExpandableListView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 40
    if-lez v1, :cond_0

    .line 41
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mgeek/android/ui/WrapedExpandableListView;->a:Landroid/graphics/drawable/Drawable;

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000

    .line 60
    iget-object v3, p0, Lcom/mgeek/android/ui/WrapedExpandableListView;->a:Landroid/graphics/drawable/Drawable;

    .line 61
    if-nez v3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedExpandableListView;->getTopFadingEdgeStrength()F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 65
    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3

    move v0, v1

    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedExpandableListView;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 67
    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 68
    :goto_2
    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedExpandableListView;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    :cond_2
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    const/high16 v0, 0x43340000

    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedExpandableListView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mgeek/android/ui/WrapedExpandableListView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 75
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 65
    goto :goto_1

    :cond_4
    move v1, v2

    .line 67
    goto :goto_2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/WrapedExpandableListView;->a(Landroid/graphics/Canvas;)V

    .line 57
    return-void
.end method
