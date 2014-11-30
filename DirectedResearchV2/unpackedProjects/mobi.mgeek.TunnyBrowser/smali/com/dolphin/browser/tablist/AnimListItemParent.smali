.class public Lcom/dolphin/browser/tablist/AnimListItemParent;
.super Lcom/dolphin/browser/tablist/ListItemParent;
.source "AnimListItemParent.java"

# interfaces
.implements Lcom/dolphin/browser/tablist/cv;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/dolphin/browser/tablist/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/animation/AlphaAnimation;

.field private c:Landroid/view/animation/Transformation;

.field private d:Landroid/view/animation/Animation$AnimationListener;

.field private e:Lcom/dolphin/browser/tablist/cw;

.field private f:Lcom/dolphin/browser/tablist/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tablist/ListItemParent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->a:Ljava/util/HashMap;

    .line 144
    new-instance v0, Lcom/dolphin/browser/tablist/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/c;-><init>(Lcom/dolphin/browser/tablist/AnimListItemParent;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->d:Landroid/view/animation/Animation$AnimationListener;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/AnimListItemParent;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/AnimListItemParent;)Lcom/dolphin/browser/tablist/f;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->f:Lcom/dolphin/browser/tablist/f;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->c:Landroid/view/animation/Transformation;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->c:Landroid/view/animation/Transformation;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->d:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 142
    return-void
.end method

.method private a(Landroid/view/View;Lcom/dolphin/browser/tablist/e;Z)V
    .locals 8

    .prologue
    .line 189
    if-eqz p3, :cond_0

    .line 190
    invoke-virtual {p2}, Lcom/dolphin/browser/tablist/e;->a()V

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getLeft()I

    move-result v1

    add-int v4, v0, v1

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getTop()I

    move-result v1

    add-int v3, v0, v1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getLeft()I

    move-result v1

    add-int v2, v0, v1

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    .line 196
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 198
    :goto_0
    instance-of v5, v0, Lcom/dolphin/browser/tablist/cw;

    if-nez v5, :cond_1

    .line 199
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    .line 200
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/2addr v4, v7

    .line 202
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    sub-int/2addr v7, v6

    add-int/2addr v3, v7

    .line 203
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    sub-int v5, v7, v5

    add-int/2addr v2, v5

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 207
    :cond_1
    instance-of v5, v0, Lcom/dolphin/browser/tablist/cw;

    if-eqz v5, :cond_2

    .line 208
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    .line 209
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 210
    sub-int/2addr v4, v5

    .line 211
    sub-int/2addr v3, v0

    .line 212
    sub-int/2addr v2, v5

    .line 213
    sub-int v0, v1, v0

    .line 214
    if-eqz p3, :cond_3

    .line 215
    invoke-virtual {p2, v4, v2, v3, v0}, Lcom/dolphin/browser/tablist/e;->a(IIII)V

    .line 220
    :cond_2
    :goto_1
    return-void

    .line 217
    :cond_3
    invoke-virtual {p2, v4, v2, v3, v0}, Lcom/dolphin/browser/tablist/e;->b(IIII)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/AnimListItemParent;)Lcom/dolphin/browser/tablist/cw;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->e:Lcom/dolphin/browser/tablist/cw;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v2

    .line 172
    iget-object v3, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->a:Ljava/util/HashMap;

    .line 173
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 174
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 175
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/e;

    .line 176
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/dolphin/browser/tablist/e;

    invoke-direct {v0}, Lcom/dolphin/browser/tablist/e;-><init>()V

    .line 178
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    const/4 v5, 0x1

    invoke-direct {p0, v4, v0, v5}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Landroid/view/View;Lcom/dolphin/browser/tablist/e;Z)V

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 236
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 237
    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->e:Lcom/dolphin/browser/tablist/cw;

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/cw;->a()V

    .line 240
    :cond_0
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 84
    if-eqz p2, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->b()V

    .line 86
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a()V

    .line 88
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/ListItemParent;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->e:Lcom/dolphin/browser/tablist/cw;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->e:Lcom/dolphin/browser/tablist/cw;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/cw;->a(Z)V

    .line 92
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/cw;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->e:Lcom/dolphin/browser/tablist/cw;

    if-eq p1, v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->e:Lcom/dolphin/browser/tablist/cw;

    .line 231
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/f;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->f:Lcom/dolphin/browser/tablist/f;

    .line 278
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v2

    .line 97
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 99
    if-eqz p2, :cond_1

    .line 100
    if-le v2, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->b()V

    .line 102
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a()V

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->f:Lcom/dolphin/browser/tablist/f;

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->f:Lcom/dolphin/browser/tablist/f;

    invoke-interface {v3, p1}, Lcom/dolphin/browser/tablist/f;->b(Landroid/view/View;)V

    .line 108
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/ListItemParent;->removeView(Landroid/view/View;)V

    .line 109
    iget-object v3, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->e:Lcom/dolphin/browser/tablist/cw;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 111
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_5

    .line 112
    const/4 v0, 0x2

    .line 114
    :goto_0
    if-le v2, v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->f:Lcom/dolphin/browser/tablist/f;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->f:Lcom/dolphin/browser/tablist/f;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/f;->c(Landroid/view/View;)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->e:Lcom/dolphin/browser/tablist/cw;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/cw;->a(Z)V

    .line 132
    :cond_3
    :goto_1
    return-void

    .line 121
    :cond_4
    new-instance v0, Lcom/dolphin/browser/tablist/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/b;-><init>(Lcom/dolphin/browser/tablist/AnimListItemParent;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/e;

    .line 248
    if-nez v0, :cond_0

    move v0, v1

    .line 271
    :goto_0
    return v0

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/e;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 252
    invoke-static {v0}, Lcom/dolphin/browser/tablist/e;->a(Lcom/dolphin/browser/tablist/e;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    const/4 v3, 0x0

    invoke-direct {p0, p2, v0, v3}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Landroid/view/View;Lcom/dolphin/browser/tablist/e;Z)V

    .line 255
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/e;->c()Landroid/graphics/Rect;

    move-result-object v0

    .line 260
    iget-object v3, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->b:Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->c:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p3, p4, v4}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 261
    iget-object v3, p0, Lcom/dolphin/browser/tablist/AnimListItemParent;->c:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/tablist/ListItemParent;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v1

    .line 269
    goto :goto_0

    .line 271
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/tablist/ListItemParent;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method
