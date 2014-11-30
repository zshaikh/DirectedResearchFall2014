.class public Ldolphin/webkit/bv;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private final e:I

.field private final f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:F

.field private final u:Landroid/view/animation/Interpolator;

.field private v:I

.field private w:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x12c

    iput v0, p0, Ldolphin/webkit/bv;->e:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/bv;->v:I

    .line 126
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    sget v1, Ldolphin/webkit/R$drawable;->overscroll_edge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/bv;->a:Landroid/graphics/drawable/Drawable;

    .line 128
    sget v1, Ldolphin/webkit/R$drawable;->overscroll_glow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/bv;->b:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43960000

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldolphin/webkit/bv;->f:I

    .line 131
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/bv;->u:Landroid/view/animation/Interpolator;

    .line 132
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x447a0000

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    .line 339
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 340
    iget-wide v2, p0, Ldolphin/webkit/bv;->s:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Ldolphin/webkit/bv;->t:F

    div-float/2addr v0, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 342
    iget-object v1, p0, Ldolphin/webkit/bv;->u:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 344
    iget v2, p0, Ldolphin/webkit/bv;->k:F

    iget v3, p0, Ldolphin/webkit/bv;->l:F

    iget v4, p0, Ldolphin/webkit/bv;->k:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Ldolphin/webkit/bv;->g:F

    .line 345
    iget v2, p0, Ldolphin/webkit/bv;->m:F

    iget v3, p0, Ldolphin/webkit/bv;->n:F

    iget v4, p0, Ldolphin/webkit/bv;->m:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Ldolphin/webkit/bv;->h:F

    .line 346
    iget v2, p0, Ldolphin/webkit/bv;->o:F

    iget v3, p0, Ldolphin/webkit/bv;->p:F

    iget v4, p0, Ldolphin/webkit/bv;->o:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Ldolphin/webkit/bv;->i:F

    .line 347
    iget v2, p0, Ldolphin/webkit/bv;->q:F

    iget v3, p0, Ldolphin/webkit/bv;->r:F

    iget v4, p0, Ldolphin/webkit/bv;->q:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Ldolphin/webkit/bv;->j:F

    .line 349
    const v2, 0x3f7fbe77

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 350
    iget v0, p0, Ldolphin/webkit/bv;->v:I

    packed-switch v0, :pswitch_data_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    iput v8, p0, Ldolphin/webkit/bv;->v:I

    .line 353
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/webkit/bv;->s:J

    .line 354
    iput v7, p0, Ldolphin/webkit/bv;->t:F

    .line 356
    iget v0, p0, Ldolphin/webkit/bv;->g:F

    iput v0, p0, Ldolphin/webkit/bv;->k:F

    .line 357
    iget v0, p0, Ldolphin/webkit/bv;->h:F

    iput v0, p0, Ldolphin/webkit/bv;->m:F

    .line 358
    iget v0, p0, Ldolphin/webkit/bv;->i:F

    iput v0, p0, Ldolphin/webkit/bv;->o:F

    .line 359
    iget v0, p0, Ldolphin/webkit/bv;->j:F

    iput v0, p0, Ldolphin/webkit/bv;->q:F

    .line 362
    iput v5, p0, Ldolphin/webkit/bv;->l:F

    .line 363
    iput v5, p0, Ldolphin/webkit/bv;->n:F

    .line 364
    iput v5, p0, Ldolphin/webkit/bv;->p:F

    .line 365
    iput v5, p0, Ldolphin/webkit/bv;->r:F

    goto :goto_0

    .line 368
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Ldolphin/webkit/bv;->v:I

    .line 369
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/webkit/bv;->s:J

    .line 370
    iput v7, p0, Ldolphin/webkit/bv;->t:F

    .line 372
    iget v0, p0, Ldolphin/webkit/bv;->g:F

    iput v0, p0, Ldolphin/webkit/bv;->k:F

    .line 373
    iget v0, p0, Ldolphin/webkit/bv;->h:F

    iput v0, p0, Ldolphin/webkit/bv;->m:F

    .line 374
    iget v0, p0, Ldolphin/webkit/bv;->i:F

    iput v0, p0, Ldolphin/webkit/bv;->o:F

    .line 375
    iget v0, p0, Ldolphin/webkit/bv;->j:F

    iput v0, p0, Ldolphin/webkit/bv;->q:F

    .line 378
    iput v5, p0, Ldolphin/webkit/bv;->l:F

    .line 379
    iput v5, p0, Ldolphin/webkit/bv;->n:F

    .line 380
    iput v5, p0, Ldolphin/webkit/bv;->p:F

    .line 381
    iput v5, p0, Ldolphin/webkit/bv;->r:F

    goto :goto_0

    .line 386
    :pswitch_2
    iget v0, p0, Ldolphin/webkit/bv;->r:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    iget v0, p0, Ldolphin/webkit/bv;->r:F

    iget v2, p0, Ldolphin/webkit/bv;->r:F

    mul-float/2addr v0, v2

    div-float v0, v6, v0

    .line 389
    :goto_1
    iget v2, p0, Ldolphin/webkit/bv;->m:F

    iget v3, p0, Ldolphin/webkit/bv;->n:F

    iget v4, p0, Ldolphin/webkit/bv;->m:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Ldolphin/webkit/bv;->h:F

    .line 392
    iput v8, p0, Ldolphin/webkit/bv;->v:I

    goto :goto_0

    .line 386
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 395
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/bv;->v:I

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(F)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40e00000

    const/high16 v6, 0x3f800000

    const v5, 0x3f4ccccd

    const/4 v4, 0x0

    .line 175
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 176
    iget v2, p0, Ldolphin/webkit/bv;->v:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Ldolphin/webkit/bv;->s:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Ldolphin/webkit/bv;->t:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 214
    :goto_0
    return-void

    .line 179
    :cond_0
    iget v2, p0, Ldolphin/webkit/bv;->v:I

    if-eq v2, v8, :cond_1

    .line 180
    iput v6, p0, Ldolphin/webkit/bv;->j:F

    .line 182
    :cond_1
    iput v8, p0, Ldolphin/webkit/bv;->v:I

    .line 184
    iput-wide v0, p0, Ldolphin/webkit/bv;->s:J

    .line 185
    const/high16 v0, 0x43270000

    iput v0, p0, Ldolphin/webkit/bv;->t:F

    .line 187
    iget v0, p0, Ldolphin/webkit/bv;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Ldolphin/webkit/bv;->w:F

    .line 188
    iget v0, p0, Ldolphin/webkit/bv;->w:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 190
    const v1, 0x3f19999a

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Ldolphin/webkit/bv;->k:F

    iput v1, p0, Ldolphin/webkit/bv;->g:F

    .line 191
    const/high16 v1, 0x3f000000

    mul-float/2addr v0, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/bv;->m:F

    iput v0, p0, Ldolphin/webkit/bv;->h:F

    .line 194
    iget v0, p0, Ldolphin/webkit/bv;->i:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f8ccccd

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/bv;->o:F

    iput v0, p0, Ldolphin/webkit/bv;->i:F

    .line 198
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 199
    cmpl-float v1, p1, v4

    if-lez v1, :cond_2

    iget v1, p0, Ldolphin/webkit/bv;->w:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 200
    neg-float v0, v0

    .line 202
    :cond_2
    iget v1, p0, Ldolphin/webkit/bv;->w:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    .line 203
    iput v4, p0, Ldolphin/webkit/bv;->j:F

    .line 207
    :cond_3
    const/high16 v1, 0x40800000

    iget v2, p0, Ldolphin/webkit/bv;->j:F

    mul-float/2addr v0, v7

    add-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/bv;->q:F

    iput v0, p0, Ldolphin/webkit/bv;->j:F

    .line 210
    iget v0, p0, Ldolphin/webkit/bv;->g:F

    iput v0, p0, Ldolphin/webkit/bv;->l:F

    .line 211
    iget v0, p0, Ldolphin/webkit/bv;->h:F

    iput v0, p0, Ldolphin/webkit/bv;->n:F

    .line 212
    iget v0, p0, Ldolphin/webkit/bv;->i:F

    iput v0, p0, Ldolphin/webkit/bv;->p:F

    .line 213
    iget v0, p0, Ldolphin/webkit/bv;->j:F

    iput v0, p0, Ldolphin/webkit/bv;->r:F

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000

    const/4 v4, 0x0

    .line 255
    const/4 v0, 0x2

    iput v0, p0, Ldolphin/webkit/bv;->v:I

    .line 256
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 258
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ldolphin/webkit/bv;->s:J

    .line 259
    const v1, 0x3dcccccd

    int-to-float v2, v0

    const v3, 0x3cf5c28f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/bv;->t:F

    .line 263
    iput v4, p0, Ldolphin/webkit/bv;->k:F

    .line 264
    iput v4, p0, Ldolphin/webkit/bv;->m:F

    iput v4, p0, Ldolphin/webkit/bv;->h:F

    .line 267
    iput v5, p0, Ldolphin/webkit/bv;->o:F

    .line 268
    iput v4, p0, Ldolphin/webkit/bv;->q:F

    .line 272
    const/4 v1, 0x0

    mul-int/lit8 v2, v0, 0x8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ldolphin/webkit/bv;->l:F

    .line 274
    mul-int/lit8 v1, v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Ldolphin/webkit/bv;->n:F

    .line 281
    const v1, 0x3ccccccd

    div-int/lit8 v2, v0, 0x64

    mul-int/2addr v2, v0

    int-to-float v2, v2

    const v3, 0x391d4952

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3fe00000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Ldolphin/webkit/bv;->r:F

    .line 283
    iget v1, p0, Ldolphin/webkit/bv;->o:F

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const v2, 0x3727c5ac

    mul-float/2addr v0, v2

    const v2, 0x3f4ccccd

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/bv;->p:F

    .line 285
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Ldolphin/webkit/bv;->c:I

    .line 142
    iput p2, p0, Ldolphin/webkit/bv;->d:I

    .line 143
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Ldolphin/webkit/bv;->v:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 9

    .prologue
    const/high16 v8, 0x437f0000

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0}, Ldolphin/webkit/bv;->c()V

    .line 301
    iget-object v1, p0, Ldolphin/webkit/bv;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 302
    iget-object v2, p0, Ldolphin/webkit/bv;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 303
    iget-object v2, p0, Ldolphin/webkit/bv;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 304
    iget-object v3, p0, Ldolphin/webkit/bv;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 306
    iget-object v4, p0, Ldolphin/webkit/bv;->b:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Ldolphin/webkit/bv;->i:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 308
    int-to-float v4, v2

    iget v5, p0, Ldolphin/webkit/bv;->j:F

    mul-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v3, v3

    div-float v3, v4, v3

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    int-to-float v2, v2

    const/high16 v4, 0x40800000

    mul-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    .line 311
    iget v3, p0, Ldolphin/webkit/bv;->c:I

    iget v4, p0, Ldolphin/webkit/bv;->f:I

    if-ge v3, v4, :cond_1

    .line 313
    iget v3, p0, Ldolphin/webkit/bv;->c:I

    iget v4, p0, Ldolphin/webkit/bv;->f:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 314
    iget-object v4, p0, Ldolphin/webkit/bv;->b:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Ldolphin/webkit/bv;->c:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v3, v0, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 320
    :goto_0
    iget-object v2, p0, Ldolphin/webkit/bv;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    iget-object v2, p0, Ldolphin/webkit/bv;->a:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Ldolphin/webkit/bv;->g:F

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 324
    int-to-float v1, v1

    iget v2, p0, Ldolphin/webkit/bv;->h:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 325
    iget v2, p0, Ldolphin/webkit/bv;->c:I

    iget v3, p0, Ldolphin/webkit/bv;->f:I

    if-ge v2, v3, :cond_2

    .line 327
    iget v2, p0, Ldolphin/webkit/bv;->c:I

    iget v3, p0, Ldolphin/webkit/bv;->f:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 328
    iget-object v3, p0, Ldolphin/webkit/bv;->a:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Ldolphin/webkit/bv;->c:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    :goto_1
    iget-object v1, p0, Ldolphin/webkit/bv;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    iget v1, p0, Ldolphin/webkit/bv;->v:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 317
    :cond_1
    iget-object v3, p0, Ldolphin/webkit/bv;->b:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Ldolphin/webkit/bv;->c:I

    invoke-virtual {v3, v0, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v2, p0, Ldolphin/webkit/bv;->a:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Ldolphin/webkit/bv;->c:I

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iput v2, p0, Ldolphin/webkit/bv;->w:F

    .line 225
    iget v0, p0, Ldolphin/webkit/bv;->v:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ldolphin/webkit/bv;->v:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Ldolphin/webkit/bv;->v:I

    .line 230
    iget v0, p0, Ldolphin/webkit/bv;->g:F

    iput v0, p0, Ldolphin/webkit/bv;->k:F

    .line 231
    iget v0, p0, Ldolphin/webkit/bv;->h:F

    iput v0, p0, Ldolphin/webkit/bv;->m:F

    .line 232
    iget v0, p0, Ldolphin/webkit/bv;->i:F

    iput v0, p0, Ldolphin/webkit/bv;->o:F

    .line 233
    iget v0, p0, Ldolphin/webkit/bv;->j:F

    iput v0, p0, Ldolphin/webkit/bv;->q:F

    .line 235
    iput v2, p0, Ldolphin/webkit/bv;->l:F

    .line 236
    iput v2, p0, Ldolphin/webkit/bv;->n:F

    .line 237
    iput v2, p0, Ldolphin/webkit/bv;->p:F

    .line 238
    iput v2, p0, Ldolphin/webkit/bv;->r:F

    .line 240
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/webkit/bv;->s:J

    .line 241
    const/high16 v0, 0x447a0000

    iput v0, p0, Ldolphin/webkit/bv;->t:F

    goto :goto_0
.end method
