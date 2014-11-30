.class public Ldolphin/webkit/ez;
.super Ljava/lang/Object;
.source "OverScroller.java"


# static fields
.field private static f:F

.field private static g:F


# instance fields
.field private a:I

.field private final b:Ldolphin/webkit/fa;

.field private final c:Ldolphin/webkit/fa;

.field private d:Landroid/view/animation/Interpolator;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 1002
    const/high16 v0, 0x41000000

    sput v0, Ldolphin/webkit/ez;->f:F

    .line 1004
    sput v1, Ldolphin/webkit/ez;->g:F

    .line 1005
    invoke-static {v1}, Ldolphin/webkit/ez;->a(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Ldolphin/webkit/ez;->g:F

    .line 1006
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p5}, Ldolphin/webkit/ez;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Ldolphin/webkit/ez;->d:Landroid/view/animation/Interpolator;

    .line 79
    iput-boolean p3, p0, Ldolphin/webkit/ez;->e:Z

    .line 80
    new-instance v0, Ldolphin/webkit/fa;

    invoke-direct {v0}, Ldolphin/webkit/fa;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    .line 81
    new-instance v0, Ldolphin/webkit/fa;

    invoke-direct {v0}, Ldolphin/webkit/fa;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    .line 83
    invoke-static {p1}, Ldolphin/webkit/fa;->a(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method static a(F)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    .line 1009
    sget v0, Ldolphin/webkit/ez;->f:F

    mul-float/2addr v0, p0

    .line 1010
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 1011
    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 1017
    :goto_0
    sget v1, Ldolphin/webkit/ez;->g:F

    mul-float/2addr v0, v1

    .line 1018
    return v0

    .line 1013
    :cond_0
    const v1, 0x3ebc5ab2

    .line 1014
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 1015
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v0, p1}, Ldolphin/webkit/fa;->b(I)V

    .line 255
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v0, p1}, Ldolphin/webkit/fa;->b(I)V

    .line 256
    return-void
.end method

.method public a(IIIII)V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/ez;->a:I

    .line 383
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v0, p1, p3, p5}, Ldolphin/webkit/fa;->a(III)V

    .line 384
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v0, p2, p4, p5}, Ldolphin/webkit/fa;->a(III)V

    .line 385
    return-void
.end method

.method public a(IIIIIIIIII)V
    .locals 7

    .prologue
    .line 443
    iget-boolean v0, p0, Ldolphin/webkit/ez;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldolphin/webkit/ez;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->c(Ldolphin/webkit/fa;)F

    move-result v0

    .line 445
    iget-object v1, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-static {v1}, Ldolphin/webkit/fa;->c(Ldolphin/webkit/fa;)F

    move-result v1

    .line 446
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    int-to-float v2, p4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 448
    int-to-float v2, p3

    add-float/2addr v0, v2

    float-to-int p3, v0

    .line 449
    int-to-float v0, p4

    add-float/2addr v0, v1

    float-to-int p4, v0

    move v2, p3

    .line 453
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Ldolphin/webkit/ez;->a:I

    .line 454
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    const/4 v6, 0x0

    move v1, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v6}, Ldolphin/webkit/fa;->a(IIIIII)V

    .line 455
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    const/4 v6, 0x1

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Ldolphin/webkit/fa;->a(IIIIII)V

    .line 456
    return-void

    :cond_0
    move v2, p3

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->a(Ldolphin/webkit/fa;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->a(Ldolphin/webkit/fa;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIIIII)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 400
    iput v0, p0, Ldolphin/webkit/ez;->a:I

    .line 403
    iget-object v1, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v1, p1, p3, p4}, Ldolphin/webkit/fa;->b(III)Z

    move-result v1

    .line 404
    iget-object v2, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v2, p2, p5, p6}, Ldolphin/webkit/fa;->b(III)Z

    move-result v2

    .line 405
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->b(Ldolphin/webkit/fa;)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v0, p1}, Ldolphin/webkit/fa;->a(I)V

    .line 274
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->b(Ldolphin/webkit/fa;)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v0, p1}, Ldolphin/webkit/fa;->a(I)V

    .line 292
    return-void
.end method

.method public d()F
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->c(Ldolphin/webkit/fa;)F

    move-result v0

    iget-object v1, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v1}, Ldolphin/webkit/fa;->c(Ldolphin/webkit/fa;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 184
    iget-object v1, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-static {v1}, Ldolphin/webkit/fa;->c(Ldolphin/webkit/fa;)F

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-static {v2}, Ldolphin/webkit/fa;->c(Ldolphin/webkit/fa;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 185
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->d(Ldolphin/webkit/fa;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->d(Ldolphin/webkit/fa;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 5

    .prologue
    .line 299
    invoke-virtual {p0}, Ldolphin/webkit/ez;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 347
    :goto_0
    return v0

    .line 303
    :cond_0
    iget v0, p0, Ldolphin/webkit/ez;->a:I

    packed-switch v0, :pswitch_data_0

    .line 347
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 305
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v2}, Ldolphin/webkit/fa;->f(Ldolphin/webkit/fa;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 310
    iget-object v2, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v2}, Ldolphin/webkit/fa;->e(Ldolphin/webkit/fa;)I

    move-result v2

    .line 311
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    .line 312
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 314
    iget-object v1, p0, Ldolphin/webkit/ez;->d:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    .line 315
    invoke-static {v0}, Ldolphin/webkit/ez;->a(F)F

    move-result v0

    .line 320
    :goto_2
    iget-object v1, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v1, v0}, Ldolphin/webkit/fa;->a(F)V

    .line 321
    iget-object v1, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v1, v0}, Ldolphin/webkit/fa;->a(F)V

    goto :goto_1

    .line 317
    :cond_2
    iget-object v1, p0, Ldolphin/webkit/ez;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    .line 323
    :cond_3
    invoke-virtual {p0}, Ldolphin/webkit/ez;->h()V

    goto :goto_1

    .line 328
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->a(Ldolphin/webkit/fa;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 329
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v0}, Ldolphin/webkit/fa;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 330
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v0}, Ldolphin/webkit/fa;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 331
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v0}, Ldolphin/webkit/fa;->a()V

    .line 336
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-static {v0}, Ldolphin/webkit/fa;->a(Ldolphin/webkit/fa;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v0}, Ldolphin/webkit/fa;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v0}, Ldolphin/webkit/fa;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v0}, Ldolphin/webkit/fa;->a()V

    goto :goto_1

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public h()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Ldolphin/webkit/ez;->b:Ldolphin/webkit/fa;

    invoke-virtual {v0}, Ldolphin/webkit/fa;->a()V

    .line 521
    iget-object v0, p0, Ldolphin/webkit/ez;->c:Ldolphin/webkit/fa;

    invoke-virtual {v0}, Ldolphin/webkit/fa;->a()V

    .line 522
    return-void
.end method
