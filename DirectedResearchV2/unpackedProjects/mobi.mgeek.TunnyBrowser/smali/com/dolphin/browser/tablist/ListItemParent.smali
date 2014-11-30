.class public Lcom/dolphin/browser/tablist/ListItemParent;
.super Landroid/widget/LinearLayout;
.source "ListItemParent.java"

# interfaces
.implements Lcom/dolphin/browser/tablist/bj;


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:Z

.field private d:Landroid/view/animation/Transformation;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/graphics/Paint;

.field private g:Lcom/dolphin/browser/tablist/a;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->f:Landroid/graphics/Paint;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ListItemParent;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ListItemParent;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ListItemParent;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->e:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/dolphin/browser/tablist/av;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/av;-><init>(Lcom/dolphin/browser/tablist/ListItemParent;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/ListItemParent;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method private a(JLandroid/view/View;Z)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->e:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->e:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->d:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->d:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    .line 110
    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 112
    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    .line 113
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->g:Lcom/dolphin/browser/tablist/a;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->g:Lcom/dolphin/browser/tablist/a;

    invoke-interface {v0, p3}, Lcom/dolphin/browser/tablist/a;->a(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/dolphin/browser/tablist/ListItemParent;->a(Landroid/view/View;F)V

    .line 117
    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/tablist/ListItemParent;->invalidate(IIII)V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ListItemParent;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ListItemParent;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->f:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 271
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ListItemParent;->getChildCount()I

    move-result v3

    .line 129
    if-lez v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/tablist/ListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 130
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v4, v2

    move v2, v1

    .line 133
    :goto_1
    if-ge v2, v3, :cond_3

    .line 134
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/tablist/ListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 133
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 129
    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 139
    if-ge v4, v0, :cond_0

    move-object v0, v1

    .line 142
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 192
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    .line 194
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 198
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/ListItemParent;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 232
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    .line 234
    :cond_0
    iput-boolean p3, p0, Lcom/dolphin/browser/tablist/ListItemParent;->c:Z

    .line 235
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->d:Landroid/view/animation/Transformation;

    .line 236
    iput-object p2, p0, Lcom/dolphin/browser/tablist/ListItemParent;->e:Landroid/view/animation/Animation;

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 238
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/ListItemParent;->k(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->g:Lcom/dolphin/browser/tablist/a;

    .line 55
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 217
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    .line 219
    :cond_0
    iput p2, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    .line 220
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 276
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/dolphin/browser/c/f;

    invoke-direct {v0}, Lcom/dolphin/browser/c/f;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/f;->a()Z

    .line 281
    return-void
.end method

.method public d(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 148
    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->e:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ListItemParent;->invalidate()V

    .line 64
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    const/4 v0, 0x1

    .line 70
    iget-boolean v1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->h:Z

    .line 71
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    if-ne v2, p2, :cond_4

    .line 72
    invoke-direct {p0, p3, p4, p2, v1}, Lcom/dolphin/browser/tablist/ListItemParent;->a(JLandroid/view/View;Z)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    iget v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 94
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    :goto_2
    return v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 82
    :cond_1
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    :goto_3
    invoke-static {p2}, Lcom/dolphin/browser/util/aj;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ListItemParent;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 85
    :cond_2
    iget v1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 91
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_1

    .line 96
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_2
.end method

.method public e(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    .line 161
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ListItemParent;->a()V

    .line 167
    new-instance v0, Lcom/dolphin/browser/tablist/au;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/tablist/au;-><init>(Lcom/dolphin/browser/tablist/ListItemParent;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/ListItemParent;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public j(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 207
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ListItemParent;->a:Landroid/view/View;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    .line 210
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->b:F

    return v0
.end method

.method public k(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/tablist/ListItemParent;->invalidate(IIII)V

    .line 226
    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ListItemParent;->a()V

    .line 245
    return-void
.end method

.method public m(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/ListItemParent;->h:Z

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
