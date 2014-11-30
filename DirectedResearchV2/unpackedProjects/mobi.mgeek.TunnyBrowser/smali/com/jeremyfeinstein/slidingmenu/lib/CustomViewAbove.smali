.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Lcom/jeremyfeinstein/slidingmenu/lib/l;

.field private B:Lcom/jeremyfeinstein/slidingmenu/lib/i;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:F

.field protected a:I

.field protected b:Landroid/view/VelocityTracker;

.field protected c:I

.field protected d:I

.field private f:Landroid/view/View;

.field private g:I

.field private h:Landroid/widget/Scroller;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:I

.field private t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

.field private u:Z

.field private v:Lcom/jeremyfeinstein/slidingmenu/lib/c;

.field private w:Lcom/jeremyfeinstein/slidingmenu/lib/c;

.field private x:Lcom/jeremyfeinstein/slidingmenu/lib/h;

.field private y:Lcom/jeremyfeinstein/slidingmenu/lib/k;

.field private z:Lcom/jeremyfeinstein/slidingmenu/lib/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/a;

    invoke-direct {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/a;-><init>()V

    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->u:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->C:Ljava/util/List;

    .line 584
    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d:I

    .line 630
    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Z

    .line 859
    const/4 v0, 0x0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:F

    .line 162
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a()V

    .line 163
    return-void
.end method

.method private a(FII)I
    .locals 3

    .prologue
    .line 827
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    .line 828
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->s:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->r:I

    if-le v1, v2, :cond_2

    .line 829
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 830
    add-int/lit8 v0, v0, -0x1

    .line 837
    :cond_0
    :goto_0
    return v0

    .line 831
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 624
    invoke-static {p1, p2}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 625
    if-ne v0, v1, :cond_0

    .line 626
    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 627
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 347
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 348
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 352
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->i:Z

    if-eq v0, p1, :cond_0

    .line 903
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->i:Z

    .line 914
    :cond_0
    return-void
.end method

.method private b(F)Z
    .locals 1

    .prologue
    .line 612
    .line 613
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d(F)Z

    move-result v0

    .line 620
    :goto_0
    return v0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c(F)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 596
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 597
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;IF)Z

    move-result v0

    .line 608
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 599
    :cond_1
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 605
    :pswitch_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    .line 601
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    .line 797
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 798
    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 799
    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 802
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    sub-float v3, v2, v0

    .line 803
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 804
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 805
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:F

    sub-float v0, v1, v0

    .line 806
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 807
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->n:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    cmpl-float v0, v4, v5

    if-lez v0, :cond_3

    invoke-direct {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l()V

    .line 809
    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    .line 810
    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:F

    .line 811
    invoke-direct {p0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Z)V

    goto :goto_0

    .line 807
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->n:I

    goto :goto_1

    .line 813
    :cond_3
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->n:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    .line 814
    iput-boolean v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Z

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 863
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 864
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 865
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    if-ne v1, v2, :cond_0

    .line 868
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 869
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    .line 870
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 871
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 875
    :cond_0
    return-void

    .line 868
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)V
    .locals 4

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getWidth()I

    move-result v0

    .line 531
    div-int v1, p1, v0

    .line 532
    rem-int v2, p1, v0

    .line 533
    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 535
    invoke-virtual {p0, v1, v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IFI)V

    .line 536
    return-void
.end method

.method private i()I
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private j()I
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 560
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j:Z

    .line 561
    if-eqz v0, :cond_3

    .line 563
    invoke-direct {p0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Z)V

    .line 564
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 565
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 566
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 567
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 568
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 569
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 570
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 572
    :cond_1
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 573
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/k;

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/k;

    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Z

    invoke-interface {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/k;->a(Z)V

    .line 579
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Z

    .line 581
    :cond_3
    iput-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j:Z

    .line 582
    return-void

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->x:Lcom/jeremyfeinstein/slidingmenu/lib/h;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->x:Lcom/jeremyfeinstein/slidingmenu/lib/h;

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/h;->a()V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 878
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Z

    .line 879
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Z

    .line 881
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->A:Lcom/jeremyfeinstein/slidingmenu/lib/l;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->A:Lcom/jeremyfeinstein/slidingmenu/lib/l;

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/l;->a()V

    .line 884
    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 887
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Z

    .line 888
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    .line 889
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Z

    .line 890
    const/4 v0, -0x1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 892
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->B:Lcom/jeremyfeinstein/slidingmenu/lib/i;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->B:Lcom/jeremyfeinstein/slidingmenu/lib/i;

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/i;->a()V

    .line 899
    :cond_1
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4

    .prologue
    .line 314
    const/high16 v0, 0x3f000000

    sub-float v0, p1, v0

    .line 315
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 316
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setWillNotDraw(Z)V

    .line 167
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setDescendantFocusability(I)V

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setFocusable(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    .line 171
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 172
    invoke-static {v1}, Landroid/support/v4/view/bj;->a(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->n:I

    .line 173
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->r:I

    .line 174
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c:I

    .line 175
    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/b;

    invoke-direct {v1, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/b;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Lcom/jeremyfeinstein/slidingmenu/lib/c;)Lcom/jeremyfeinstein/slidingmenu/lib/c;

    .line 191
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 192
    const/high16 v1, 0x41c80000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->s:I

    .line 193
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZ)V

    .line 204
    return-void
.end method

.method protected a(IFI)V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->v:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->v:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/c;->a(IFI)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->w:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->w:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/c;->a(IFI)V

    .line 557
    :cond_1
    return-void
.end method

.method a(III)V
    .locals 10

    .prologue
    const/16 v5, 0x258

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000

    .line 400
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Z)V

    .line 444
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 406
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 407
    sub-int v3, p1, v1

    .line 408
    sub-int v4, p2, v2

    .line 409
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 410
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k()V

    .line 411
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/k;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/k;

    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Z

    invoke-interface {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/k;->a(Z)V

    .line 418
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k:Z

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->x:Lcom/jeremyfeinstein/slidingmenu/lib/h;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->x:Lcom/jeremyfeinstein/slidingmenu/lib/h;

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/h;->a()V

    goto :goto_1

    .line 422
    :cond_3
    invoke-direct {p0, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Z)V

    .line 423
    iput-boolean v7, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j:Z

    .line 425
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d()I

    move-result v0

    .line 426
    div-int/lit8 v6, v0, 0x2

    .line 427
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 428
    int-to-float v8, v6

    int-to-float v6, v6

    invoke-virtual {p0, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    .line 432
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 433
    if-lez v7, :cond_4

    .line 434
    const/high16 v0, 0x447a0000

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 440
    :goto_2
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 442
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 443
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->invalidate()V

    goto :goto_0

    .line 436
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v0, v0

    div-float v0, v6, v0

    .line 437
    add-float/2addr v0, v9

    const/high16 v6, 0x42c80000

    mul-float/2addr v0, v6

    float-to-int v0, v0

    move v0, v5

    .line 438
    goto :goto_2
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZ)V

    .line 214
    return-void
.end method

.method a(IZZ)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZI)V

    .line 222
    return-void
.end method

.method a(IZZI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p3, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    if-ne v0, p1, :cond_0

    .line 226
    invoke-direct {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Z)V

    .line 247
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->e(I)I

    move-result v2

    .line 232
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    .line 233
    :goto_1
    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    .line 234
    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(I)I

    move-result v3

    .line 235
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->v:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    if-eqz v4, :cond_1

    .line 236
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->v:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    invoke-interface {v4, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/c;->a(I)V

    .line 238
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->w:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->w:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    invoke-interface {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/c;->a(I)V

    .line 241
    :cond_2
    if-eqz p2, :cond_4

    .line 242
    invoke-virtual {p0, v3, v1, p4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(III)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 232
    goto :goto_1

    .line 244
    :cond_4
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k()V

    .line 245
    invoke-virtual {p0, v3, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 449
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    .line 450
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    .line 459
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/c;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->v:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    .line 257
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/f;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->z:Lcom/jeremyfeinstein/slidingmenu/lib/f;

    .line 463
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/k;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->y:Lcom/jeremyfeinstein/slidingmenu/lib/k;

    .line 269
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/l;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->A:Lcom/jeremyfeinstein/slidingmenu/lib/l;

    .line 277
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->u:Z

    .line 380
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 964
    const/4 v0, 0x0

    .line 965
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 966
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 986
    :cond_0
    :goto_0
    return v0

    .line 968
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(I)Z

    move-result v0

    goto :goto_0

    .line 971
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(I)Z

    move-result v0

    goto :goto_0

    .line 974
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 977
    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(I)Z

    move-result v0

    goto :goto_0

    .line 979
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/s;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(I)Z

    move-result v0

    goto :goto_0

    .line 966
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    return v0
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 320
    packed-switch p1, :pswitch_data_0

    .line 327
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 323
    :pswitch_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b(Lcom/jeremyfeinstein/slidingmenu/lib/c;)Lcom/jeremyfeinstein/slidingmenu/lib/c;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->w:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    .line 291
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->w:Lcom/jeremyfeinstein/slidingmenu/lib/c;

    .line 292
    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 587
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d:I

    .line 588
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 343
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 507
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 510
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 511
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 512
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 514
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 515
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 516
    invoke-direct {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e(I)V

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->invalidate()V

    .line 527
    :goto_0
    return-void

    .line 526
    :cond_2
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k()V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 359
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a()I

    move-result v0

    goto :goto_0
.end method

.method public d(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 990
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 991
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 993
    :cond_0
    const/4 v1, 0x0

    .line 995
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 997
    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    .line 998
    if-ne p1, v3, :cond_2

    .line 999
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 1016
    :goto_0
    if-eqz v0, :cond_1

    .line 1017
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->playSoundEffect(I)V

    .line 1019
    :cond_1
    return v0

    .line 1000
    :cond_2
    if-ne p1, v4, :cond_8

    .line 1003
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 1004
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h()Z

    move-result v0

    goto :goto_0

    .line 1006
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 1009
    :cond_4
    if-eq p1, v3, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1011
    :cond_5
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g()Z

    move-result v0

    goto :goto_0

    .line 1012
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1014
    :cond_7
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->h()Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 846
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 848
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 849
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 850
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 851
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->z:Lcom/jeremyfeinstein/slidingmenu/lib/f;

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 853
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->z:Lcom/jeremyfeinstein/slidingmenu/lib/f;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/f;->a(Landroid/graphics/Canvas;F)V

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 856
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 952
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    return-object v0
.end method

.method protected f()F
    .locals 2

    .prologue
    .line 841
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:F

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1023
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    if-lez v1, :cond_0

    .line 1024
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZ)V

    .line 1027
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1031
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    if-ge v1, v0, :cond_0

    .line 1032
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZ)V

    .line 1035
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 635
    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->u:Z

    if-nez v2, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 644
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    if-eq v2, v1, :cond_2

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Z

    if-eqz v3, :cond_3

    .line 646
    :cond_2
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m()V

    goto :goto_0

    .line 650
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 676
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    if-nez v2, :cond_6

    .line 677
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_5

    .line 678
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 680
    :cond_5
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 682
    :cond_6
    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Z

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 652
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 655
    :sswitch_1
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 656
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 657
    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 659
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o:F

    iput v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    .line 660
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->q:F

    .line 661
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 662
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    .line 663
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Z

    .line 664
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;IF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 665
    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Z

    goto :goto_1

    .line 668
    :cond_8
    iput-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Z

    goto :goto_1

    .line 672
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    sub-int v0, p4, p2

    .line 493
    sub-int v1, p5, p3

    .line 494
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 495
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    invoke-static {v2, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v0

    .line 469
    invoke-static {v2, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I

    move-result v1

    .line 470
    invoke-virtual {p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setMeasuredDimension(II)V

    .line 472
    invoke-static {p1, v2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 473
    invoke-static {p2, v2, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 474
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 475
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 479
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 481
    if-eq p1, p3, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k()V

    .line 486
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 488
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 689
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->u:Z

    if-nez v1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v0

    .line 692
    :cond_1
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 700
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 701
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 703
    :cond_3
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 705
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v0, v3

    .line 793
    goto :goto_0

    .line 711
    :pswitch_1
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->k()V

    .line 714
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 715
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o:F

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    goto :goto_1

    .line 719
    :pswitch_2
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    if-nez v1, :cond_5

    .line 720
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(Landroid/view/MotionEvent;)V

    .line 721
    iget-boolean v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m:Z

    if-nez v1, :cond_0

    .line 724
    :cond_5
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    if-eqz v0, :cond_4

    .line 726
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 727
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    if-eq v1, v5, :cond_4

    .line 729
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 730
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    sub-float/2addr v1, v0

    .line 731
    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    .line 732
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 733
    add-float v2, v0, v1

    .line 734
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->i()I

    move-result v0

    int-to-float v0, v0

    .line 735
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->j()I

    move-result v1

    int-to-float v1, v1

    .line 736
    cmpg-float v4, v2, v0

    if-gez v4, :cond_6

    .line 742
    :goto_2
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    .line 743
    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V

    .line 744
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e(I)V

    goto :goto_1

    .line 738
    :cond_6
    cmpl-float v0, v2, v1

    if-lez v0, :cond_9

    move v0, v1

    .line 739
    goto :goto_2

    .line 748
    :pswitch_3
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    if-eqz v0, :cond_8

    .line 749
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b:Landroid/view/VelocityTracker;

    .line 750
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 751
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 753
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 754
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 755
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 756
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    if-eq v4, v5, :cond_7

    .line 757
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 758
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->o:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 759
    invoke-direct {p0, v1, v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(FII)I

    move-result v1

    .line 760
    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZI)V

    .line 764
    :goto_3
    iput v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 765
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m()V

    goto/16 :goto_1

    .line 762
    :cond_7
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZI)V

    goto :goto_3

    .line 766
    :cond_8
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->D:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;IF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 768
    invoke-virtual {p0, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(I)V

    .line 769
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m()V

    goto/16 :goto_1

    .line 773
    :pswitch_4
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->l:Z

    if-eqz v0, :cond_4

    .line 774
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->g:I

    invoke-virtual {p0, v0, v3, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZZ)V

    .line 775
    iput v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    .line 776
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->m()V

    goto/16 :goto_1

    .line 780
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 781
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    .line 782
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    goto/16 :goto_1

    .line 786
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->d(Landroid/view/MotionEvent;)V

    .line 787
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 788
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a:I

    if-eq v1, v5, :cond_4

    .line 790
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->p:F

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 820
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 821
    int-to-float v0, p1

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->E:F

    .line 822
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->t:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;II)V

    .line 823
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(F)V

    .line 824
    return-void
.end method
