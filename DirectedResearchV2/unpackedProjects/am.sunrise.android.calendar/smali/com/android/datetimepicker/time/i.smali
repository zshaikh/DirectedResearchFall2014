.class public Lcom/android/datetimepicker/time/i;
.super Landroid/view/View;
.source "RadialTextsView.java"


# instance fields
.field private A:[F

.field private B:F

.field private C:F

.field private D:F

.field private E:Lcom/android/datetimepicker/time/k;

.field a:Landroid/animation/ObjectAnimator;

.field b:Landroid/animation/ObjectAnimator;

.field private final c:Landroid/graphics/Paint;

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/Typeface;

.field private g:Landroid/graphics/Typeface;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:I

.field private t:F

.field private u:Z

.field private v:F

.field private w:F

.field private x:[F

.field private y:[F

.field private z:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/i;->e:Z

    .line 80
    return-void
.end method

.method private a()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000

    .line 291
    const v0, 0x3e4ccccd

    .line 292
    const/16 v1, 0x1f4

    .line 295
    invoke-static {v9, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 296
    iget v3, p0, Lcom/android/datetimepicker/time/i;->C:F

    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 297
    iget v4, p0, Lcom/android/datetimepicker/time/i;->D:F

    invoke-static {v8, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 298
    const-string v5, "animationRadiusMultiplier"

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v2, v6, v10

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 301
    invoke-static {v9, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 302
    invoke-static {v8, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 303
    const-string v5, "alpha"

    new-array v6, v12, [Landroid/animation/Keyframe;

    aput-object v3, v6, v10

    aput-object v4, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 305
    new-array v4, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v10

    aput-object v3, v4, v11

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/datetimepicker/time/i;->a:Landroid/animation/ObjectAnimator;

    .line 307
    iget-object v2, p0, Lcom/android/datetimepicker/time/i;->a:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->E:Lcom/android/datetimepicker/time/k;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    const/high16 v2, 0x3e800000

    .line 313
    add-float v3, v8, v2

    .line 314
    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 315
    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 316
    sub-float v2, v8, v1

    mul-float/2addr v0, v2

    sub-float v0, v8, v0

    .line 318
    iget v2, p0, Lcom/android/datetimepicker/time/i;->D:F

    invoke-static {v9, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 319
    iget v4, p0, Lcom/android/datetimepicker/time/i;->D:F

    invoke-static {v1, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 320
    iget v5, p0, Lcom/android/datetimepicker/time/i;->C:F

    invoke-static {v0, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 321
    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 322
    const-string v6, "animationRadiusMultiplier"

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v2, v7, v10

    aput-object v4, v7, v11

    aput-object v0, v7, v12

    const/4 v0, 0x3

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 325
    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 326
    invoke-static {v1, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 327
    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 328
    const-string v5, "alpha"

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v2, v6, v10

    aput-object v1, v6, v11

    aput-object v4, v6, v12

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 330
    new-array v2, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v10

    aput-object v1, v2, v11

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/time/i;->b:Landroid/animation/ObjectAnimator;

    .line 332
    iget-object v0, p0, Lcom/android/datetimepicker/time/i;->b:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/time/i;->E:Lcom/android/datetimepicker/time/k;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    return-void
.end method

.method private a(FFFF[F[F)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    .line 240
    .line 242
    const-wide/high16 v0, 0x4008000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v4

    .line 244
    div-float v1, p1, v4

    .line 245
    iget-object v2, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 247
    iget-object v2, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float v2, p3, v2

    .line 249
    sub-float v3, v2, p1

    aput v3, p5, v5

    .line 250
    sub-float v3, p2, p1

    aput v3, p6, v5

    .line 251
    sub-float v3, v2, v0

    aput v3, p5, v6

    .line 252
    sub-float v3, p2, v0

    aput v3, p6, v6

    .line 253
    sub-float v3, v2, v1

    aput v3, p5, v7

    .line 254
    sub-float v3, p2, v1

    aput v3, p6, v7

    .line 255
    aput v2, p5, v8

    .line 256
    aput p2, p6, v8

    .line 257
    const/4 v3, 0x4

    add-float v4, v2, v1

    aput v4, p5, v3

    .line 258
    const/4 v3, 0x4

    add-float/2addr v1, p2

    aput v1, p6, v3

    .line 259
    const/4 v1, 0x5

    add-float v3, v2, v0

    aput v3, p5, v1

    .line 260
    const/4 v1, 0x5

    add-float/2addr v0, p2

    aput v0, p6, v1

    .line 261
    const/4 v0, 0x6

    add-float v1, v2, p1

    aput v1, p5, v0

    .line 262
    const/4 v0, 0x6

    add-float v1, p2, p1

    aput v1, p6, v0

    .line 263
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 270
    iget-object v0, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    iget-object v0, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 272
    const/4 v0, 0x0

    aget-object v0, p4, v0

    aget v1, p5, v6

    const/4 v2, 0x0

    aget v2, p6, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    aget-object v0, p4, v4

    aget v1, p5, v7

    aget v2, p6, v4

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    aget-object v0, p4, v5

    aget v1, p5, v8

    aget v2, p6, v5

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    aget-object v0, p4, v6

    const/4 v1, 0x6

    aget v1, p5, v1

    aget v2, p6, v6

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    aget-object v0, p4, v7

    aget v1, p5, v8

    aget v2, p6, v7

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 277
    aget-object v0, p4, v8

    aget v1, p5, v7

    aget v2, p6, v8

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    const/4 v0, 0x6

    aget-object v0, p4, v0

    aget v1, p5, v6

    const/4 v2, 0x6

    aget v2, p6, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    const/4 v0, 0x7

    aget-object v0, p4, v0

    aget v1, p5, v5

    aget v2, p6, v8

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    const/16 v0, 0x8

    aget-object v0, p4, v0

    aget v1, p5, v4

    aget v2, p6, v7

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 281
    const/16 v0, 0x9

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    aget v2, p6, v6

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    const/16 v0, 0xa

    aget-object v0, p4, v0

    aget v1, p5, v4

    aget v2, p6, v5

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    const/16 v0, 0xb

    aget-object v0, p4, v0

    aget v1, p5, v5

    aget v2, p6, v4

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    if-eqz p2, :cond_0

    .line 150
    sget v1, Lcom/android/datetimepicker/d;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    return-void

    .line 152
    :cond_0
    sget v1, Lcom/android/datetimepicker/d;->numbers_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000

    const/4 v5, 0x7

    const/4 v1, 0x1

    .line 84
    iget-boolean v3, p0, Lcom/android/datetimepicker/time/i;->e:Z

    if-eqz v3, :cond_0

    .line 85
    const-string v0, "RadialTextsView"

    const-string v1, "This RadialTextsView may only be initialized once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 90
    :cond_0
    sget v3, Lcom/android/datetimepicker/d;->numbers_text_color:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 91
    iget-object v4, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    sget v3, Lcom/android/datetimepicker/i;->radial_numbers_typeface:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/datetimepicker/time/i;->f:Landroid/graphics/Typeface;

    .line 94
    sget v3, Lcom/android/datetimepicker/i;->sans_serif:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/datetimepicker/time/i;->g:Landroid/graphics/Typeface;

    .line 96
    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 99
    iput-object p2, p0, Lcom/android/datetimepicker/time/i;->h:[Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/android/datetimepicker/time/i;->i:[Ljava/lang/String;

    .line 101
    iput-boolean p4, p0, Lcom/android/datetimepicker/time/i;->j:Z

    .line 102
    if-eqz p3, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/datetimepicker/time/i;->k:Z

    .line 105
    if-eqz p4, :cond_3

    .line 106
    sget v0, Lcom/android/datetimepicker/i;->circle_radius_multiplier_24HourMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->l:F

    .line 116
    :goto_1
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/datetimepicker/time/i;->x:[F

    .line 117
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/datetimepicker/time/i;->y:[F

    .line 118
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->k:Z

    if-eqz v0, :cond_4

    .line 119
    sget v0, Lcom/android/datetimepicker/i;->numbers_radius_multiplier_outer:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->n:F

    .line 121
    sget v0, Lcom/android/datetimepicker/i;->text_size_multiplier_outer:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->p:F

    .line 123
    sget v0, Lcom/android/datetimepicker/i;->numbers_radius_multiplier_inner:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->o:F

    .line 125
    sget v0, Lcom/android/datetimepicker/i;->text_size_multiplier_inner:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->q:F

    .line 128
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/datetimepicker/time/i;->z:[F

    .line 129
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/datetimepicker/time/i;->A:[F

    .line 137
    :goto_2
    iput v6, p0, Lcom/android/datetimepicker/time/i;->B:F

    .line 138
    const v3, 0x3d4ccccd

    if-eqz p5, :cond_5

    move v0, v2

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    iput v0, p0, Lcom/android/datetimepicker/time/i;->C:F

    .line 139
    const v0, 0x3e99999a

    if-eqz p5, :cond_2

    move v2, v1

    :cond_2
    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    iput v0, p0, Lcom/android/datetimepicker/time/i;->D:F

    .line 140
    new-instance v0, Lcom/android/datetimepicker/time/k;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/datetimepicker/time/k;-><init>(Lcom/android/datetimepicker/time/i;Lcom/android/datetimepicker/time/j;)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/i;->E:Lcom/android/datetimepicker/time/k;

    .line 142
    iput-boolean v1, p0, Lcom/android/datetimepicker/time/i;->u:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/datetimepicker/time/i;->e:Z

    goto/16 :goto_0

    .line 109
    :cond_3
    sget v0, Lcom/android/datetimepicker/i;->circle_radius_multiplier:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->l:F

    .line 111
    sget v0, Lcom/android/datetimepicker/i;->ampm_circle_radius_multiplier:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->m:F

    goto/16 :goto_1

    .line 131
    :cond_4
    sget v0, Lcom/android/datetimepicker/i;->numbers_radius_multiplier_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->n:F

    .line 133
    sget v0, Lcom/android/datetimepicker/i;->text_size_multiplier_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->p:F

    goto :goto_2

    :cond_5
    move v0, v1

    .line 138
    goto :goto_3
.end method

.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/datetimepicker/time/i;->a:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 337
    :cond_0
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/i;->a:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/datetimepicker/time/i;->b:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 346
    :cond_0
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/i;->b:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 175
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/i;->getWidth()I

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->e:Z

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->d:Z

    if-nez v0, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/i;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/i;->r:I

    .line 182
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/i;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/i;->s:I

    .line 183
    iget v0, p0, Lcom/android/datetimepicker/time/i;->r:I

    iget v1, p0, Lcom/android/datetimepicker/time/i;->s:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/i;->l:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/datetimepicker/time/i;->t:F

    .line 184
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->j:Z

    if-nez v0, :cond_2

    .line 188
    iget v0, p0, Lcom/android/datetimepicker/time/i;->t:F

    iget v1, p0, Lcom/android/datetimepicker/time/i;->m:F

    mul-float/2addr v0, v1

    .line 189
    iget v1, p0, Lcom/android/datetimepicker/time/i;->s:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/datetimepicker/time/i;->s:I

    .line 192
    :cond_2
    iget v0, p0, Lcom/android/datetimepicker/time/i;->t:F

    iget v1, p0, Lcom/android/datetimepicker/time/i;->p:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/datetimepicker/time/i;->v:F

    .line 193
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->k:Z

    if-eqz v0, :cond_3

    .line 194
    iget v0, p0, Lcom/android/datetimepicker/time/i;->t:F

    iget v1, p0, Lcom/android/datetimepicker/time/i;->q:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/datetimepicker/time/i;->w:F

    .line 198
    :cond_3
    invoke-direct {p0}, Lcom/android/datetimepicker/time/i;->a()V

    .line 200
    iput-boolean v3, p0, Lcom/android/datetimepicker/time/i;->u:Z

    .line 201
    iput-boolean v3, p0, Lcom/android/datetimepicker/time/i;->d:Z

    .line 205
    :cond_4
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->u:Z

    if-eqz v0, :cond_6

    .line 206
    iget v0, p0, Lcom/android/datetimepicker/time/i;->t:F

    iget v1, p0, Lcom/android/datetimepicker/time/i;->n:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/datetimepicker/time/i;->B:F

    mul-float/2addr v1, v0

    .line 210
    iget v0, p0, Lcom/android/datetimepicker/time/i;->r:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/datetimepicker/time/i;->s:I

    int-to-float v3, v0

    iget v4, p0, Lcom/android/datetimepicker/time/i;->v:F

    iget-object v5, p0, Lcom/android/datetimepicker/time/i;->x:[F

    iget-object v6, p0, Lcom/android/datetimepicker/time/i;->y:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/i;->a(FFFF[F[F)V

    .line 212
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->k:Z

    if-eqz v0, :cond_5

    .line 214
    iget v0, p0, Lcom/android/datetimepicker/time/i;->t:F

    iget v1, p0, Lcom/android/datetimepicker/time/i;->o:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/datetimepicker/time/i;->B:F

    mul-float/2addr v1, v0

    .line 216
    iget v0, p0, Lcom/android/datetimepicker/time/i;->r:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/datetimepicker/time/i;->s:I

    int-to-float v3, v0

    iget v4, p0, Lcom/android/datetimepicker/time/i;->w:F

    iget-object v5, p0, Lcom/android/datetimepicker/time/i;->z:[F

    iget-object v6, p0, Lcom/android/datetimepicker/time/i;->A:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/i;->a(FFFF[F[F)V

    .line 219
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/i;->u:Z

    .line 223
    :cond_6
    iget v2, p0, Lcom/android/datetimepicker/time/i;->v:F

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->f:Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/android/datetimepicker/time/i;->h:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/datetimepicker/time/i;->y:[F

    iget-object v6, p0, Lcom/android/datetimepicker/time/i;->x:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/i;->a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    .line 224
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/i;->k:Z

    if-eqz v0, :cond_0

    .line 225
    iget v2, p0, Lcom/android/datetimepicker/time/i;->w:F

    iget-object v3, p0, Lcom/android/datetimepicker/time/i;->g:Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/android/datetimepicker/time/i;->i:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/datetimepicker/time/i;->A:[F

    iget-object v6, p0, Lcom/android/datetimepicker/time/i;->z:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/i;->a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    goto/16 :goto_0
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 1

    .prologue
    .line 169
    iput p1, p0, Lcom/android/datetimepicker/time/i;->B:F

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/i;->u:Z

    .line 171
    return-void
.end method
