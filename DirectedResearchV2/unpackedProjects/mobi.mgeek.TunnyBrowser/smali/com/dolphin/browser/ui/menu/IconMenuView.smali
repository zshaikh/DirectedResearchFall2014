.class public final Lcom/dolphin/browser/ui/menu/IconMenuView;
.super Landroid/view/ViewGroup;
.source "IconMenuView.java"

# interfaces
.implements Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;
.implements Lcom/dolphin/browser/ui/menu/f;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Lcom/dolphin/browser/ui/menu/IconMenuItemView;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:[I

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-boolean v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->r:Z

    .line 124
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/dolphin/browser/core/R$styleable;->IconMenuView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 127
    const/16 v2, 0x40

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->b:I

    .line 128
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->c:I

    .line 129
    const/4 v2, 0x6

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->d:I

    .line 130
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->e:I

    .line 131
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->m:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    sget-object v1, Lcom/dolphin/browser/core/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 135
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->o:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->g:Landroid/graphics/drawable/Drawable;

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->i:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->j:Landroid/graphics/drawable/Drawable;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->l:Ljava/util/ArrayList;

    .line 140
    const/4 v0, 0x5

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->p:I

    .line 141
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->h:I

    .line 146
    iget v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->h:I

    if-ne v0, v6, :cond_0

    iput v4, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->h:I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->k:I

    .line 152
    iget v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->k:I

    if-ne v0, v6, :cond_1

    iput v4, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->k:I

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->d()V

    .line 157
    iget v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->c:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->t:[I

    .line 160
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/ui/menu/IconMenuView;->setWillNotDraw(Z)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/ui/menu/IconMenuView;->setFocusableInTouchMode(Z)V

    .line 165
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->setDescendantFocusability(I)V

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/menu/IconMenuView;)Lcom/dolphin/browser/ui/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildCount()I

    move-result v1

    .line 194
    if-nez v1, :cond_1

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->u:I

    .line 220
    :cond_0
    return-void

    .line 200
    :cond_1
    int-to-float v0, v1

    iget v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->e:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    :goto_0
    iget v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->c:I

    if-gt v0, v2, :cond_0

    .line 208
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(II)V

    .line 210
    if-ge v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(II)V
    .locals 5

    .prologue
    .line 232
    div-int v1, p2, p1

    .line 233
    rem-int v0, p2, p1

    .line 240
    sub-int v2, p1, v0

    .line 242
    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->t:[I

    .line 243
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 244
    aput v1, v3, v0

    .line 247
    if-lt v0, v2, :cond_0

    .line 248
    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    iput p1, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->u:I

    .line 253
    return-void
.end method

.method private a(Lcom/dolphin/browser/ui/menu/IconMenuItemView;)V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Lcom/dolphin/browser/ui/menu/IconMenuView;)V

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;)V

    .line 308
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a()Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    return-void
.end method

.method private b(I)V
    .locals 7

    .prologue
    .line 731
    iget v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->e:I

    .line 732
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildCount()I

    move-result v4

    .line 733
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 734
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    .line 736
    const/4 v1, 0x1

    iput v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->f:I

    move v1, v2

    .line 737
    :goto_1
    if-lez v1, :cond_0

    .line 740
    iget v5, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->e:I

    div-int v6, p1, v1

    if-ge v5, v6, :cond_1

    .line 742
    iput v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->f:I

    .line 733
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 738
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 747
    :cond_2
    return-void
.end method

.method private b(II)V
    .locals 19

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 397
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 400
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->u:I

    .line 401
    add-int/lit8 v8, v7, -0x1

    .line 402
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->t:[I

    .line 405
    const/4 v4, 0x0

    .line 407
    const/4 v3, 0x0

    .line 412
    const/4 v2, 0x0

    .line 416
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->h:I

    add-int/lit8 v5, v7, -0x1

    mul-int/2addr v1, v5

    sub-int v1, p2, v1

    int-to-float v1, v1

    int-to-float v5, v7

    div-float v10, v1, v5

    .line 419
    const/4 v1, 0x0

    move v5, v1

    move v6, v2

    :goto_0
    if-ge v5, v7, :cond_6

    .line 421
    const/4 v2, 0x0

    .line 424
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->k:I

    aget v11, v9, v5

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v1, v11

    sub-int v1, p1, v1

    int-to-float v1, v1

    aget v11, v9, v5

    int-to-float v11, v11

    div-float v11, v1, v11

    .line 427
    const/4 v1, 0x0

    move/from16 v18, v1

    move-object v1, v3

    move v3, v2

    move/from16 v2, v18

    :goto_1
    aget v12, v9, v5

    if-ge v2, v12, :cond_3

    .line 429
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 430
    float-to-int v12, v11

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    float-to-int v13, v10

    const/high16 v14, 0x40000000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v1, v12, v13}, Landroid/view/View;->measure(II)V

    .line 434
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    .line 435
    float-to-int v12, v3

    iput v12, v1, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->a:I

    .line 436
    add-float v12, v3, v11

    float-to-int v12, v12

    iput v12, v1, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->c:I

    .line 437
    float-to-int v12, v6

    iput v12, v1, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->b:I

    .line 438
    add-float v12, v6, v10

    float-to-int v12, v12

    iput v12, v1, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->d:I

    .line 441
    add-float/2addr v3, v11

    .line 442
    add-int/lit8 v4, v4, 0x1

    .line 445
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    aget v12, v9, v5

    add-int/lit8 v12, v12, -0x1

    if-ge v2, v12, :cond_2

    .line 446
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->l:Ljava/util/ArrayList;

    new-instance v13, Landroid/graphics/Rect;

    float-to-int v14, v3

    float-to-int v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->k:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v3

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-float v17, v6, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->k:I

    int-to-float v12, v12

    add-float/2addr v3, v12

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 458
    :cond_3
    if-eqz v1, :cond_4

    .line 459
    move/from16 v0, p1

    iput v0, v1, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->c:I

    .line 462
    :cond_4
    add-float v2, v6, v10

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    if-ge v5, v8, :cond_5

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->i:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v11, 0x0

    float-to-int v12, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->h:I

    int-to-float v13, v13

    add-float/2addr v13, v2

    float-to-int v13, v13

    move/from16 v0, p1

    invoke-direct {v6, v11, v12, v0, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/menu/IconMenuView;->h:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 419
    :cond_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v6, v2

    move-object v3, v1

    goto/16 :goto_0

    .line 472
    :cond_6
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 666
    if-nez p1, :cond_0

    .line 671
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 672
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->c(Z)V

    .line 673
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->r:Z

    .line 681
    :goto_0
    return-void

    .line 678
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->c(Z)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->s:Z

    .line 719
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 720
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Z)V

    .line 719
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 722
    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/16 v5, 0x41

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x6

    .line 170
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 172
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    .line 174
    :cond_0
    invoke-static {v5}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->b:I

    .line 175
    iput v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->d:I

    .line 176
    iput v4, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->c:I

    .line 177
    iput v4, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->e:I

    .line 185
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-static {v5}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->b:I

    .line 181
    iput v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->d:I

    .line 182
    iput v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->c:I

    .line 183
    iput v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->e:I

    goto :goto_0
.end method

.method private e()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 263
    .line 265
    iget-object v7, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->t:[I

    .line 266
    iget v8, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->u:I

    move v6, v1

    move v0, v1

    .line 267
    :goto_0
    if-ge v6, v8, :cond_3

    .line 268
    aget v4, v7, v6

    .line 274
    if-ne v4, v2, :cond_1

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 267
    :cond_0
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 279
    :goto_1
    if-lez v3, :cond_0

    .line 281
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    .line 283
    iget v0, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->f:I

    if-ge v0, v4, :cond_2

    move v0, v1

    .line 289
    :goto_2
    return v0

    .line 280
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v2

    .line 289
    goto :goto_2
.end method

.method private f()Lcom/dolphin/browser/ui/menu/IconMenuItemView;
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(I)Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuType;->a()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 320
    sget v1, Lcom/dolphin/browser/core/R$layout;->icon_menu_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;

    .line 323
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 324
    sget v2, Lcom/dolphin/browser/core/R$string;->more_item_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 328
    new-instance v1, Lcom/dolphin/browser/ui/menu/b;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/menu/b;-><init>(Lcom/dolphin/browser/ui/menu/IconMenuView;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->p:I

    return v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 549
    new-instance v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/ui/menu/MenuBuilder;I)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(Z)V

    .line 346
    return-void
.end method

.method public a(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->removeAllViews()V

    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 353
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 354
    iget v5, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->d:I

    .line 356
    add-int/lit8 v0, v5, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v1, v2

    .line 361
    :goto_0
    if-ge v1, v6, :cond_0

    .line 362
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 363
    invoke-virtual {v0, v2, p0}, Lcom/dolphin/browser/ui/menu/e;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(Lcom/dolphin/browser/ui/menu/IconMenuItemView;)V

    .line 361
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 366
    :cond_0
    if-le v4, v5, :cond_3

    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->n:Lcom/dolphin/browser/ui/menu/IconMenuItemView;

    if-nez v0, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->f()Lcom/dolphin/browser/ui/menu/IconMenuItemView;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->n:Lcom/dolphin/browser/ui/menu/IconMenuItemView;

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->n:Lcom/dolphin/browser/ui/menu/IconMenuItemView;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(Lcom/dolphin/browser/ui/menu/IconMenuItemView;)V

    .line 377
    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->f:I

    .line 386
    :cond_2
    :goto_1
    return-void

    .line 378
    :cond_3
    if-ne v4, v5, :cond_2

    .line 380
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    .line 381
    invoke-virtual {v0, v2, p0}, Lcom/dolphin/browser/ui/menu/e;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuItemView;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(Lcom/dolphin/browser/ui/menu/IconMenuItemView;)V

    .line 384
    iput v5, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->f:I

    goto :goto_1
.end method

.method b()V
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->q:Z

    if-nez v0, :cond_0

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->q:Z

    .line 564
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->requestLayout()V

    .line 566
    :cond_0
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->f:I

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 555
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 611
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 612
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 613
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 614
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 631
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 615
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 617
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->r:Z

    if-eqz v1, :cond_2

    .line 620
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->b(Z)V

    goto :goto_1

    .line 625
    :cond_2
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(Landroid/util/AttributeSet;)Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public invokeItem(Lcom/dolphin/browser/ui/menu/e;)Z
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 636
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 638
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->requestFocus()Z

    .line 639
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->b(Z)V

    .line 644
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 645
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 522
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->g:Landroid/graphics/drawable/Drawable;

    .line 523
    if-eqz v2, :cond_0

    .line 525
    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->i:Ljava/util/ArrayList;

    .line 526
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 527
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 528
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 526
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->j:Landroid/graphics/drawable/Drawable;

    .line 533
    if-eqz v2, :cond_1

    .line 535
    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->l:Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 537
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 538
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 536
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 541
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 510
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 511
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;

    .line 515
    iget v3, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->a:I

    iget v4, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->b:I

    iget v5, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->c:I

    iget v0, v0, Lcom/dolphin/browser/ui/menu/IconMenuView$LayoutParams;->d:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 509
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 518
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->q:Z

    if-eqz v0, :cond_0

    .line 477
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->q:Z

    .line 480
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(Z)V

    .line 483
    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0, p1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->resolveSize(II)I

    move-result v0

    .line 484
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->b(I)V

    .line 485
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->a(I)V

    .line 489
    iget v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->u:I

    .line 490
    iget v2, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->b:I

    iget v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->h:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->h:I

    sub-int/2addr v2, v3

    .line 494
    invoke-static {v2, p2}, Lcom/dolphin/browser/ui/menu/IconMenuView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/ui/menu/IconMenuView;->setMeasuredDimension(II)V

    .line 498
    if-lez v1, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->b(II)V

    .line 501
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 766
    check-cast p1, Lcom/dolphin/browser/ui/menu/IconMenuView$SavedState;

    .line 767
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/IconMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 769
    iget v0, p1, Lcom/dolphin/browser/ui/menu/IconMenuView$SavedState;->a:I

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget v0, p1, Lcom/dolphin/browser/ui/menu/IconMenuView$SavedState;->a:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 751
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 753
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 755
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 756
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v3, :cond_0

    .line 757
    new-instance v0, Lcom/dolphin/browser/ui/menu/IconMenuView$SavedState;

    invoke-direct {v0, v2, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 761
    :goto_1
    return-object v0

    .line 755
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 761
    :cond_1
    new-instance v0, Lcom/dolphin/browser/ui/menu/IconMenuView$SavedState;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->b(Z)V

    .line 654
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 655
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 691
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->r:Z

    if-eqz v1, :cond_1

    .line 694
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->s:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->c(Z)V

    .line 704
    :goto_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/dolphin/browser/ui/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 705
    return-void

    .line 694
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 699
    :cond_1
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/menu/IconMenuView;->r:Z

    .line 700
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/menu/IconMenuView;->b(Z)V

    goto :goto_1
.end method
