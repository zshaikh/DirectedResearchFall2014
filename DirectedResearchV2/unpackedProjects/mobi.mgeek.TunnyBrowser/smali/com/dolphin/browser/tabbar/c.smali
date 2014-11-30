.class public Lcom/dolphin/browser/tabbar/c;
.super Ljava/lang/Object;
.source "AnimHighLightLinearLayout.java"


# instance fields
.field private a:Z

.field private b:Landroid/view/animation/Animation;

.field private c:I

.field private d:I

.field private e:Ljava/lang/Runnable;

.field private f:I


# direct methods
.method public constructor <init>(IIILjava/lang/Runnable;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput p2, p0, Lcom/dolphin/browser/tabbar/c;->c:I

    .line 334
    iput p3, p0, Lcom/dolphin/browser/tabbar/c;->d:I

    .line 335
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/c;->b:Landroid/view/animation/Animation;

    .line 336
    iget v0, p0, Lcom/dolphin/browser/tabbar/c;->d:I

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 341
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tabbar/c;->a:Z

    .line 342
    iput-object p4, p0, Lcom/dolphin/browser/tabbar/c;->e:Ljava/lang/Runnable;

    .line 343
    iput p1, p0, Lcom/dolphin/browser/tabbar/c;->f:I

    .line 344
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/tabbar/c;)I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/dolphin/browser/tabbar/c;->d:I

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/tabbar/c;)I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/dolphin/browser/tabbar/c;->f:I

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/tabbar/c;)I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/dolphin/browser/tabbar/c;->c:I

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/tabbar/c;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/c;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/tabbar/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/c;->e:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/dolphin/browser/tabbar/c;->d:I

    return v0
.end method

.method a(JLandroid/view/animation/Transformation;)Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 360
    return-object p3
.end method

.method b()V
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/dolphin/browser/tabbar/c;->a:Z

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tabbar/c;->a:Z

    .line 369
    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/dolphin/browser/tabbar/c;->a:Z

    return v0
.end method
