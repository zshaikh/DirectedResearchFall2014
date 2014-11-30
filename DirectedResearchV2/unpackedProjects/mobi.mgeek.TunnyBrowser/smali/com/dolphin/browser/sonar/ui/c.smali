.class Lcom/dolphin/browser/sonar/ui/c;
.super Ljava/lang/Object;
.source "AnimTextFrame.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

.field private b:F

.field private c:F

.field private d:F

.field private e:Lcom/dolphin/browser/sonar/ui/b;

.field private final f:Ljava/lang/String;

.field private g:Landroid/view/animation/Interpolator;

.field private h:J

.field private i:J

.field private j:Z

.field private final k:Landroid/graphics/Paint;

.field private final l:F

.field private m:F


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lcom/dolphin/browser/sonar/ui/c;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/c;->j:Z

    .line 319
    iput-object p2, p0, Lcom/dolphin/browser/sonar/ui/c;->f:Ljava/lang/String;

    .line 320
    iput-object p3, p0, Lcom/dolphin/browser/sonar/ui/c;->k:Landroid/graphics/Paint;

    .line 321
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/c;->l:F

    .line 322
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sonar/ui/c;)F
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/c;->l:F

    return v0
.end method

.method private a(J)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 325
    iget-wide v1, p0, Lcom/dolphin/browser/sonar/ui/c;->h:J

    sub-long v1, p1, v1

    .line 326
    iget-wide v3, p0, Lcom/dolphin/browser/sonar/ui/c;->i:J

    .line 327
    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 328
    iget-boolean v1, p0, Lcom/dolphin/browser/sonar/ui/c;->j:Z

    if-nez v1, :cond_0

    .line 329
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/c;->j:Z

    .line 331
    :cond_0
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    .line 333
    :cond_1
    iget-object v5, p0, Lcom/dolphin/browser/sonar/ui/c;->g:Landroid/view/animation/Interpolator;

    long-to-float v1, v1

    long-to-float v2, v3

    div-float/2addr v1, v2

    invoke-interface {v5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 334
    const/high16 v2, 0x3f800000

    const/high16 v3, -0x40800000

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dolphin/browser/sonar/ui/c;->b:F

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/c;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/sonar/ui/c;)Z
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/dolphin/browser/sonar/ui/c;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/sonar/ui/c;)F
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/c;->d:F

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/sonar/ui/c;->h:J

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/c;->j:Z

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/c;->d:F

    .line 316
    return-void
.end method

.method a(F)V
    .locals 0

    .prologue
    .line 297
    iput p1, p0, Lcom/dolphin/browser/sonar/ui/c;->m:F

    .line 298
    return-void
.end method

.method a(FLcom/dolphin/browser/sonar/ui/b;Landroid/view/animation/Interpolator;)V
    .locals 4

    .prologue
    .line 301
    iput p1, p0, Lcom/dolphin/browser/sonar/ui/c;->b:F

    .line 302
    iput-object p2, p0, Lcom/dolphin/browser/sonar/ui/c;->e:Lcom/dolphin/browser/sonar/ui/b;

    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/c;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-static {v0}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->h(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p2}, Lcom/dolphin/browser/sonar/ui/b;->b()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p2}, Lcom/dolphin/browser/sonar/ui/b;->a(Lcom/dolphin/browser/sonar/ui/b;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/c;->c:F

    .line 304
    iput-object p3, p0, Lcom/dolphin/browser/sonar/ui/c;->g:Landroid/view/animation/Interpolator;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/c;->j:Z

    .line 306
    const/high16 v0, 0x3f800000

    sub-float v0, p1, v0

    const/high16 v1, -0x40800000

    div-float/2addr v0, v1

    invoke-static {p2}, Lcom/dolphin/browser/sonar/ui/b;->b(Lcom/dolphin/browser/sonar/ui/b;)J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/dolphin/browser/sonar/ui/c;->h:J

    .line 308
    invoke-static {p2}, Lcom/dolphin/browser/sonar/ui/b;->b(Lcom/dolphin/browser/sonar/ui/b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/sonar/ui/c;->i:J

    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/c;->e:Lcom/dolphin/browser/sonar/ui/b;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/sonar/ui/b;->a(Lcom/dolphin/browser/sonar/ui/c;)V

    .line 310
    return-void
.end method

.method a(Landroid/graphics/Canvas;IIJ)V
    .locals 4

    .prologue
    .line 343
    invoke-direct {p0, p4, p5}, Lcom/dolphin/browser/sonar/ui/c;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/c;->b:F

    int-to-float v1, p2

    iget v2, p0, Lcom/dolphin/browser/sonar/ui/c;->m:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/sonar/ui/c;->m:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/sonar/ui/c;->d:F

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/c;->f:Ljava/lang/String;

    iget v1, p0, Lcom/dolphin/browser/sonar/ui/c;->d:F

    iget v2, p0, Lcom/dolphin/browser/sonar/ui/c;->c:F

    int-to-float v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/sonar/ui/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
