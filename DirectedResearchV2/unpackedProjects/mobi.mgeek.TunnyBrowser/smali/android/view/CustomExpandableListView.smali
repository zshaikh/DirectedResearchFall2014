.class public Landroid/view/CustomExpandableListView;
.super Landroid/view/MyExpandableListView;
.source "CustomExpandableListView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/MyExpandableListView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/MyExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/MyExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000

    .line 52
    iget-object v3, p0, Landroid/view/CustomExpandableListView;->a:Landroid/graphics/drawable/Drawable;

    .line 53
    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/CustomExpandableListView;->getTopFadingEdgeStrength()F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 57
    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3

    move v0, v1

    .line 58
    :goto_1
    invoke-virtual {p0}, Landroid/view/CustomExpandableListView;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 59
    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 60
    :goto_2
    invoke-virtual {p0}, Landroid/view/CustomExpandableListView;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    :cond_2
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    const/high16 v0, 0x43340000

    invoke-virtual {p0}, Landroid/view/CustomExpandableListView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/CustomExpandableListView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 67
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 57
    goto :goto_1

    :cond_4
    move v1, v2

    .line 59
    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Landroid/view/CustomExpandableListView;->a:Landroid/graphics/drawable/Drawable;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/CustomExpandableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 43
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/view/MyExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-direct {p0, p1}, Landroid/view/CustomExpandableListView;->a(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method
