.class public Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "BugFixedSlidingPaneLayout.java"


# static fields
.field static final a:Lam/sunrise/android/calendar/ui/widgets/f;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private final e:I

.field private f:Z

.field private g:Landroid/view/View;

.field private h:F

.field private i:F

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:F

.field private o:Lam/sunrise/android/calendar/ui/widgets/d;

.field private final p:Landroid/support/v4/widget/ai;

.field private q:Z

.field private r:Z

.field private final s:Landroid/graphics/Rect;

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 208
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/i;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/i;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a:Lam/sunrise/android/calendar/ui/widgets/f;

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 210
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/h;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/h;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a:Lam/sunrise/android/calendar/ui/widgets/f;

    goto :goto_0

    .line 212
    :cond_1
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/g;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/g;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a:Lam/sunrise/android/calendar/ui/widgets/f;

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(F)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x3f800000

    .line 1091
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/c;

    .line 1092
    iget-boolean v2, v0, Lam/sunrise/android/calendar/ui/widgets/c;->c:Z

    if-eqz v2, :cond_1

    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->leftMargin:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 1093
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildCount()I

    move-result v2

    .line 1094
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1095
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1096
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    if-ne v3, v4, :cond_2

    .line 1094
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1092
    goto :goto_0

    .line 1098
    :cond_2
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->i:F

    sub-float v4, v7, v4

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->l:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1099
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->i:F

    .line 1100
    sub-float v5, v7, p1

    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->l:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1101
    sub-int/2addr v4, v5

    .line 1103
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1105
    if-eqz v0, :cond_0

    .line 1106
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->i:F

    sub-float v4, v7, v4

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->c:I

    invoke-direct {p0, v3, v4, v5}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/view/View;FI)V

    goto :goto_2

    .line 1109
    :cond_3
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->d(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;FI)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 945
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/c;

    .line 947
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    if-eqz p3, :cond_3

    .line 948
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    .line 949
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 950
    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p3

    or-int/2addr v1, v2

    .line 951
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/widgets/c;->d:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 952
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/widgets/c;->d:Landroid/graphics/Paint;

    .line 954
    :cond_0
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/widgets/c;->d:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 955
    invoke-static {p1}, Landroid/support/v4/view/ak;->e(Landroid/view/View;)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 956
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->d:Landroid/graphics/Paint;

    invoke-static {p1, v5, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 958
    :cond_1
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->d(Landroid/view/View;)V

    .line 967
    :cond_2
    :goto_0
    return-void

    .line 959
    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/ak;->e(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 960
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/c;->d:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    .line 961
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 963
    :cond_4
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/b;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/widgets/b;-><init>(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V

    .line 964
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    invoke-static {p0, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 848
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->r:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    :cond_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->q:Z

    .line 850
    const/4 v0, 0x1

    .line 852
    :cond_1
    return v0
.end method

.method private b(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 856
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->r:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1, p2}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    :cond_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->q:Z

    .line 860
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-static {p0}, Landroid/support/v4/view/ak;->g(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_3

    .line 421
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 423
    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1011
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a:Lam/sunrise/android/calendar/ui/widgets/f;

    invoke-interface {v0, p0, p1}, Lam/sunrise/android/calendar/ui/widgets/f;->a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V

    .line 1012
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 404
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 405
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 406
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_1
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 16

    .prologue
    .line 362
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingLeft()I

    move-result v7

    .line 363
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int v8, v1, v2

    .line 364
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingTop()I

    move-result v9

    .line 365
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    sub-int v10, v1, v2

    .line 370
    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 379
    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildCount()I

    move-result v11

    move v6, v5

    :goto_1
    if-ge v6, v11, :cond_0

    .line 380
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 382
    move-object/from16 v0, p1

    if-ne v12, v0, :cond_2

    .line 400
    :cond_0
    return-void

    .line 376
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 388
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 389
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 390
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 392
    if-lt v5, v4, :cond_3

    if-lt v13, v2, :cond_3

    if-gt v14, v3, :cond_3

    if-gt v15, v1, :cond_3

    .line 394
    const/4 v5, 0x4

    .line 398
    :goto_2
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 379
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    .line 396
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method a(FI)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1021
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1036
    :goto_0
    return v0

    .line 1026
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/c;

    .line 1028
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->leftMargin:I

    add-int/2addr v0, v2

    .line 1029
    int-to-float v0, v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->j:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1031
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/widget/ai;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a()V

    .line 1033
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 1034
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1036
    goto :goto_0
.end method

.method a(Landroid/support/v4/view/ViewPager;I)Z
    .locals 2

    .prologue
    .line 1147
    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    if-lez p2, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 1123
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 1124
    check-cast v6, Landroid/view/ViewGroup;

    .line 1125
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 1126
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 1127
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1129
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 1132
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1133
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    :cond_0
    :goto_1
    return v2

    .line 1129
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 1142
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/support/v4/view/ViewPager;

    neg-int v0, p3

    invoke-virtual {p0, p1, v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/support/v4/view/ViewPager;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1152
    if-nez p1, :cond_0

    .line 1156
    :goto_0
    return v1

    .line 1155
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/c;

    .line 1156
    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->h:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1173
    instance-of v0, p1, Lam/sunrise/android/calendar/ui/widgets/c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ai;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-nez v0, :cond_1

    .line 1043
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v0}, Landroid/support/v4/widget/ai;->f()V

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 906
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->h:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1073
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1075
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1076
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 1088
    :cond_0
    :goto_1
    return-void

    .line 1075
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1081
    :cond_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1082
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1083
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1084
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1085
    sub-int v1, v2, v1

    .line 1086
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1087
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 971
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/c;

    .line 973
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    .line 975
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lam/sunrise/android/calendar/ui/widgets/c;->b:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 977
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 978
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->s:Landroid/graphics/Rect;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->s:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 979
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 982
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 983
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1005
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1007
    return v0

    .line 985
    :cond_1
    iget-boolean v3, v0, Lam/sunrise/android/calendar/ui/widgets/c;->c:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->h:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 986
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 987
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 989
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 990
    if-eqz v3, :cond_3

    .line 991
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v0, v1

    .line 992
    goto :goto_0

    .line 994
    :cond_3
    const-string v0, "SlidingPaneLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawChild: child view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returned null drawing cache"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 998
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 999
    invoke-virtual {p2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1001
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1161
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/c;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/c;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1178
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/c;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lam/sunrise/android/calendar/ui/widgets/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1166
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/c;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/c;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->c:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->l:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->b:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 428
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->r:Z

    .line 430
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 434
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->r:Z

    .line 437
    const/4 v0, 0x0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 438
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/b;

    .line 439
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/b;->run()V

    .line 437
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 442
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 747
    invoke-static {p1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 750
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildCount()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 752
    invoke-virtual {p0, v6}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 753
    if-eqz v0, :cond_0

    .line 754
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/support/v4/widget/ai;->b(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->q:Z

    .line 759
    :cond_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->k:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 760
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v0}, Landroid/support/v4/widget/ai;->e()V

    .line 761
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 803
    :cond_2
    :goto_1
    return v2

    :cond_3
    move v0, v2

    .line 754
    goto :goto_0

    .line 764
    :cond_4
    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    if-ne v1, v6, :cond_6

    .line 765
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v0}, Landroid/support/v4/widget/ai;->e()V

    goto :goto_1

    .line 771
    :cond_6
    packed-switch v1, :pswitch_data_0

    :cond_7
    :pswitch_0
    move v0, v2

    .line 801
    :goto_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ai;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 803
    if-nez v1, :cond_8

    if-eqz v0, :cond_2

    :cond_8
    move v2, v6

    goto :goto_1

    .line 773
    :pswitch_1
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->k:Z

    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 776
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->m:F

    .line 777
    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->n:F

    .line 779
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v3, v4, v0, v1}, Landroid/support/v4/widget/ai;->b(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v6

    .line 781
    goto :goto_2

    .line 787
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 789
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->m:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 790
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->n:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 791
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v5}, Landroid/support/v4/widget/ai;->d()I

    move-result v5

    .line 792
    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_9

    cmpl-float v3, v4, v3

    if-gtz v3, :cond_a

    :cond_9
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->m:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 794
    :cond_a
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v0}, Landroid/support/v4/widget/ai;->e()V

    .line 795
    iput-boolean v6, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->k:Z

    goto/16 :goto_1

    .line 771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 659
    sub-int v6, p4, p2

    .line 660
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    .line 661
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingRight()I

    move-result v7

    .line 662
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingTop()I

    move-result v8

    .line 664
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildCount()I

    move-result v9

    .line 668
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->r:Z

    if-eqz v0, :cond_0

    .line 669
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->q:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000

    :goto_0
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->h:F

    .line 672
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    move v4, v3

    :goto_1
    if-ge v5, v9, :cond_6

    .line 673
    invoke-virtual {p0, v5}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 675
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    move v1, v4

    .line 672
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v4, v1

    goto :goto_1

    .line 669
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 679
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/c;

    .line 681
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 682
    const/4 v2, 0x0

    .line 684
    iget-boolean v1, v0, Lam/sunrise/android/calendar/ui/widgets/c;->b:Z

    if-eqz v1, :cond_4

    .line 685
    iget v1, v0, Lam/sunrise/android/calendar/ui/widgets/c;->leftMargin:I

    iget v12, v0, Lam/sunrise/android/calendar/ui/widgets/c;->rightMargin:I

    add-int/2addr v1, v12

    .line 686
    sub-int v12, v6, v7

    iget v13, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->e:I

    sub-int/2addr v12, v13

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int/2addr v12, v4

    sub-int/2addr v12, v1

    .line 688
    iput v12, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->j:I

    .line 689
    iget v1, v0, Lam/sunrise/android/calendar/ui/widgets/c;->leftMargin:I

    add-int/2addr v1, v4

    add-int/2addr v1, v12

    div-int/lit8 v13, v11, 0x2

    add-int/2addr v1, v13

    sub-int v13, v6, v7

    if-le v1, v13, :cond_3

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v0, Lam/sunrise/android/calendar/ui/widgets/c;->c:Z

    .line 691
    int-to-float v1, v12

    iget v12, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->h:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->leftMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    move v1, v0

    move v0, v2

    .line 699
    :goto_4
    sub-int v0, v1, v0

    .line 700
    add-int v2, v0, v11

    .line 702
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 703
    invoke-virtual {v10, v0, v8, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 705
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_2

    .line 689
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 692
    :cond_4
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->l:I

    if-eqz v0, :cond_5

    .line 693
    const/high16 v0, 0x3f800000

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->l:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v3

    .line 694
    goto :goto_4

    :cond_5
    move v0, v2

    move v1, v3

    .line 696
    goto :goto_4

    .line 708
    :cond_6
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->r:Z

    if-eqz v0, :cond_9

    .line 709
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-eqz v0, :cond_a

    .line 710
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->l:I

    if-eqz v0, :cond_7

    .line 711
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->h:F

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(F)V

    .line 713
    :cond_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/c;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->c:Z

    if-eqz v0, :cond_8

    .line 714
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->h:F

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->b:I

    invoke-direct {p0, v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 722
    :cond_8
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/view/View;)V

    .line 725
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->r:Z

    .line 726
    return-void

    .line 718
    :cond_a
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v9, :cond_8

    .line 719
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->b:I

    invoke-direct {p0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 17

    .prologue
    .line 446
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 447
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 448
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 449
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 451
    const/high16 v5, 0x40000000

    if-eq v4, v5, :cond_3

    .line 452
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 457
    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_1

    move v10, v2

    move v12, v3

    move v3, v1

    .line 480
    :goto_0
    const/4 v2, 0x0

    .line 481
    const/4 v1, -0x1

    .line 482
    sparse-switch v10, :sswitch_data_0

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    .line 491
    :goto_1
    const/4 v4, 0x0

    .line 492
    const/4 v7, 0x0

    .line 493
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v12, v3

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingRight()I

    move-result v5

    sub-int v11, v3, v5

    .line 495
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildCount()I

    move-result v13

    .line 497
    const/4 v3, 0x2

    if-le v13, v3, :cond_0

    .line 498
    const-string v3, "SlidingPaneLayout"

    const-string v5, "onMeasure: More than two child views are not supported."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    .line 506
    const/4 v3, 0x0

    move v9, v3

    move v6, v11

    move v8, v1

    move v3, v4

    :goto_2
    if-ge v9, v13, :cond_e

    .line 507
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 508
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/widgets/c;

    .line 510
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 511
    const/4 v4, 0x0

    iput-boolean v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->c:Z

    move v1, v6

    move v4, v3

    move v5, v8

    move v3, v7

    .line 506
    :goto_3
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v7, v3

    move v8, v5

    move v3, v4

    move v6, v1

    goto :goto_2

    .line 459
    :cond_1
    if-nez v4, :cond_1f

    .line 461
    const/16 v3, 0x12c

    move v10, v2

    move v12, v3

    move v3, v1

    goto :goto_0

    .line 464
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_3
    if-nez v2, :cond_1f

    .line 467
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 471
    if-nez v2, :cond_1f

    .line 472
    const/high16 v2, -0x80000000

    .line 473
    const/16 v1, 0x12c

    move v10, v2

    move v12, v3

    move v3, v1

    goto :goto_0

    .line 476
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Height must not be UNSPECIFIED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingTop()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    .line 485
    goto/16 :goto_1

    .line 487
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingTop()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    goto/16 :goto_1

    .line 515
    :cond_5
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->a:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 516
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->a:F

    add-float/2addr v3, v4

    .line 520
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->width:I

    if-nez v4, :cond_6

    move v1, v6

    move v4, v3

    move v5, v8

    move v3, v7

    goto :goto_3

    .line 524
    :cond_6
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->leftMargin:I

    iget v5, v1, Lam/sunrise/android/calendar/ui/widgets/c;->rightMargin:I

    add-int/2addr v4, v5

    .line 525
    iget v5, v1, Lam/sunrise/android/calendar/ui/widgets/c;->width:I

    const/4 v15, -0x2

    if-ne v5, v15, :cond_9

    .line 526
    sub-int v4, v11, v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 536
    :goto_4
    iget v5, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/4 v15, -0x2

    if-ne v5, v15, :cond_b

    .line 537
    const/high16 v5, -0x80000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 544
    :goto_5
    invoke-virtual {v14, v4, v5}, Landroid/view/View;->measure(II)V

    .line 545
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 546
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 548
    const/high16 v15, -0x80000000

    if-ne v10, v15, :cond_7

    if-le v5, v8, :cond_7

    .line 549
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 552
    :cond_7
    sub-int v5, v6, v4

    .line 553
    if-gez v5, :cond_d

    const/4 v4, 0x1

    :goto_6
    iput-boolean v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->b:Z

    or-int/2addr v4, v7

    .line 554
    iget-boolean v1, v1, Lam/sunrise/android/calendar/ui/widgets/c;->b:Z

    if-eqz v1, :cond_8

    .line 555
    move-object/from16 v0, p0

    iput-object v14, v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    :cond_8
    move v1, v5

    move v5, v8

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_3

    .line 528
    :cond_9
    iget v5, v1, Lam/sunrise/android/calendar/ui/widgets/c;->width:I

    const/4 v15, -0x1

    if-ne v5, v15, :cond_a

    .line 529
    sub-int v4, v11, v4

    const/high16 v5, 0x40000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_4

    .line 532
    :cond_a
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->width:I

    const/high16 v5, 0x40000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_4

    .line 538
    :cond_b
    iget v5, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/4 v15, -0x1

    if-ne v5, v15, :cond_c

    .line 539
    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_5

    .line 541
    :cond_c
    iget v5, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/high16 v15, 0x40000000

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_5

    .line 553
    :cond_d
    const/4 v4, 0x0

    goto :goto_6

    .line 560
    :cond_e
    if-nez v7, :cond_f

    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_1d

    .line 561
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->e:I

    sub-int v14, v11, v1

    .line 563
    const/4 v1, 0x0

    move v10, v1

    :goto_7
    if-ge v10, v13, :cond_1d

    .line 564
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 566
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_11

    .line 563
    :cond_10
    :goto_8
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_7

    .line 570
    :cond_11
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/widgets/c;

    .line 572
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_10

    .line 576
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->width:I

    if-nez v4, :cond_13

    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->a:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_13

    const/4 v4, 0x1

    move v9, v4

    .line 577
    :goto_9
    if-eqz v9, :cond_14

    const/4 v4, 0x0

    move v5, v4

    .line 578
    :goto_a
    if-eqz v7, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    if-eq v15, v4, :cond_18

    .line 579
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->width:I

    if-gez v4, :cond_10

    if-gt v5, v14, :cond_12

    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->a:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_10

    .line 583
    :cond_12
    if-eqz v9, :cond_17

    .line 586
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_15

    .line 587
    const/high16 v1, -0x80000000

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 600
    :goto_b
    const/high16 v4, 0x40000000

    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 602
    invoke-virtual {v15, v4, v1}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 576
    :cond_13
    const/4 v4, 0x0

    move v9, v4

    goto :goto_9

    .line 577
    :cond_14
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move v5, v4

    goto :goto_a

    .line 589
    :cond_15
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 590
    const/high16 v1, 0x40000000

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_b

    .line 593
    :cond_16
    iget v1, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/high16 v4, 0x40000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_b

    .line 597
    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v4, 0x40000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_b

    .line 604
    :cond_18
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->a:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-lez v4, :cond_10

    .line 606
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->width:I

    if-nez v4, :cond_1b

    .line 608
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/4 v9, -0x2

    if-ne v4, v9, :cond_19

    .line 609
    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 623
    :goto_c
    if-eqz v7, :cond_1c

    .line 625
    iget v9, v1, Lam/sunrise/android/calendar/ui/widgets/c;->leftMargin:I

    iget v1, v1, Lam/sunrise/android/calendar/ui/widgets/c;->rightMargin:I

    add-int/2addr v1, v9

    .line 626
    sub-int v1, v11, v1

    .line 627
    const/high16 v9, 0x40000000

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 629
    if-eq v5, v1, :cond_10

    .line 630
    invoke-virtual {v15, v9, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 611
    :cond_19
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_1a

    .line 612
    const/high16 v4, 0x40000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_c

    .line 615
    :cond_1a
    iget v4, v1, Lam/sunrise/android/calendar/ui/widgets/c;->height:I

    const/high16 v9, 0x40000000

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_c

    .line 619
    :cond_1b
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v9, 0x40000000

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_c

    .line 634
    :cond_1c
    const/4 v9, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 635
    iget v1, v1, Lam/sunrise/android/calendar/ui/widgets/c;->a:F

    int-to-float v9, v9

    mul-float/2addr v1, v9

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 636
    add-int/2addr v1, v5

    const/high16 v5, 0x40000000

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 638
    invoke-virtual {v15, v1, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 645
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 647
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->setMeasuredDimension(II)V

    .line 648
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v1}, Landroid/support/v4/widget/ai;->a()I

    move-result v1

    if-eqz v1, :cond_1e

    if-nez v7, :cond_1e

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v1}, Landroid/support/v4/widget/ai;->f()V

    .line 654
    :cond_1e
    return-void

    :cond_1f
    move v10, v2

    move v12, v3

    move v3, v1

    goto/16 :goto_0

    .line 482
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1193
    check-cast p1, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;

    .line 1194
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1196
    iget-boolean v0, p1, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;->a:Z

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->b()Z

    .line 1201
    :goto_0
    iget-boolean v0, p1, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;->a:Z

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->q:Z

    .line 1202
    return-void

    .line 1199
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->c()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1183
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1185
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1186
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->d()Z

    move-result v0

    :goto_0
    iput-boolean v0, v1, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout$SavedState;->a:Z

    .line 1188
    return-object v1

    .line 1186
    :cond_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->q:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 730
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 732
    if-eq p1, p3, :cond_0

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->r:Z

    .line 735
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 808
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-nez v0, :cond_1

    .line 809
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 844
    :cond_0
    :goto_0
    return v0

    .line 812
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ai;->b(Landroid/view/MotionEvent;)V

    .line 814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 815
    const/4 v0, 0x1

    .line 817
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 819
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 821
    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->m:F

    .line 822
    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->n:F

    goto :goto_0

    .line 827
    :pswitch_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 830
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->m:F

    sub-float v3, v1, v3

    .line 831
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->n:F

    sub-float v4, v2, v4

    .line 832
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    invoke-virtual {v5}, Landroid/support/v4/widget/ai;->d()I

    move-result v5

    .line 833
    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-int v4, v5, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->p:Landroid/support/v4/widget/ai;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/widget/ai;->b(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Landroid/view/View;I)Z

    goto :goto_0

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 739
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 740
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->f:Z

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->g:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->q:Z

    .line 743
    :cond_0
    return-void

    .line 741
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .prologue
    .line 327
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->c:I

    .line 328
    return-void
.end method

.method public setPanelSlideListener(Lam/sunrise/android/calendar/ui/widgets/d;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->o:Lam/sunrise/android/calendar/ui/widgets/d;

    .line 339
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->l:I

    .line 292
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->requestLayout()V

    .line 293
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    .line 1059
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0

    .prologue
    .line 310
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->b:I

    .line 311
    return-void
.end method
