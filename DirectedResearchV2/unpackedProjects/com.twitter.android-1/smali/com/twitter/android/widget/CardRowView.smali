.class public Lcom/twitter/android/widget/CardRowView;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:Landroid/graphics/Paint;

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private final c:F

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:F

.field private final k:I

.field private l:I

.field private m:Landroid/graphics/drawable/shapes/RectShape;

.field private n:Landroid/graphics/drawable/shapes/RectShape;

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/CardRowView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/CardRowView;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/twitter/android/c;->cardRowViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/16 v8, 0xc

    const v4, -0xbbbbbc

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ga;->CardRowView:[I

    invoke-virtual {p1, p2, v0, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->c:F

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->h:I

    const/16 v1, 0xe

    const v2, -0x333334

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->i:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    sget-object v1, Lcom/twitter/android/widget/CardRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    cmpl-float v3, v2, v7

    if-lez v3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v1, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_1

    iput v3, p0, Lcom/twitter/android/widget/CardRowView;->k:I

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/widget/CardRowView;->d:I

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/widget/CardRowView;->e:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/widget/CardRowView;->f:I

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->g:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/CardRowView;->setBackgroundColor(I)V

    :cond_0
    invoke-super {p0, v6, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->k:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->k:I

    goto :goto_0
.end method

.method private static a(Landroid/graphics/RectF;FF)V
    .locals 4

    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private a([FLandroid/graphics/RectF;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    iput-object v0, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->invalidate()V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    if-nez p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/widget/CardRowView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/widget/CardRowView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardRowView can only hold a single child view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/widget/CardRowView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    if-eqz v0, :cond_0

    if-nez v6, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    sget-object v5, Lcom/twitter/android/widget/CardRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/twitter/android/widget/CardRowView;->k:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->m:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {v2, p1, v5}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->i:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    iget v3, v6, Landroid/graphics/RectF;->right:F

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/twitter/android/widget/CardRowView;->h:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/twitter/android/widget/CardRowView;->b:Landroid/graphics/Paint;

    const/16 v1, 0x14

    invoke-virtual {p1, v6, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object v2, Lcom/twitter/android/util/h;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v2, 0x10

    invoke-virtual {p1, v6, v0, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/CardRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/twitter/android/widget/CardRowView;->c:F

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v1, v2, v7

    aput v1, v2, v8

    aput v1, v2, v9

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    iget-object v1, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->m:Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/widget/CardRowView;->a([FLandroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v1, v2, v7

    aput v1, v2, v8

    aput v1, v2, v9

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v5, v2, v1

    const/4 v1, 0x5

    aput v5, v2, v1

    const/4 v1, 0x6

    aput v5, v2, v1

    const/4 v1, 0x7

    aput v5, v2, v1

    iget-object v1, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->m:Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/widget/CardRowView;->a([FLandroid/graphics/RectF;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    iput-object v1, p0, Lcom/twitter/android/widget/CardRowView;->m:Landroid/graphics/drawable/shapes/RectShape;

    iput-object v6, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v5, v2, v7

    aput v5, v2, v8

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    iget-object v1, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->m:Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p0, v2, v0}, Lcom/twitter/android/widget/CardRowView;->a([FLandroid/graphics/RectF;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/CardRowView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    if-nez v3, :cond_1

    invoke-virtual {p0, v2, p1, p2}, Lcom/twitter/android/widget/CardRowView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/CardRowView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/twitter/android/widget/CardRowView;->d:I

    iget v5, p0, Lcom/twitter/android/widget/CardRowView;->e:I

    iget v6, p0, Lcom/twitter/android/widget/CardRowView;->f:I

    iget v7, p0, Lcom/twitter/android/widget/CardRowView;->g:I

    iget v8, p0, Lcom/twitter/android/widget/CardRowView;->h:I

    add-int v9, v4, v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000

    if-ne v10, v1, :cond_2

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v1}, Lcom/twitter/android/widget/CardRowView;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/twitter/android/widget/CardRowView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, v0, v6

    packed-switch v3, :pswitch_data_0

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/CardRowView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getSuggestedMinimumWidth()I

    move-result v1

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :pswitch_0
    add-int v3, v5, v7

    add-int/2addr v1, v3

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v5, v5

    int-to-float v2, v2

    sub-int v6, v1, v7

    int-to-float v6, v6

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget v4, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    iget v5, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    invoke-static {v2, v4, v5}, Lcom/twitter/android/widget/CardRowView;->a(Landroid/graphics/RectF;FF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    goto :goto_2

    :pswitch_1
    add-int/2addr v1, v5

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v5, v5

    int-to-float v2, v2

    int-to-float v6, v1

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 v9, 0x41000000

    add-float/2addr v7, v9

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget v4, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    iget v5, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    invoke-static {v2, v4, v5}, Lcom/twitter/android/widget/CardRowView;->a(Landroid/graphics/RectF;FF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    add-int/2addr v1, v8

    goto :goto_2

    :pswitch_2
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v4

    const/4 v5, 0x0

    int-to-float v2, v2

    int-to-float v6, v1

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x41000000

    sub-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 v9, 0x41000000

    add-float/2addr v7, v9

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget v4, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    iget v5, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    invoke-static {v2, v4, v5}, Lcom/twitter/android/widget/CardRowView;->a(Landroid/graphics/RectF;FF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    add-int/2addr v1, v8

    goto/16 :goto_2

    :pswitch_3
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v4

    const/4 v5, 0x0

    int-to-float v2, v2

    int-to-float v6, v1

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x41000000

    sub-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v4, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/RectF;

    iget v4, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    iget v5, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    invoke-static {v2, v4, v5}, Lcom/twitter/android/widget/CardRowView;->a(Landroid/graphics/RectF;FF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    add-int/2addr v1, v7

    goto/16 :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method
