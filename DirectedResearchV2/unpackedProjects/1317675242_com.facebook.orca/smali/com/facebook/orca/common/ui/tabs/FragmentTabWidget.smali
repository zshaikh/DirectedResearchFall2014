.class public Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;
.super Landroid/widget/LinearLayout;
.source "FragmentTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->e:Z

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->h:Landroid/graphics/Rect;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;)Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    sget-object v0, Lcom/facebook/orca/R$styleable;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->e:Z

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->g:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->c:Landroid/graphics/drawable/Drawable;

    .line 57
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->d:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b()V

    .line 62
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->setOrientation(I)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 91
    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->c:Landroid/graphics/drawable/Drawable;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 94
    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->d:Landroid/graphics/drawable/Drawable;

    .line 99
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->setFocusable(Z)V

    .line 100
    invoke-virtual {p0, p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getChildCount()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 130
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 132
    :cond_0
    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 113
    mul-int/lit8 v0, p1, 0x2

    .line 115
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;

    .line 388
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v3, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 355
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 361
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 367
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 370
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 371
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    new-instance v0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a()I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$TabClickListener;-><init>(Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;ILcom/facebook/orca/common/ui/tabs/FragmentTabWidget$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 381
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    .line 330
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->setCurrentTab(I)V

    .line 333
    if-eq v0, p1, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 336
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->invalidate()V

    .line 235
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 243
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->e:Z

    if-eqz v0, :cond_0

    .line 252
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->c:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object v2, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->d:Landroid/graphics/drawable/Drawable;

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 260
    iget-boolean v3, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->f:Z

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->h:Landroid/graphics/Rect;

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 264
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getHeight()I

    move-result v0

    .line 265
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getWidth()I

    move-result v6

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 269
    iput-boolean v8, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->f:Z

    .line 272
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    sub-int v0, p1, v0

    if-ne p2, v0, :cond_0

    .line 75
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    .line 79
    :goto_0
    return v0

    .line 76
    :cond_0
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    if-lt p2, v0, :cond_1

    .line 77
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 79
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 391
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 392
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    if-eqz p2, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a()I

    move-result v0

    move v1, v3

    .line 399
    :goto_1
    if-ge v1, v0, :cond_0

    .line 400
    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 401
    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->setCurrentTab(I)V

    .line 402
    iget-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a:Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;

    invoke-interface {v0, v1, v3}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget$OnTabSelectionChanged;->a(IZ)V

    goto :goto_0

    .line 405
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->f:Z

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 68
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 303
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 308
    iput p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    .line 309
    iget v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 310
    iput-boolean v2, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->f:Z

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->g:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->requestLayout()V

    .line 155
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->invalidate()V

    .line 156
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->g:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->requestLayout()V

    .line 143
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->invalidate()V

    .line 144
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a()I

    move-result v0

    .line 343
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 344
    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->a(I)Landroid/view/View;

    move-result-object v2

    .line 345
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->c:Landroid/graphics/drawable/Drawable;

    .line 179
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->requestLayout()V

    .line 180
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->invalidate()V

    .line 181
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->c:Landroid/graphics/drawable/Drawable;

    .line 166
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->requestLayout()V

    .line 167
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->invalidate()V

    .line 168
    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->d:Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->requestLayout()V

    .line 205
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->invalidate()V

    .line 206
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->d:Landroid/graphics/drawable/Drawable;

    .line 191
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->requestLayout()V

    .line 192
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->invalidate()V

    .line 193
    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->e:Z

    .line 218
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/tabs/FragmentTabWidget;->invalidate()V

    .line 219
    return-void
.end method
