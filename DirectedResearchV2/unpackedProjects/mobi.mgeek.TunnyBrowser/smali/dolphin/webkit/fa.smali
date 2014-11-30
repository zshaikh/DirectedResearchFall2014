.class Ldolphin/webkit/fa;
.super Ljava/lang/Object;
.source "OverScroller.java"


# static fields
.field private static o:F

.field private static p:F

.field private static final q:[F

.field private static final r:[F


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const v14, 0x3e333333

    const/4 v4, 0x0

    const-wide v12, 0x3ee4f8b588e368f1L

    const/16 v11, 0x64

    const/high16 v1, 0x3f800000

    .line 597
    const-wide v2, 0x3fe8f5c28f5c28f6L

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v5, 0x3feccccccccccccdL

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v2, v5

    double-to-float v0, v2

    sput v0, Ldolphin/webkit/fa;->p:F

    .line 605
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Ldolphin/webkit/fa;->q:[F

    .line 606
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Ldolphin/webkit/fa;->r:[F

    .line 615
    const/4 v0, 0x0

    move v5, v0

    move v2, v4

    :goto_0
    if-ge v5, v11, :cond_4

    .line 616
    int-to-float v0, v5

    const/high16 v3, 0x42c80000

    div-float v6, v0, v3

    move v0, v1

    move v3, v2

    .line 621
    :goto_1
    sub-float v2, v0, v3

    const/high16 v7, 0x40000000

    div-float/2addr v2, v7

    add-float/2addr v2, v3

    .line 622
    const/high16 v7, 0x40400000

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 623
    sub-float v8, v1, v2

    mul-float/2addr v8, v14

    const v9, 0x3eb33334

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 624
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    cmpg-double v9, v9, v12

    if-gez v9, :cond_0

    .line 628
    sget-object v0, Ldolphin/webkit/fa;->q:[F

    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float v8, v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    aput v2, v0, v5

    move v0, v1

    .line 633
    :goto_2
    sub-float v2, v0, v4

    const/high16 v7, 0x40000000

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    .line 634
    const/high16 v7, 0x40400000

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 635
    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 636
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    cmpg-double v9, v9, v12

    if-gez v9, :cond_2

    .line 640
    sget-object v0, Ldolphin/webkit/fa;->r:[F

    sub-float v6, v1, v2

    mul-float/2addr v6, v14

    const v8, 0x3eb33334

    mul-float/2addr v8, v2

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    aput v2, v0, v5

    .line 615
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v2, v3

    goto :goto_0

    .line 625
    :cond_0
    cmpl-float v7, v8, v6

    if-lez v7, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    .line 626
    goto :goto_1

    .line 637
    :cond_2
    cmpl-float v7, v8, v6

    if-lez v7, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v4, v2

    .line 638
    goto :goto_2

    .line 642
    :cond_4
    sget-object v0, Ldolphin/webkit/fa;->q:[F

    sget-object v2, Ldolphin/webkit/fa;->r:[F

    aput v1, v2, v11

    aput v1, v0, v11

    .line 643
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Ldolphin/webkit/fa;->m:F

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/fa;->n:I

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/fa;->k:Z

    .line 659
    return-void
.end method

.method private a(II)D
    .locals 8

    .prologue
    .line 831
    invoke-direct {p0, p1}, Ldolphin/webkit/fa;->e(I)D

    move-result-wide v0

    .line 832
    sget v2, Ldolphin/webkit/fa;->p:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L

    sub-double/2addr v2, v4

    .line 833
    invoke-direct {p0, p2}, Ldolphin/webkit/fa;->d(I)D

    move-result-wide v4

    iget v6, p0, Ldolphin/webkit/fa;->m:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    sget v6, Ldolphin/webkit/fa;->o:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    sget v6, Ldolphin/webkit/fa;->p:F

    float-to-double v6, v6

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private a(IIIII)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 862
    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    .line 863
    const-string v1, "OverScroller"

    const-string v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iput-boolean v0, p0, Ldolphin/webkit/fa;->k:Z

    .line 882
    :goto_0
    return-void

    .line 867
    :cond_0
    if-le p1, p3, :cond_1

    move v4, v0

    .line 868
    :goto_1
    if-eqz v4, :cond_2

    move v2, p3

    .line 869
    :goto_2
    sub-int v3, p1, v2

    .line 870
    mul-int v5, v3, p4

    if-ltz v5, :cond_3

    .line 871
    :goto_3
    if-eqz v0, :cond_4

    .line 873
    invoke-direct {p0, p1, v2, p4}, Ldolphin/webkit/fa;->f(III)V

    goto :goto_0

    :cond_1
    move v4, v1

    .line 867
    goto :goto_1

    :cond_2
    move v2, p2

    .line 868
    goto :goto_2

    :cond_3
    move v0, v1

    .line 870
    goto :goto_3

    .line 875
    :cond_4
    invoke-direct {p0, p4, p5}, Ldolphin/webkit/fa;->a(II)D

    move-result-wide v0

    .line 876
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v5, v3

    cmpl-double v0, v0, v5

    if-lez v0, :cond_7

    .line 877
    if-eqz v4, :cond_5

    move v3, p2

    :goto_4
    if-eqz v4, :cond_6

    move v4, p1

    :goto_5
    iget v5, p0, Ldolphin/webkit/fa;->l:I

    move-object v0, p0

    move v1, p1

    move v2, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ldolphin/webkit/fa;->a(IIIIII)V

    goto :goto_0

    :cond_5
    move v3, p1

    goto :goto_4

    :cond_6
    move v4, p3

    goto :goto_5

    .line 879
    :cond_7
    invoke-direct {p0, p1, v2, p4}, Ldolphin/webkit/fa;->d(III)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 646
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000

    mul-float/2addr v0, v1

    .line 647
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    const v1, 0x3f570a3d

    mul-float/2addr v0, v1

    sput v0, Ldolphin/webkit/fa;->o:F

    .line 651
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/fa;)Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Ldolphin/webkit/fa;->k:Z

    return v0
.end method

.method static synthetic b(Ldolphin/webkit/fa;)I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Ldolphin/webkit/fa;->b:I

    return v0
.end method

.method private static c(I)F
    .locals 1

    .prologue
    .line 669
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000

    goto :goto_0
.end method

.method static synthetic c(Ldolphin/webkit/fa;)F
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Ldolphin/webkit/fa;->e:F

    return v0
.end method

.method private c(III)V
    .locals 6

    .prologue
    const/high16 v4, 0x42c80000

    .line 677
    sub-int v0, p2, p1

    .line 678
    sub-int v1, p3, p1

    .line 679
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 680
    mul-float v1, v4, v0

    float-to-int v1, v1

    .line 681
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 682
    int-to-float v2, v1

    div-float/2addr v2, v4

    .line 683
    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 684
    sget-object v4, Ldolphin/webkit/fa;->r:[F

    aget v4, v4, v1

    .line 685
    sget-object v5, Ldolphin/webkit/fa;->r:[F

    add-int/lit8 v1, v1, 0x1

    aget v1, v5, v1

    .line 686
    sub-float/2addr v0, v2

    sub-float v2, v3, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    .line 687
    iget v1, p0, Ldolphin/webkit/fa;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldolphin/webkit/fa;->h:I

    .line 689
    :cond_0
    return-void
.end method

.method private d(I)D
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4089000000000000L

    const-wide/high16 v5, 0x407e000000000000L

    const-wide/high16 v0, 0x3ff0000000000000L

    .line 798
    .line 802
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "HTC 80"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-wide v0

    .line 805
    :cond_1
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 806
    const/4 v3, 0x1

    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    .line 807
    if-nez p1, :cond_2

    .line 808
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    div-double/2addr v2, v5

    .line 820
    :goto_1
    const-wide v4, 0x3fb999999999999aL

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    .line 810
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    div-double/2addr v2, v7

    goto :goto_1

    .line 812
    :cond_3
    const/4 v3, 0x2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_5

    .line 813
    if-nez p1, :cond_4

    .line 814
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    div-double/2addr v2, v7

    goto :goto_1

    .line 816
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    div-double/2addr v2, v5

    goto :goto_1

    :cond_5
    move-wide v2, v0

    goto :goto_1
.end method

.method static synthetic d(Ldolphin/webkit/fa;)I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Ldolphin/webkit/fa;->c:I

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000

    .line 897
    iget v0, p0, Ldolphin/webkit/fa;->d:I

    iget v1, p0, Ldolphin/webkit/fa;->d:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Ldolphin/webkit/fa;->f:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    .line 898
    iget v1, p0, Ldolphin/webkit/fa;->d:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 900
    iget v2, p0, Ldolphin/webkit/fa;->l:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 902
    neg-float v0, v1

    iget v1, p0, Ldolphin/webkit/fa;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Ldolphin/webkit/fa;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Ldolphin/webkit/fa;->l:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fa;->f:F

    .line 903
    iget v0, p0, Ldolphin/webkit/fa;->l:I

    int-to-float v0, v0

    .line 906
    :cond_0
    float-to-int v1, v0

    iput v1, p0, Ldolphin/webkit/fa;->l:I

    .line 907
    const/4 v1, 0x2

    iput v1, p0, Ldolphin/webkit/fa;->n:I

    .line 908
    iget v1, p0, Ldolphin/webkit/fa;->a:I

    iget v2, p0, Ldolphin/webkit/fa;->d:I

    if-lez v2, :cond_1

    :goto_0
    float-to-int v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fa;->c:I

    .line 909
    const/high16 v0, 0x447a0000

    iget v1, p0, Ldolphin/webkit/fa;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Ldolphin/webkit/fa;->f:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Ldolphin/webkit/fa;->h:I

    .line 910
    return-void

    .line 908
    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private d(III)V
    .locals 7

    .prologue
    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/fa;->k:Z

    .line 746
    const/4 v0, 0x1

    iput v0, p0, Ldolphin/webkit/fa;->n:I

    .line 747
    iput p1, p0, Ldolphin/webkit/fa;->a:I

    .line 748
    iput p2, p0, Ldolphin/webkit/fa;->c:I

    .line 749
    sub-int v0, p1, p2

    .line 750
    invoke-static {v0}, Ldolphin/webkit/fa;->c(I)F

    move-result v1

    iput v1, p0, Ldolphin/webkit/fa;->f:F

    .line 752
    neg-int v1, v0

    iput v1, p0, Ldolphin/webkit/fa;->d:I

    .line 753
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Ldolphin/webkit/fa;->l:I

    .line 754
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000000000000000L

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v0, p0, Ldolphin/webkit/fa;->f:F

    float-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    double-to-int v0, v0

    iput v0, p0, Ldolphin/webkit/fa;->h:I

    .line 755
    return-void
.end method

.method private e(I)D
    .locals 3

    .prologue
    .line 827
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Ldolphin/webkit/fa;->m:F

    sget v2, Ldolphin/webkit/fa;->o:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Ldolphin/webkit/fa;)I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Ldolphin/webkit/fa;->h:I

    return v0
.end method

.method private e(III)V
    .locals 6

    .prologue
    .line 845
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Ldolphin/webkit/fa;->f:F

    div-float/2addr v0, v1

    .line 846
    mul-int v1, p3, p3

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iget v2, p0, Ldolphin/webkit/fa;->f:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    .line 847
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 848
    const-wide/high16 v3, 0x4000000000000000L

    add-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    iget v3, p0, Ldolphin/webkit/fa;->f:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 850
    iget-wide v2, p0, Ldolphin/webkit/fa;->g:J

    const/high16 v4, 0x447a0000

    sub-float v0, v1, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ldolphin/webkit/fa;->g:J

    .line 851
    iput p2, p0, Ldolphin/webkit/fa;->a:I

    .line 852
    iget v0, p0, Ldolphin/webkit/fa;->f:F

    neg-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldolphin/webkit/fa;->d:I

    .line 853
    return-void
.end method

.method private f(I)I
    .locals 6

    .prologue
    .line 838
    invoke-direct {p0, p1}, Ldolphin/webkit/fa;->e(I)D

    move-result-wide v0

    .line 839
    sget v2, Ldolphin/webkit/fa;->p:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L

    sub-double/2addr v2, v4

    .line 840
    const-wide v4, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method static synthetic f(Ldolphin/webkit/fa;)J
    .locals 2

    .prologue
    .line 547
    iget-wide v0, p0, Ldolphin/webkit/fa;->g:J

    return-wide v0
.end method

.method private f(III)V
    .locals 1

    .prologue
    .line 856
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Ldolphin/webkit/fa;->c(I)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/fa;->f:F

    .line 857
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/fa;->e(III)V

    .line 858
    invoke-direct {p0}, Ldolphin/webkit/fa;->d()V

    .line 859
    return-void

    :cond_0
    move v0, p3

    .line 856
    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Ldolphin/webkit/fa;->c:I

    iput v0, p0, Ldolphin/webkit/fa;->b:I

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/fa;->k:Z

    .line 711
    return-void
.end method

.method a(F)V
    .locals 3

    .prologue
    .line 662
    iget v0, p0, Ldolphin/webkit/fa;->a:I

    iget v1, p0, Ldolphin/webkit/fa;->c:I

    iget v2, p0, Ldolphin/webkit/fa;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ldolphin/webkit/fa;->b:I

    .line 663
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 714
    iput p1, p0, Ldolphin/webkit/fa;->c:I

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/fa;->k:Z

    .line 716
    return-void
.end method

.method a(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    iput-boolean v2, p0, Ldolphin/webkit/fa;->k:Z

    .line 694
    iput p1, p0, Ldolphin/webkit/fa;->a:I

    .line 695
    add-int v0, p1, p2

    iput v0, p0, Ldolphin/webkit/fa;->c:I

    .line 697
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/webkit/fa;->g:J

    .line 698
    iput p3, p0, Ldolphin/webkit/fa;->h:I

    .line 701
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/fa;->f:F

    .line 702
    iput v2, p0, Ldolphin/webkit/fa;->d:I

    .line 703
    return-void
.end method

.method a(IIIIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 758
    iput p5, p0, Ldolphin/webkit/fa;->l:I

    .line 759
    iput-boolean v2, p0, Ldolphin/webkit/fa;->k:Z

    .line 760
    iput p2, p0, Ldolphin/webkit/fa;->d:I

    int-to-float v0, p2

    iput v0, p0, Ldolphin/webkit/fa;->e:F

    .line 761
    iput v2, p0, Ldolphin/webkit/fa;->i:I

    iput v2, p0, Ldolphin/webkit/fa;->h:I

    .line 762
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/webkit/fa;->g:J

    .line 763
    iput p1, p0, Ldolphin/webkit/fa;->a:I

    iput p1, p0, Ldolphin/webkit/fa;->b:I

    .line 765
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p2

    move v5, p6

    .line 766
    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/fa;->a(IIIII)V

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 770
    :cond_2
    iput v2, p0, Ldolphin/webkit/fa;->n:I

    .line 771
    const-wide/16 v0, 0x0

    .line 773
    if-eqz p2, :cond_3

    .line 774
    invoke-direct {p0, p2}, Ldolphin/webkit/fa;->f(I)I

    move-result v0

    iput v0, p0, Ldolphin/webkit/fa;->i:I

    iput v0, p0, Ldolphin/webkit/fa;->h:I

    .line 775
    invoke-direct {p0, p2, p6}, Ldolphin/webkit/fa;->a(II)D

    move-result-wide v0

    .line 778
    :cond_3
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Ldolphin/webkit/fa;->j:I

    .line 779
    iget v0, p0, Ldolphin/webkit/fa;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Ldolphin/webkit/fa;->c:I

    .line 782
    iget v0, p0, Ldolphin/webkit/fa;->c:I

    if-ge v0, p3, :cond_4

    .line 783
    iget v0, p0, Ldolphin/webkit/fa;->a:I

    iget v1, p0, Ldolphin/webkit/fa;->c:I

    invoke-direct {p0, v0, v1, p3}, Ldolphin/webkit/fa;->c(III)V

    .line 784
    iput p3, p0, Ldolphin/webkit/fa;->c:I

    .line 787
    :cond_4
    iget v0, p0, Ldolphin/webkit/fa;->c:I

    if-le v0, p4, :cond_1

    .line 788
    iget v0, p0, Ldolphin/webkit/fa;->a:I

    iget v1, p0, Ldolphin/webkit/fa;->c:I

    invoke-direct {p0, v0, v1, p4}, Ldolphin/webkit/fa;->c(III)V

    .line 789
    iput p4, p0, Ldolphin/webkit/fa;->c:I

    goto :goto_0
.end method

.method b(I)V
    .locals 4

    .prologue
    .line 719
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 720
    iget-wide v2, p0, Ldolphin/webkit/fa;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 721
    add-int/2addr v0, p1

    iput v0, p0, Ldolphin/webkit/fa;->h:I

    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/fa;->k:Z

    .line 723
    return-void
.end method

.method b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 913
    iget v1, p0, Ldolphin/webkit/fa;->n:I

    packed-switch v1, :pswitch_data_0

    .line 937
    :goto_0
    invoke-virtual {p0}, Ldolphin/webkit/fa;->c()Z

    .line 938
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 916
    :pswitch_1
    iget v1, p0, Ldolphin/webkit/fa;->h:I

    iget v2, p0, Ldolphin/webkit/fa;->i:I

    if-ge v1, v2, :cond_0

    .line 918
    iget v0, p0, Ldolphin/webkit/fa;->c:I

    iput v0, p0, Ldolphin/webkit/fa;->a:I

    .line 920
    iget v0, p0, Ldolphin/webkit/fa;->e:F

    float-to-int v0, v0

    iput v0, p0, Ldolphin/webkit/fa;->d:I

    .line 921
    iget v0, p0, Ldolphin/webkit/fa;->d:I

    invoke-static {v0}, Ldolphin/webkit/fa;->c(I)F

    move-result v0

    iput v0, p0, Ldolphin/webkit/fa;->f:F

    .line 922
    iget-wide v0, p0, Ldolphin/webkit/fa;->g:J

    iget v2, p0, Ldolphin/webkit/fa;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldolphin/webkit/fa;->g:J

    .line 923
    invoke-direct {p0}, Ldolphin/webkit/fa;->d()V

    goto :goto_0

    .line 930
    :pswitch_2
    iget-wide v1, p0, Ldolphin/webkit/fa;->g:J

    iget v3, p0, Ldolphin/webkit/fa;->h:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Ldolphin/webkit/fa;->g:J

    .line 931
    iget v1, p0, Ldolphin/webkit/fa;->c:I

    iget v2, p0, Ldolphin/webkit/fa;->a:I

    invoke-direct {p0, v1, v2, v0}, Ldolphin/webkit/fa;->d(III)V

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method b(III)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    iput-boolean v0, p0, Ldolphin/webkit/fa;->k:Z

    .line 728
    iput p1, p0, Ldolphin/webkit/fa;->c:I

    iput p1, p0, Ldolphin/webkit/fa;->a:I

    .line 729
    iput v1, p0, Ldolphin/webkit/fa;->d:I

    .line 731
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldolphin/webkit/fa;->g:J

    .line 732
    iput v1, p0, Ldolphin/webkit/fa;->h:I

    .line 734
    if-ge p1, p2, :cond_1

    .line 735
    invoke-direct {p0, p1, p2, v1}, Ldolphin/webkit/fa;->d(III)V

    .line 740
    :cond_0
    :goto_0
    iget-boolean v2, p0, Ldolphin/webkit/fa;->k:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 736
    :cond_1
    if-le p1, p3, :cond_0

    .line 737
    invoke-direct {p0, p1, p3, v1}, Ldolphin/webkit/fa;->d(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 740
    goto :goto_1
.end method

.method c()Z
    .locals 8

    .prologue
    const/high16 v7, 0x447a0000

    const/high16 v6, 0x40000000

    const/high16 v5, 0x42c80000

    .line 947
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 948
    iget-wide v2, p0, Ldolphin/webkit/fa;->g:J

    sub-long v2, v0, v2

    .line 950
    iget v0, p0, Ldolphin/webkit/fa;->h:I

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 951
    const/4 v0, 0x0

    .line 994
    :goto_0
    return v0

    .line 954
    :cond_0
    const-wide/16 v0, 0x0

    .line 955
    iget v4, p0, Ldolphin/webkit/fa;->n:I

    packed-switch v4, :pswitch_data_0

    .line 992
    :goto_1
    iget v2, p0, Ldolphin/webkit/fa;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Ldolphin/webkit/fa;->b:I

    .line 994
    const/4 v0, 0x1

    goto :goto_0

    .line 957
    :pswitch_0
    long-to-float v0, v2

    iget v1, p0, Ldolphin/webkit/fa;->i:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 958
    mul-float v0, v5, v2

    float-to-int v3, v0

    .line 959
    const/high16 v1, 0x3f800000

    .line 960
    const/4 v0, 0x0

    .line 961
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 962
    int-to-float v0, v3

    div-float v1, v0, v5

    .line 963
    add-int/lit8 v0, v3, 0x1

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 964
    sget-object v4, Ldolphin/webkit/fa;->q:[F

    aget v4, v4, v3

    .line 965
    sget-object v5, Ldolphin/webkit/fa;->q:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    .line 966
    sub-float/2addr v3, v4

    sub-float/2addr v0, v1

    div-float v0, v3, v0

    .line 967
    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    .line 970
    :cond_1
    iget v2, p0, Ldolphin/webkit/fa;->j:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 971
    iget v3, p0, Ldolphin/webkit/fa;->j:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Ldolphin/webkit/fa;->i:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v7

    iput v0, p0, Ldolphin/webkit/fa;->e:F

    move-wide v0, v1

    .line 972
    goto :goto_1

    .line 976
    :pswitch_1
    long-to-float v0, v2

    div-float/2addr v0, v7

    .line 977
    iget v1, p0, Ldolphin/webkit/fa;->d:I

    int-to-float v1, v1

    iget v2, p0, Ldolphin/webkit/fa;->f:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Ldolphin/webkit/fa;->e:F

    .line 978
    iget v1, p0, Ldolphin/webkit/fa;->d:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Ldolphin/webkit/fa;->f:F

    mul-float/2addr v2, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v6

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 979
    goto :goto_1

    .line 983
    :pswitch_2
    long-to-float v0, v2

    iget v1, p0, Ldolphin/webkit/fa;->h:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 984
    mul-float v3, v2, v2

    .line 985
    iget v0, p0, Ldolphin/webkit/fa;->d:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 986
    iget v0, p0, Ldolphin/webkit/fa;->l:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    const/high16 v1, 0x40400000

    mul-float/2addr v1, v3

    mul-float v5, v6, v2

    mul-float/2addr v5, v3

    sub-float/2addr v1, v5

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 987
    iget v5, p0, Ldolphin/webkit/fa;->l:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x40c00000

    mul-float/2addr v4, v5

    neg-float v2, v2

    add-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, p0, Ldolphin/webkit/fa;->e:F

    goto/16 :goto_1

    .line 955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
