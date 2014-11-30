.class public Lcom/twitter/android/widget/SegmentedControl;
.super Landroid/view/View;


# static fields
.field private static final a:Landroid/text/TextPaint;

.field private static final b:[I


# instance fields
.field private c:Lcom/twitter/android/widget/e;

.field private d:Landroid/graphics/drawable/StateListDrawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:[Ljava/lang/CharSequence;

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:Lcom/twitter/android/widget/s;

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:[I

.field private s:I

.field private t:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/SegmentedControl;->b:[I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/SegmentedControl;->a:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/SegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/twitter/android/c;->segmentedControlStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/SegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ga;->SegmentedControl:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->d:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->f:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->f:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    goto :goto_1

    :pswitch_3
    const/high16 v5, 0x41600000

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->i:F

    goto :goto_1

    :pswitch_4
    const/4 v5, -0x1

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->j:I

    goto :goto_1

    :pswitch_5
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->k:I

    goto :goto_1

    :pswitch_6
    const/high16 v5, -0x1000000

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->p:I

    goto :goto_1

    :pswitch_7
    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->n:F

    goto :goto_1

    :pswitch_8
    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->m:F

    goto :goto_1

    :pswitch_9
    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->o:F

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->t:Landroid/graphics/Rect;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private a(F)I
    .locals 1

    iget v0, p0, Lcom/twitter/android/widget/SegmentedControl;->h:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->c:Lcom/twitter/android/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->c:Lcom/twitter/android/widget/e;

    iget v1, p0, Lcom/twitter/android/widget/SegmentedControl;->q:I

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/e;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    iget v1, p0, Lcom/twitter/android/widget/SegmentedControl;->q:I

    aget v2, v0, v1

    and-int/lit8 v2, v2, -0x3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    iput p1, p0, Lcom/twitter/android/widget/SegmentedControl;->q:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/widget/SegmentedControl;->c:Lcom/twitter/android/widget/e;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/widget/SegmentedControl;->d:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/widget/SegmentedControl;->e:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/twitter/android/widget/SegmentedControl;->g:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/widget/SegmentedControl;->f:[Ljava/lang/CharSequence;

    sget-object v7, Lcom/twitter/android/widget/SegmentedControl;->a:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/android/widget/SegmentedControl;->i:F

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/android/widget/SegmentedControl;->j:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/android/widget/SegmentedControl;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/android/widget/SegmentedControl;->o:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/SegmentedControl;->m:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/widget/SegmentedControl;->n:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/widget/SegmentedControl;->p:I

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_0
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/twitter/android/widget/SegmentedControl;->h:F

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/SegmentedControl;->getMeasuredHeight()I

    move-result v1

    int-to-float v13, v1

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/SegmentedControl;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v14, v1

    const/4 v1, 0x0

    array-length v15, v11

    move v8, v1

    :goto_0
    if-ge v8, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    aget v1, v1, v8

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    int-to-float v3, v8

    mul-float/2addr v3, v14

    const/4 v4, 0x0

    add-int/lit8 v5, v8, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    sget-object v1, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_1
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    aget-object v2, v11, v8

    const/4 v3, 0x0

    aget-object v1, v11, v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/high16 v1, 0x40000000

    div-float v1, v12, v1

    mul-int/lit8 v5, v8, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    sget-object v1, Lcom/twitter/android/widget/SegmentedControl;->b:[I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->d:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getPaddingTop()I

    move-result v5

    add-int v6, v5, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getSuggestedMinimumWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v7, v4

    invoke-static {v7, p1}, Lcom/twitter/android/widget/SegmentedControl;->getDefaultSize(II)I

    move-result v7

    add-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getPaddingBottom()I

    move-result v8

    add-int/2addr v2, v8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v9, v7, v8

    div-int/lit8 v9, v9, 0x2

    sub-int v10, v7, v3

    sub-int/2addr v10, v4

    iget-object v11, p0, Lcom/twitter/android/widget/SegmentedControl;->f:[Ljava/lang/CharSequence;

    array-length v11, v11

    div-int/2addr v10, v11

    int-to-float v10, v10

    iput v10, p0, Lcom/twitter/android/widget/SegmentedControl;->h:F

    iget-object v10, p0, Lcom/twitter/android/widget/SegmentedControl;->t:Landroid/graphics/Rect;

    sub-int v4, v7, v4

    invoke-virtual {v10, v3, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/twitter/android/widget/SegmentedControl;->t:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    add-int v0, v9, v8

    invoke-virtual {v1, v9, v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lcom/twitter/android/widget/SegmentedControl;->a:Landroid/text/TextPaint;

    iget v1, p0, Lcom/twitter/android/widget/SegmentedControl;->i:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v1, v2

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    sub-float v0, v1, v0

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iget v1, p0, Lcom/twitter/android/widget/SegmentedControl;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->g:F

    invoke-virtual {p0, v7, v2}, Lcom/twitter/android/widget/SegmentedControl;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->t:Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/SegmentedControl;->a(F)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    aget v3, v2, v1

    or-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    iput v1, p0, Lcom/twitter/android/widget/SegmentedControl;->s:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    iget v4, p0, Lcom/twitter/android/widget/SegmentedControl;->s:I

    aget v5, v1, v4

    and-int/lit8 v5, v5, -0x2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->t:Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/SegmentedControl;->a(F)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/twitter/android/widget/SegmentedControl;->s:I

    if-ne v1, v3, :cond_2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/SegmentedControl;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->l:Lcom/twitter/android/widget/s;

    if-nez v1, :cond_1

    new-instance v1, Lcom/twitter/android/widget/s;

    invoke-direct {v1, p0}, Lcom/twitter/android/widget/s;-><init>(Lcom/twitter/android/widget/SegmentedControl;)V

    iput-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->l:Lcom/twitter/android/widget/s;

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->l:Lcom/twitter/android/widget/s;

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/SegmentedControl;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->a()V

    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->t:Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/SegmentedControl;->a(F)I

    move-result v1

    iget v2, p0, Lcom/twitter/android/widget/SegmentedControl;->s:I

    if-eq v2, v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    iget v2, p0, Lcom/twitter/android/widget/SegmentedControl;->s:I

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x2

    aput v3, v1, v2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    iget v2, p0, Lcom/twitter/android/widget/SegmentedControl;->s:I

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x2

    aput v3, v1, v2

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->r:[I

    iget v2, p0, Lcom/twitter/android/widget/SegmentedControl;->s:I

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x2

    aput v3, v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
