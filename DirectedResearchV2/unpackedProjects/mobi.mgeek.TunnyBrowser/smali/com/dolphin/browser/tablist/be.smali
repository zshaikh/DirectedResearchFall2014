.class public Lcom/dolphin/browser/tablist/be;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# static fields
.field private static a:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private final b:Lcom/dolphin/browser/tablist/bj;

.field private final c:I

.field private final d:Landroid/view/VelocityTracker;

.field private e:F

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:F

.field private final k:Lcom/dolphin/browser/tablist/aw;

.field private l:Lcom/dolphin/browser/tablist/ax;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/dolphin/browser/tablist/be;->a:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(ILcom/dolphin/browser/tablist/bj;FF)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->a:Lcom/dolphin/browser/tablist/ax;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/be;->l:Lcom/dolphin/browser/tablist/ax;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->m:Z

    .line 63
    iput-object p2, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    .line 64
    iput p1, p0, Lcom/dolphin/browser/tablist/be;->c:I

    .line 65
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/be;->d:Landroid/view/VelocityTracker;

    .line 66
    iput p3, p0, Lcom/dolphin/browser/tablist/be;->j:F

    .line 67
    new-instance v0, Lcom/dolphin/browser/tablist/aw;

    invoke-direct {v0, p4}, Lcom/dolphin/browser/tablist/aw;-><init>(F)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/be;->k:Lcom/dolphin/browser/tablist/aw;

    .line 68
    return-void
.end method

.method private a(Landroid/view/VelocityTracker;)F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/be;)Lcom/dolphin/browser/tablist/bj;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/be;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/dolphin/browser/tablist/be;->n:Z

    return p1
.end method

.method private b(Landroid/view/VelocityTracker;)F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/bj;->j(Landroid/view/View;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/bj;->j(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/tablist/bj;->b(Landroid/view/View;F)V

    .line 106
    return-void
.end method

.method private d(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private d(Landroid/view/View;F)Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/bj;->j(Landroid/view/View;)F

    move-result v0

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 479
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    div-float/2addr v0, v1

    div-float v1, p2, v1

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 481
    return-object v2
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->m(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iput-boolean v3, p0, Lcom/dolphin/browser/tablist/be;->m:Z

    .line 285
    iput-boolean v3, p0, Lcom/dolphin/browser/tablist/be;->f:Z

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 290
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->a:Lcom/dolphin/browser/tablist/ax;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->l:Lcom/dolphin/browser/tablist/ax;

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->k:Lcom/dolphin/browser/tablist/aw;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/aw;->a(Landroid/view/MotionEvent;)V

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->k:Lcom/dolphin/browser/tablist/aw;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/aw;->a()Lcom/dolphin/browser/tablist/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/be;->l:Lcom/dolphin/browser/tablist/ax;

    .line 293
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->c:Lcom/dolphin/browser/tablist/ax;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->l:Lcom/dolphin/browser/tablist/ax;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->f(Landroid/view/View;)V

    .line 296
    iput-boolean v2, p0, Lcom/dolphin/browser/tablist/be;->f:Z

    .line 297
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/tablist/be;->e:F

    goto :goto_0

    .line 299
    :cond_2
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->b:Lcom/dolphin/browser/tablist/ax;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->l:Lcom/dolphin/browser/tablist/ax;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-ne v0, v2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->f(Landroid/view/View;)V

    .line 306
    iput-boolean v2, p0, Lcom/dolphin/browser/tablist/be;->f:Z

    .line 307
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/tablist/be;->e:F

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v0, 0x3f800000

    .line 114
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/View;)F

    move-result v1

    .line 115
    const/high16 v2, 0x3f000000

    mul-float/2addr v2, v1

    .line 117
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;)F

    move-result v3

    .line 118
    mul-float v4, v1, v5

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 119
    mul-float/2addr v1, v5

    sub-float v1, v3, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 128
    :cond_0
    :goto_0
    const v1, 0x3dcccccd

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 120
    :cond_1
    mul-float v4, v1, v0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 121
    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/dolphin/browser/tablist/be;->j:F

    .line 72
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 356
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->n:Z

    if-eqz v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 359
    :cond_0
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/be;->n:Z

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/bj;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 361
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/bj;->e(Landroid/view/View;)Z

    move-result v3

    .line 365
    cmpg-float v0, p2, v4

    if-ltz v0, :cond_2

    cmpl-float v0, p2, v4

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_2

    :cond_1
    cmpl-float v0, p2, v4

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-ne v0, v1, :cond_3

    .line 369
    :cond_2
    invoke-direct {p0, v2}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/View;)F

    move-result v0

    neg-float v0, v0

    move v1, v0

    .line 373
    :goto_1
    const/16 v0, 0x190

    .line 374
    cmpl-float v4, p2, v4

    if-eqz v4, :cond_4

    .line 375
    invoke-direct {p0, v2}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000

    mul-float/2addr v4, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 383
    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/View;F)Landroid/view/animation/Animation;

    move-result-object v1

    .line 384
    sget-object v2, Lcom/dolphin/browser/tablist/be;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 386
    new-instance v2, Lcom/dolphin/browser/tablist/bg;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/tablist/bg;-><init>(Lcom/dolphin/browser/tablist/be;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 403
    iget-object v2, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v2, p1, v1, v3}, Lcom/dolphin/browser/tablist/bj;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V

    .line 404
    new-instance v1, Lcom/dolphin/browser/tablist/bh;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/bh;-><init>(Lcom/dolphin/browser/tablist/be;)V

    add-int/lit16 v0, v0, 0x12c

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 371
    :cond_3
    invoke-direct {p0, v2}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/View;)F

    move-result v0

    move v1, v0

    goto :goto_1

    .line 380
    :cond_4
    const/16 v0, 0xc8

    goto :goto_2
.end method

.method public a(Landroid/view/ViewGroup;F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3f333333

    invoke-direct {v1, v0, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 317
    iget v0, p0, Lcom/dolphin/browser/tablist/be;->c:I

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x43c80000

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 323
    :goto_0
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 324
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 325
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 326
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 327
    new-instance v0, Lcom/dolphin/browser/tablist/bf;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bf;-><init>(Lcom/dolphin/browser/tablist/be;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    return-void

    .line 320
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x3c380000

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 168
    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->f:Z

    return v0

    .line 170
    :pswitch_0
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/be;->f:Z

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/bj;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->e(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->i:Z

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/tablist/be;->e:F

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->k:Lcom/dolphin/browser/tablist/aw;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/aw;->b(Landroid/view/MotionEvent;)V

    .line 180
    sget-object v0, Lcom/dolphin/browser/tablist/ax;->a:Lcom/dolphin/browser/tablist/ax;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/be;->l:Lcom/dolphin/browser/tablist/ax;

    .line 182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->m:Z

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 189
    :pswitch_2
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/be;->f:Z

    .line 190
    iput-object v2, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    .line 191
    iput-object v2, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/bj;->k(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/bj;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/tablist/bj;->e(Landroid/view/View;)Z

    move-result v1

    .line 438
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/View;F)Landroid/view/animation/Animation;

    move-result-object v0

    .line 439
    sget-object v2, Lcom/dolphin/browser/tablist/be;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 441
    new-instance v2, Lcom/dolphin/browser/tablist/bi;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/tablist/bi;-><init>(Lcom/dolphin/browser/tablist/be;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 459
    iget-object v2, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    invoke-interface {v2, p1, v0, v1}, Lcom/dolphin/browser/tablist/bj;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V

    .line 473
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 200
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->n:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->i(Landroid/view/View;)V

    .line 279
    :cond_0
    :goto_0
    return v2

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 205
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/MotionEvent;)V

    .line 207
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->f:Z

    if-nez v0, :cond_3

    move v2, v1

    .line 208
    goto :goto_0

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 213
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 246
    const/high16 v0, 0x44fa0000

    iget v3, p0, Lcom/dolphin/browser/tablist/be;->j:F

    mul-float/2addr v0, v3

    .line 247
    iget-object v3, p0, Lcom/dolphin/browser/tablist/be;->d:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 249
    const/high16 v0, 0x42c80000

    iget v3, p0, Lcom/dolphin/browser/tablist/be;->j:F

    mul-float/2addr v3, v0

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->d:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/VelocityTracker;)F

    move-result v4

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->d:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/be;->b(Landroid/view/VelocityTracker;)F

    move-result v6

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v7, v0

    const-wide v9, 0x3fd999999999999aL

    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/View;)F

    move-result v0

    float-to-double v11, v0

    mul-double/2addr v9, v11

    cmpl-double v0, v7, v9

    if-lez v0, :cond_9

    move v0, v2

    .line 256
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v3, v7, v3

    if-lez v3, :cond_c

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    cmpl-float v3, v4, v5

    if-lez v3, :cond_a

    move v3, v2

    :goto_2
    iget-object v6, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;)F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_b

    move v6, v2

    :goto_3
    if-ne v3, v6, :cond_c

    move v3, v2

    .line 261
    :goto_4
    iget-object v6, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v7, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/dolphin/browser/tablist/bj;->e(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    .line 264
    :cond_5
    if-eqz v1, :cond_e

    .line 266
    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    if-eqz v3, :cond_d

    move v0, v4

    :goto_5
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/View;F)V

    .line 273
    :goto_6
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->i(Landroid/view/View;)V

    goto/16 :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/tablist/be;->e:F

    sub-float v1, v0, v1

    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v3, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/dolphin/browser/tablist/bj;->e(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/be;->d(Landroid/view/View;)F

    move-result v3

    .line 224
    const v0, 0x3e19999a

    mul-float/2addr v0, v3

    .line 225
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_8

    .line 226
    cmpl-float v1, v1, v5

    if-lez v1, :cond_7

    .line 234
    :goto_7
    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/tablist/be;->c(Landroid/view/View;F)V

    .line 235
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/be;->i:Z

    if-eqz v0, :cond_6

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/dolphin/browser/tablist/be;->h:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/View;)F

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/dolphin/browser/tablist/bj;->a(Landroid/view/View;F)V

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/be;->b(Landroid/view/View;)V

    goto/16 :goto_0

    .line 226
    :cond_7
    neg-float v0, v0

    goto :goto_7

    .line 229
    :cond_8
    div-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x3ff921fb54442d18L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    .line 254
    goto/16 :goto_1

    :cond_a
    move v3, v1

    .line 256
    goto/16 :goto_2

    :cond_b
    move v6, v1

    goto/16 :goto_3

    :cond_c
    move v3, v1

    goto/16 :goto_4

    :cond_d
    move v0, v5

    .line 266
    goto :goto_5

    .line 270
    :cond_e
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->b:Lcom/dolphin/browser/tablist/bj;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/bj;->h(Landroid/view/View;)V

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/tablist/be;->g:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/dolphin/browser/tablist/be;->b(Landroid/view/View;F)V

    goto :goto_6

    :cond_f
    move v0, v1

    goto :goto_7

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
