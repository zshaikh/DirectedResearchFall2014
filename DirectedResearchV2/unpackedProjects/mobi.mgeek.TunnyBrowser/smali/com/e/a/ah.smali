.class Lcom/e/a/ah;
.super Ljava/lang/Object;
.source "SVGParser.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Matrix;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/ah;->k:Ljava/util/ArrayList;

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/ah;->l:Ljava/util/ArrayList;

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/ag;)V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/e/a/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/e/a/ah;)Lcom/e/a/ah;
    .locals 3

    .prologue
    .line 589
    new-instance v0, Lcom/e/a/ah;

    invoke-direct {v0}, Lcom/e/a/ah;-><init>()V

    .line 590
    iget-object v1, p1, Lcom/e/a/ah;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/e/a/ah;->a:Ljava/lang/String;

    .line 591
    iget-object v1, p0, Lcom/e/a/ah;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/e/a/ah;->b:Ljava/lang/String;

    .line 592
    iget-boolean v1, p1, Lcom/e/a/ah;->c:Z

    iput-boolean v1, v0, Lcom/e/a/ah;->c:Z

    .line 593
    iget v1, p1, Lcom/e/a/ah;->d:F

    iput v1, v0, Lcom/e/a/ah;->d:F

    .line 594
    iget v1, p1, Lcom/e/a/ah;->f:F

    iput v1, v0, Lcom/e/a/ah;->f:F

    .line 595
    iget v1, p1, Lcom/e/a/ah;->e:F

    iput v1, v0, Lcom/e/a/ah;->e:F

    .line 596
    iget v1, p1, Lcom/e/a/ah;->g:F

    iput v1, v0, Lcom/e/a/ah;->g:F

    .line 597
    iget v1, p1, Lcom/e/a/ah;->h:F

    iput v1, v0, Lcom/e/a/ah;->h:F

    .line 598
    iget v1, p1, Lcom/e/a/ah;->i:F

    iput v1, v0, Lcom/e/a/ah;->i:F

    .line 599
    iget v1, p1, Lcom/e/a/ah;->j:F

    iput v1, v0, Lcom/e/a/ah;->j:F

    .line 600
    iget-object v1, p0, Lcom/e/a/ah;->k:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/e/a/ah;->k:Ljava/util/ArrayList;

    .line 601
    iget-object v1, p0, Lcom/e/a/ah;->l:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/e/a/ah;->l:Ljava/util/ArrayList;

    .line 602
    iget-object v1, p0, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    .line 603
    iget-object v1, p1, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    .line 605
    iget-object v1, p1, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    .line 612
    :cond_0
    :goto_0
    return-object v0

    .line 607
    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 608
    iget-object v2, p1, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 609
    iput-object v1, v0, Lcom/e/a/ah;->m:Landroid/graphics/Matrix;

    goto :goto_0
.end method
