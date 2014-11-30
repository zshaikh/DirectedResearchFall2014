.class public Lcom/twitter/android/widget/ScrollableImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    sget-object v1, Lcom/twitter/android/widget/q;->a:[I

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollableImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->i:Z

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollableImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollableImageView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/widget/ScrollableImageView;->j:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/twitter/android/widget/ScrollableImageView;->e:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/twitter/android/widget/ScrollableImageView;->f:I

    iget v1, p0, Lcom/twitter/android/widget/ScrollableImageView;->e:I

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/twitter/android/widget/ScrollableImageView;->f:I

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->i:Z

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->e:I

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->f:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v6, -0x80000000

    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v5, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iput v4, p0, Lcom/twitter/android/widget/ScrollableImageView;->a:I

    iput v5, p0, Lcom/twitter/android/widget/ScrollableImageView;->b:I

    iput v6, p0, Lcom/twitter/android/widget/ScrollableImageView;->c:I

    iput v6, p0, Lcom/twitter/android/widget/ScrollableImageView;->d:I

    move v0, v3

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->c:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->c:I

    sub-int v1, v0, v4

    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->d:I

    sub-int/2addr v0, v5

    :goto_1
    iget v6, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/twitter/android/widget/ScrollableImageView;->e:I

    if-le v6, v7, :cond_1

    move v1, v2

    :cond_1
    iget v6, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/twitter/android/widget/ScrollableImageView;->f:I

    if-le v6, v7, :cond_3

    :goto_2
    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/widget/ScrollableImageView;->scrollBy(II)V

    iput v4, p0, Lcom/twitter/android/widget/ScrollableImageView;->c:I

    iput v5, p0, Lcom/twitter/android/widget/ScrollableImageView;->d:I

    move v0, v3

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->a:I

    sub-int v1, v0, v4

    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->b:I

    sub-int/2addr v0, v5

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->j:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->j:Landroid/graphics/Rect;

    goto :goto_0
.end method
