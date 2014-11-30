.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# instance fields
.field private a:I

.field private b:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:Lcom/jeremyfeinstein/slidingmenu/lib/f;

.field private h:Z

.field private i:I

.field private j:Z

.field private final k:Landroid/graphics/Paint;

.field private l:F

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:F

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/view/View;

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a:I

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->k:Landroid/graphics/Paint;

    .line 384
    iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->q:Z

    .line 40
    const/high16 v0, 0x42400000

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->e:I

    .line 42
    return-void
.end method

.method private d()I
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 430
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 431
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v0, :cond_1

    .line 242
    packed-switch p2, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_1
    return v0

    .line 244
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 246
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 248
    :cond_1
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 249
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 251
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 253
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 255
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 256
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 258
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 260
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 249
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 256
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->l:F

    .line 173
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->f:I

    .line 54
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->requestLayout()V

    .line 55
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    .line 436
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->refreshDrawableState()V

    .line 437
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->m:Landroid/graphics/drawable/Drawable;

    .line 181
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 182
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 216
    .line 217
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v2, :cond_3

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_0

    move v0, v1

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    .line 235
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 236
    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setVisibility(I)V

    .line 238
    return-void

    .line 220
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_4

    move v0, v1

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->l:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 224
    :cond_5
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_7

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_8

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    if-nez p2, :cond_6

    move v0, v1

    .line 228
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_9

    .line 229
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_7
    move v2, v0

    .line 225
    goto :goto_1

    :cond_8
    move v2, v0

    .line 226
    goto :goto_2

    .line 231
    :cond_9
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->l:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 344
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->o:I

    if-gtz v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x0

    .line 346
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v1, :cond_3

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->o:I

    sub-int/2addr v0, v1

    .line 358
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->m:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->t:I

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 348
    :cond_3
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 350
    :cond_4
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 351
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->t:I

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 354
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->o:I

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 363
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->j:Z

    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 364
    :cond_0
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->p:F

    const/high16 v3, 0x437f0000

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f800000

    sub-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 365
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->k:Landroid/graphics/Paint;

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v1, :cond_1

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v1

    sub-int v1, v0, v1

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 381
    :goto_1
    int-to-float v1, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->k:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 371
    :cond_1
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 374
    :cond_2
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 377
    int-to-float v1, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->k:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .line 46
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->h:Z

    .line 97
    return-void
.end method

.method public a(Landroid/view/View;IF)Z
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a:I

    packed-switch v0, :pswitch_data_0

    .line 309
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 305
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    return-object v0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 199
    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->p:F

    .line 202
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->e:I

    .line 59
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 187
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 389
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->q:Z

    if-nez v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->s:Landroid/view/View;

    sget v1, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->selected_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    const-string v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 395
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 396
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v1, :cond_3

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 398
    sub-int v0, v1, v0

    .line 399
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v2

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 400
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 407
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 401
    :cond_3
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 403
    add-int/2addr v0, v1

    .line 404
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 405
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->j:Z

    .line 196
    return-void
.end method

.method public b(Landroid/view/View;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 287
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v4, :cond_2

    .line 288
    if-lt p2, v2, :cond_1

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->e:I

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 288
    goto :goto_0

    .line 289
    :cond_2
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-ne v4, v0, :cond_4

    .line 290
    if-gt p2, v3, :cond_3

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->e:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 291
    :cond_4
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 292
    if-lt p2, v2, :cond_5

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->e:I

    add-int/2addr v2, v4

    if-le p2, v2, :cond_0

    :cond_5
    if-gt p2, v3, :cond_6

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->e:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 295
    goto :goto_0
.end method

.method public b(Landroid/view/View;IF)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_3

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    .line 318
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 314
    goto :goto_0

    .line 315
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-ne v2, v3, :cond_5

    if-ne p2, v3, :cond_5

    .line 316
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 268
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_1
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 158
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_2
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    .line 165
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->q:Z

    .line 414
    return-void
.end method

.method public c(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 322
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v2, :cond_2

    .line 323
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 323
    goto :goto_0

    .line 324
    :cond_2
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-ne v2, v0, :cond_3

    .line 325
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 326
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 329
    goto :goto_0
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 278
    :cond_0
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->o:I

    .line 191
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 192
    return-void
.end method

.method public d(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 333
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v2, :cond_2

    .line 334
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 334
    goto :goto_0

    .line 335
    :cond_2
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-ne v2, v0, :cond_3

    .line 336
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 337
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 340
    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->g:Lcom/jeremyfeinstein/slidingmenu/lib/f;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->g:Lcom/jeremyfeinstein/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/f;->a(Landroid/graphics/Canvas;F)V

    .line 121
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public e(I)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 205
    if-le p1, v3, :cond_1

    move p1, v0

    .line 206
    :cond_0
    :goto_0
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 211
    :goto_1
    return v1

    .line 205
    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 208
    :cond_2
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->i:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    .line 209
    goto :goto_1

    :cond_3
    move v1, p1

    .line 211
    goto :goto_1
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 299
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a:I

    .line 300
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    sub-int v0, p4, p2

    .line 130
    sub-int v1, p5, p3

    .line 131
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->f:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 132
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->f:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 134
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-static {v3, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I

    move-result v0

    .line 139
    invoke-static {v3, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I

    move-result v1

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMeasuredDimension(II)V

    .line 141
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->f:I

    sub-int/2addr v0, v2

    invoke-static {p1, v3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 142
    invoke-static {p2, v3, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 143
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 144
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 146
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 102
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->g:Lcom/jeremyfeinstein/slidingmenu/lib/f;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 104
    :cond_0
    return-void
.end method
