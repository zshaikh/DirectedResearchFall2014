.class final Lcom/e/a/ac;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SVGDrawable.java"


# instance fields
.field a:Lcom/e/a/c;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I


# direct methods
.method constructor <init>(Lcom/e/a/ac;)V
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 493
    iget-object v0, p1, Lcom/e/a/ac;->a:Lcom/e/a/c;

    iput-object v0, p0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    .line 494
    iget v0, p1, Lcom/e/a/ac;->b:I

    iput v0, p0, Lcom/e/a/ac;->b:I

    .line 495
    iget v0, p1, Lcom/e/a/ac;->c:I

    iput v0, p0, Lcom/e/a/ac;->c:I

    .line 496
    iget v0, p1, Lcom/e/a/ac;->d:I

    iput v0, p0, Lcom/e/a/ac;->d:I

    .line 497
    iget v0, p1, Lcom/e/a/ac;->e:I

    iput v0, p0, Lcom/e/a/ac;->e:I

    .line 498
    iget v0, p1, Lcom/e/a/ac;->f:I

    iput v0, p0, Lcom/e/a/ac;->f:I

    .line 499
    return-void
.end method

.method constructor <init>(Lcom/e/a/c;)V
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lcom/e/a/ac;->c:I

    .line 488
    const/16 v0, 0xa0

    iput v0, p0, Lcom/e/a/ac;->d:I

    .line 489
    invoke-direct {p0}, Lcom/e/a/ac;->a()V

    .line 490
    return-void
.end method

.method private static a(III)I
    .locals 2

    .prologue
    const v0, 0xffff

    .line 527
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p2, v0, :cond_0

    if-ne p1, p2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return p0

    :cond_1
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 517
    iget-object v0, p0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    invoke-virtual {v0}, Lcom/e/a/c;->d()I

    move-result v0

    iget v1, p0, Lcom/e/a/ac;->c:I

    iget v2, p0, Lcom/e/a/ac;->d:I

    invoke-static {v0, v1, v2}, Lcom/e/a/ac;->a(III)I

    move-result v0

    iput v0, p0, Lcom/e/a/ac;->e:I

    .line 519
    iget-object v0, p0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    invoke-virtual {v0}, Lcom/e/a/c;->e()I

    move-result v0

    iget v1, p0, Lcom/e/a/ac;->c:I

    iget v2, p0, Lcom/e/a/ac;->d:I

    invoke-static {v0, v1, v2}, Lcom/e/a/ac;->a(III)I

    move-result v0

    iput v0, p0, Lcom/e/a/ac;->f:I

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_0
    iput v1, p0, Lcom/e/a/ac;->e:I

    .line 522
    iput v1, p0, Lcom/e/a/ac;->f:I

    goto :goto_0
.end method


# virtual methods
.method a(I)Z
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/e/a/ac;->d:I

    if-eq v0, p1, :cond_1

    .line 538
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    :cond_0
    iput p1, p0, Lcom/e/a/ac;->d:I

    .line 539
    iget-object v0, p0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    if-eqz v0, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/e/a/ac;->a()V

    .line 541
    const/4 v0, 0x1

    .line 544
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)Z
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/e/a/ac;->c:I

    if-eq v0, p1, :cond_0

    .line 549
    iput p1, p0, Lcom/e/a/ac;->c:I

    .line 550
    iget-object v0, p0, Lcom/e/a/ac;->a:Lcom/e/a/c;

    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/e/a/ac;->a()V

    .line 552
    const/4 v0, 0x1

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/e/a/ac;->b:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 503
    new-instance v0, Lcom/e/a/z;

    invoke-direct {v0, p0, v1, v1}, Lcom/e/a/z;-><init>(Lcom/e/a/ac;Landroid/content/res/Resources;Lcom/e/a/aa;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Lcom/e/a/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/e/a/z;-><init>(Lcom/e/a/ac;Landroid/content/res/Resources;Lcom/e/a/aa;)V

    return-object v0
.end method
