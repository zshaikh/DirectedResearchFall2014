.class public Lcom/dolphin/browser/launcher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# instance fields
.field a:[[Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:[I

.field private k:Z

.field private l:Landroid/view/View$OnTouchListener;

.field private m:Z

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;",
            "Lcom/g/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/az;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Landroid/graphics/Rect;

.field private r:Lcom/dolphin/browser/launcher/bk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    .line 64
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->k:Z

    .line 69
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->m:Z

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->n:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->o:Ljava/util/ArrayList;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->p:I

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->q:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->setWillNotDraw(Z)V

    .line 101
    sget-object v0, Lcom/dolphin/browser/launcher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 103
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    .line 104
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    .line 105
    const/4 v0, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    .line 106
    const/4 v0, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    .line 107
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    .line 108
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    .line 109
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    mul-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    .line 110
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dolphin/browser/launcher/R$dimen;->icon_display_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->i:I

    .line 111
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    .line 113
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/CellLayout;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(II[[ZZ)V
    .locals 1

    .prologue
    .line 922
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/CellLayout;->c(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    :goto_0
    return-void

    .line 925
    :cond_0
    aget-object v0, p3, p1

    aput-boolean p4, v0, p2

    goto :goto_0
.end method

.method static a(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    new-instance v1, Lcom/dolphin/browser/launcher/e;

    invoke-direct {v1}, Lcom/dolphin/browser/launcher/e;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a(Ljava/util/List;I[ILjava/util/Comparator;I)V

    .line 187
    return-void
.end method

.method static a(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    new-instance v1, Lcom/dolphin/browser/launcher/e;

    invoke-direct {v1}, Lcom/dolphin/browser/launcher/e;-><init>()V

    invoke-static {p0, p1, v0, v1, p2}, Lcom/dolphin/browser/launcher/CellLayout;->a(Ljava/util/List;I[ILjava/util/Comparator;I)V

    .line 191
    return-void
.end method

.method static a(Ljava/util/List;I[ILjava/util/Comparator;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;I[I",
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 195
    if-nez p1, :cond_1

    .line 216
    :cond_0
    return-void

    .line 198
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 199
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v4, v5

    move v3, p4

    .line 201
    :goto_0
    if-ge v4, v6, :cond_0

    .line 202
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 203
    rem-int v2, v3, p1

    .line 204
    div-int v1, v3, p1

    .line 206
    if-eqz p2, :cond_2

    aget v7, p2, v5

    if-ne v7, v2, :cond_2

    const/4 v7, 0x1

    aget v7, p2, v7

    if-ne v7, v1, :cond_2

    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 208
    rem-int v2, v3, p1

    .line 209
    div-int v1, v3, p1

    .line 211
    :cond_2
    iput v2, v0, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 212
    iput v1, v0, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 213
    iput v3, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 201
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIII)Z
    .locals 12

    .prologue
    .line 708
    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    if-ge p2, v1, :cond_0

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    if-ge p3, v1, :cond_0

    if-nez p1, :cond_1

    .line 709
    :cond_0
    const/4 v1, 0x0

    .line 783
    :goto_0
    return v1

    .line 712
    :cond_1
    instance-of v1, p1, Lcom/dolphin/browser/launcher/bh;

    if-nez v1, :cond_2

    .line 713
    const/4 v1, 0x0

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dolphin/browser/launcher/bi;

    .line 717
    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/bi;->j()Z

    move-result v1

    if-nez v1, :cond_3

    .line 718
    const/4 v1, 0x0

    goto :goto_0

    .line 721
    :cond_3
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 725
    invoke-static {v1}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v3

    if-ne v3, p2, :cond_4

    invoke-static {v1}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v3

    if-ne v3, p3, :cond_4

    .line 726
    const/4 v1, 0x0

    goto :goto_0

    .line 730
    :cond_4
    iget-object v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 731
    iget-object v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/g/a/a;

    invoke-virtual {v3}, Lcom/g/a/a;->b()V

    .line 734
    :cond_5
    invoke-static {v1}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v9

    .line 735
    invoke-static {v1}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v10

    .line 736
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b:Z

    .line 737
    iput p2, v2, Lcom/dolphin/browser/launcher/bi;->h:I

    invoke-static {v1, p2}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 738
    iput p3, v2, Lcom/dolphin/browser/launcher/bi;->i:I

    invoke-static {v1, p3}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 740
    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    iget v4, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    iget v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(IIIIII)V

    .line 741
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b:Z

    .line 742
    invoke-static {v1}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v6

    .line 743
    invoke-static {v1}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v8

    .line 745
    invoke-static {v1, v9}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 746
    invoke-static {v1, v10}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 748
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/g/a/an;->b([F)Lcom/g/a/an;

    move-result-object v11

    .line 749
    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v11, v2, v3}, Lcom/g/a/an;->c(J)Lcom/g/a/an;

    .line 750
    iget-object v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    new-instance v2, Lcom/dolphin/browser/launcher/c;

    move-object v3, p0

    move-object v4, v1

    move v5, v9

    move v7, v10

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/dolphin/browser/launcher/c;-><init>(Lcom/dolphin/browser/launcher/CellLayout;Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v11, v2}, Lcom/g/a/an;->a(Lcom/g/a/au;)V

    .line 761
    new-instance v2, Lcom/dolphin/browser/launcher/d;

    invoke-direct {v2, p0, v1, p1}, Lcom/dolphin/browser/launcher/d;-><init>(Lcom/dolphin/browser/launcher/CellLayout;Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v11, v2}, Lcom/g/a/an;->a(Lcom/g/a/b;)V

    .line 779
    move/from16 v0, p5

    int-to-long v1, v0

    invoke-virtual {v11, v1, v2}, Lcom/g/a/an;->e(J)V

    .line 780
    invoke-virtual {v11}, Lcom/g/a/an;->a()V

    .line 781
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 783
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 748
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private a(Ljava/util/ArrayList;[I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;[I)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v3

    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    move v2, v1

    .line 223
    :goto_0
    if-ge v2, v3, :cond_2

    .line 224
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->k()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    .line 234
    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private c(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 795
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    aget-object v1, v1, v0

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return v0

    .line 799
    :cond_1
    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    if-ge v1, v2, :cond_0

    .line 802
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v3

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 155
    :goto_0
    if-ge v2, v3, :cond_0

    .line 156
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 158
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 160
    :goto_1
    if-ge v2, v3, :cond_1

    .line 161
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 163
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 164
    iget v5, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    iget v6, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    rem-int/2addr v5, v6

    iput v5, v0, Lcom/dolphin/browser/launcher/bi;->h:I

    invoke-static {v1, v5}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 165
    iget v5, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    iget v6, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    div-int/2addr v5, v6

    iput v5, v0, Lcom/dolphin/browser/launcher/bi;->i:I

    invoke-static {v1, v5}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 166
    iget v0, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    iput v0, v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a:I

    .line 167
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/launcher/CellLayout;->d(Landroid/view/View;)V

    .line 160
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 169
    :cond_1
    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 395
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 396
    :goto_1
    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    if-ge v2, v3, :cond_1

    .line 397
    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    if-lt v3, v4, :cond_0

    .line 396
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    aget-object v3, v3, v0

    aput-boolean v1, v3, v2

    goto :goto_2

    .line 395
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_2
    return-void
.end method


# virtual methods
.method public a(FF[I)F
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4000000000000000L

    .line 547
    aget v0, p3, v3

    aget v1, p3, v6

    iget-object v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/launcher/CellLayout;->d(II[I)V

    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 550
    return v0
.end method

.method a()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    return v0
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 329
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout;->p:I

    .line 330
    return-void
.end method

.method public a(III)V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    if-ne p3, v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    .line 129
    iput p2, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    .line 130
    iput p3, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    .line 131
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    .line 132
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/CellLayout;->m()V

    .line 133
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->requestLayout()V

    goto :goto_0
.end method

.method public a(IIIII)V
    .locals 4

    .prologue
    .line 137
    iput p1, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    .line 138
    iput p2, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    .line 139
    iput p3, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    .line 140
    iput p4, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    .line 141
    iput p5, p0, Lcom/dolphin/browser/launcher/CellLayout;->i:I

    .line 142
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v2

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 144
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    instance-of v3, v0, Lcom/dolphin/browser/launcher/bh;

    if-eqz v3, :cond_0

    .line 146
    check-cast v0, Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0, p5}, Lcom/dolphin/browser/launcher/bh;->a(I)V

    .line 143
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->requestLayout()V

    .line 150
    return-void
.end method

.method a(II[I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 473
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v1

    .line 475
    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    sub-int v0, v2, v0

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    aput v0, p3, v4

    .line 476
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    aput v0, p3, v5

    .line 478
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    .line 479
    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    .line 481
    aget v2, p3, v4

    if-gez v2, :cond_0

    aput v4, p3, v4

    .line 482
    :cond_0
    aget v2, p3, v4

    if-lt v2, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    aput v2, p3, v4

    .line 483
    :cond_1
    aget v2, p3, v5

    if-gez v2, :cond_2

    aput v4, p3, v5

    .line 484
    :cond_2
    aget v2, p3, v5

    if-lt v2, v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    aput v1, p3, v5

    .line 485
    :cond_3
    aget v1, p3, v5

    mul-int/2addr v1, v0

    aget v2, p3, v4

    add-int/2addr v1, v2

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    if-lt v1, v2, :cond_4

    .line 486
    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr v1, v0

    aput v1, p3, v4

    .line 487
    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    add-int/lit8 v1, v1, -0x1

    div-int v0, v1, v0

    aput v0, p3, v5

    .line 489
    :cond_4
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000

    const/high16 v2, -0x80000000

    .line 631
    instance-of v0, p1, Lcom/dolphin/browser/launcher/bh;

    if-eqz v0, :cond_0

    .line 632
    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    .line 633
    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 635
    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    iget v4, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(IIIIII)V

    .line 636
    iget v1, v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->width:I

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 637
    iget v0, v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->height:I

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 638
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 649
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 641
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 642
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 643
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 646
    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    iget v4, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(IIIIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;[[Z)V
    .locals 3

    .prologue
    .line 894
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 898
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 902
    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v1

    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a(II[[ZZ)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/az;)V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/bk;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dolphin/browser/launcher/CellLayout;->r:Lcom/dolphin/browser/launcher/bk;

    .line 118
    return-void
.end method

.method a(Z)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v9

    .line 255
    if-eqz p1, :cond_0

    .line 257
    const/high16 v6, 0x41f00000

    move v8, v7

    move v5, v7

    .line 258
    :goto_0
    if-ge v8, v9, :cond_2

    .line 259
    invoke-virtual {p0, v8}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 261
    iget v2, v0, Lcom/dolphin/browser/launcher/bi;->h:I

    iget v3, v0, Lcom/dolphin/browser/launcher/bi;->i:I

    const/16 v4, 0xe6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/launcher/CellLayout;->a(Landroid/view/View;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    int-to-float v0, v5

    add-float/2addr v0, v6

    float-to-int v5, v0

    .line 264
    float-to-double v0, v6

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 258
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v6, v0

    goto :goto_0

    :cond_0
    move v2, v7

    .line 268
    :goto_2
    if-ge v2, v9, :cond_1

    .line 269
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 271
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 272
    iget v3, v0, Lcom/dolphin/browser/launcher/bi;->h:I

    invoke-static {v1, v3}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 273
    iget v3, v0, Lcom/dolphin/browser/launcher/bi;->i:I

    invoke-static {v1, v3}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 274
    iget v0, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    iput v0, v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a:I

    .line 268
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->requestLayout()V

    .line 279
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/CellLayout;->n()V

    move v0, v7

    .line 280
    :goto_3
    if-ge v0, v9, :cond_4

    .line 281
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 283
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->d(Landroid/view/View;)V

    .line 280
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 286
    :cond_4
    return-void

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method a([IZ)V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/dolphin/browser/launcher/e;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/e;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/launcher/CellLayout;->a([IZLjava/util/Comparator;)V

    .line 240
    return-void
.end method

.method a([IZLjava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IZ",
            "Ljava/util/Comparator",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    invoke-direct {p0, v1, p1}, Lcom/dolphin/browser/launcher/CellLayout;->a(Ljava/util/ArrayList;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, p3, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a(Ljava/util/List;I[ILjava/util/Comparator;I)V

    .line 250
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/launcher/CellLayout;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1077
    invoke-direct {p0, p2, p3}, Lcom/dolphin/browser/launcher/CellLayout;->c(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return v0

    .line 1080
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->l()Z

    move-result v1

    .line 1081
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1084
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILcom/dolphin/browser/launcher/CellLayout$LayoutParams;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 338
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    if-nez v0, :cond_0

    move v0, v1

    .line 367
    :goto_0
    return v0

    .line 342
    :cond_0
    iget v0, p3, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a:I

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    rem-int/2addr v0, v2

    invoke-static {p3, v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 343
    iget v0, p3, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a:I

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    div-int/2addr v0, v2

    invoke-static {p3, v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;I)I

    .line 345
    invoke-static {p3}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v0

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    if-lt v0, v2, :cond_1

    .line 346
    invoke-static {p3}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 347
    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    mul-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Lcom/dolphin/browser/launcher/CellLayout;->a(III)V

    .line 351
    :cond_1
    invoke-static {p3}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-static {p3}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 353
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 355
    instance-of v2, v0, Landroid/view/ViewManager;

    if-eqz v2, :cond_2

    .line 356
    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 358
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/launcher/bh;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 359
    check-cast v0, Lcom/dolphin/browser/launcher/bh;

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->i:I

    invoke-interface {v0, v2}, Lcom/dolphin/browser/launcher/bh;->a(I)V

    .line 361
    :cond_3
    invoke-virtual {p0, p1, v1, p3}, Lcom/dolphin/browser/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 363
    if-eqz p4, :cond_4

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->d(Landroid/view/View;)V

    .line 365
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method a([I)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 813
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    .line 814
    array-length v1, v0

    if-nez v1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v2

    .line 817
    :cond_1
    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 818
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    iget v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    add-int/2addr v3, v5

    invoke-virtual {p0, v0, v1, v3}, Lcom/dolphin/browser/launcher/CellLayout;->a(III)V

    .line 819
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    :cond_2
    move v1, v2

    .line 821
    :goto_1
    aget-object v3, v0, v2

    array-length v3, v3

    if-ge v1, v3, :cond_0

    move v3, v2

    .line 822
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_5

    .line 823
    iget v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    iget v6, p0, Lcom/dolphin/browser/launcher/CellLayout;->f:I

    if-ge v5, v6, :cond_0

    .line 826
    aget-object v5, v0, v3

    aget-boolean v5, v5, v1

    if-nez v5, :cond_4

    .line 827
    if-eqz p1, :cond_3

    .line 828
    aput v3, p1, v2

    .line 829
    aput v1, p1, v4

    :cond_3
    move v2, v4

    .line 831
    goto :goto_0

    .line 822
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 821
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method b()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    return v0
.end method

.method public b(I)I
    .locals 3

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public b(II)Landroid/view/View;
    .locals 5

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v3

    .line 672
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 673
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 676
    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v0

    if-ne v0, p2, :cond_0

    move-object v0, v1

    .line 680
    :goto_1
    return-object v0

    .line 672
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 680
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->e(Landroid/view/View;)V

    .line 788
    return-void
.end method

.method public b(Landroid/view/View;[[Z)V
    .locals 3

    .prologue
    .line 910
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 914
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 918
    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v1

    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, p2, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a(II[[ZZ)V

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/launcher/az;)V
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->invalidate()V

    .line 1096
    return-void
.end method

.method b([I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 839
    iget-object v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    .line 841
    aget-object v0, v5, v4

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v4

    :goto_0
    if-ltz v3, :cond_1

    .line 842
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 843
    invoke-direct {p0, v2, v3}, Lcom/dolphin/browser/launcher/CellLayout;->c(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 842
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 846
    :cond_0
    aget-object v6, v5, v2

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_2

    .line 854
    :cond_1
    return v0

    .line 849
    :cond_2
    aput v2, p1, v4

    .line 850
    aput v3, p1, v1

    move v0, v1

    .line 851
    goto :goto_2

    .line 841
    :cond_3
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_0
.end method

.method b(II[I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 502
    if-nez p3, :cond_0

    .line 503
    const/4 v0, 0x2

    new-array p3, v0, [I

    .line 505
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/launcher/CellLayout;->a(II[I)V

    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->b([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    aget v0, v0, v2

    aget v1, p3, v2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    aget v0, v0, v2

    aget v1, p3, v2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    aget v0, v0, v3

    aget v1, p3, v3

    if-ge v0, v1, :cond_2

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    aget v0, v0, v3

    aput v0, p3, v3

    .line 510
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    aget v0, v0, v2

    aput v0, p3, v2

    .line 513
    :cond_2
    return-object p3
.end method

.method public c()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    return v0
.end method

.method c(II[I)V
    .locals 5

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 526
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v1

    .line 528
    const/4 v2, 0x0

    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    iget v4, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    add-int/2addr v0, v3

    aput v0, p3, v2

    .line 529
    const/4 v0, 0x1

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 530
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 884
    if-eqz p1, :cond_0

    .line 885
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 887
    :cond_0
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 306
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 309
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 310
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 311
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 945
    instance-of v0, p1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    return v0
.end method

.method d(II[I)V
    .locals 3

    .prologue
    .line 541
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/launcher/CellLayout;->c(II[I)V

    .line 542
    const/4 v0, 0x0

    aget v1, p3, v0

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 543
    const/4 v0, 0x1

    aget v1, p3, v0

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 544
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/CellLayout;->a(Landroid/view/View;[[Z)V

    .line 891
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    return v0
.end method

.method public e(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->a:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/CellLayout;->b(Landroid/view/View;[[Z)V

    .line 907
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->i:I

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 940
    new-instance v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 950
    new-instance v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public h()I
    .locals 3

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 3

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 699
    iget v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    iget v1, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method k()Z
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->a([I)Z

    move-result v0

    return v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1100
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move v1, v2

    .line 1102
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/az;

    .line 1106
    iget-object v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->r:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/bk;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1107
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/az;->c()F

    move-result v4

    float-to-int v4, v4

    .line 1109
    iget v5, v0, Lcom/dolphin/browser/launcher/az;->a:I

    iget v6, v0, Lcom/dolphin/browser/launcher/az;->b:I

    iget-object v7, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    invoke-virtual {p0, v5, v6, v7}, Lcom/dolphin/browser/launcher/CellLayout;->c(II[I)V

    .line 1110
    iget v5, v0, Lcom/dolphin/browser/launcher/az;->a:I

    iget v0, v0, Lcom/dolphin/browser/launcher/az;->b:I

    invoke-virtual {p0, v5, v0}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bh;

    .line 1111
    if-eqz v0, :cond_0

    .line 1112
    iget-object v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->q:Landroid/graphics/Rect;

    invoke-interface {v0, v5}, Lcom/dolphin/browser/launcher/bh;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1114
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    aget v0, v0, v2

    iget-object v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    add-int/2addr v0, v5

    .line 1115
    iget-object v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->j:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/dolphin/browser/launcher/CellLayout;->q:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    add-int/2addr v5, v6

    .line 1117
    div-int/lit8 v6, v4, 0x2

    sub-int v6, v0, v6

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v5, v7

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v0, v8

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v3, v6, v7, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1119
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1102
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1123
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->l:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->l:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x1

    .line 462
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v2

    .line 654
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 655
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 656
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 657
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 659
    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v4

    .line 660
    invoke-static {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d(Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;)I

    move-result v5

    .line 661
    iget v6, v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v4

    iget v0, v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->height:I

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 654
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 664
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/high16 v5, 0x40000000

    const/4 v1, 0x0

    .line 587
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 588
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 590
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 591
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 593
    if-eq v3, v5, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->h()I

    move-result v2

    .line 596
    :cond_0
    if-eq v4, v5, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->i()I

    move-result v0

    .line 599
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/launcher/CellLayout;->setMeasuredDimension(II)V

    .line 601
    iget v3, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    add-int/lit8 v3, v3, 0x1

    .line 602
    iget v4, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    add-int/lit8 v4, v4, 0x1

    .line 603
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v5

    .line 604
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v6

    .line 605
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingRight()I

    move-result v7

    .line 606
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingBottom()I

    move-result v8

    .line 608
    sub-int/2addr v2, v5

    sub-int/2addr v2, v7

    .line 609
    sub-int/2addr v0, v6

    sub-int/2addr v0, v8

    .line 610
    iget v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->d:I

    iget v6, p0, Lcom/dolphin/browser/launcher/CellLayout;->b:I

    mul-int/2addr v5, v6

    sub-int/2addr v2, v5

    .line 611
    iget v5, p0, Lcom/dolphin/browser/launcher/CellLayout;->e:I

    iget v6, p0, Lcom/dolphin/browser/launcher/CellLayout;->c:I

    mul-int/2addr v5, v6

    sub-int/2addr v0, v5

    .line 612
    if-gez v2, :cond_2

    move v2, v1

    .line 615
    :cond_2
    if-gez v0, :cond_3

    move v0, v1

    .line 618
    :cond_3
    div-int/2addr v2, v3

    iput v2, p0, Lcom/dolphin/browser/launcher/CellLayout;->g:I

    .line 619
    div-int/2addr v0, v4

    iput v0, p0, Lcom/dolphin/browser/launcher/CellLayout;->h:I

    .line 621
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v0

    .line 622
    :goto_0
    if-ge v1, v0, :cond_4

    .line 623
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 624
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a(Landroid/view/View;)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_4
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/CellLayout;->n()V

    .line 373
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 374
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 375
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 376
    invoke-static {v2}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 379
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 384
    if-lez v1, :cond_1

    .line 385
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 386
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 387
    invoke-static {v2}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/CellLayout;->n()V

    .line 390
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 392
    :cond_1
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 412
    invoke-static {p1}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 413
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->e(Landroid/view/View;)V

    .line 414
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 415
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 421
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->e(Landroid/view/View;)V

    .line 422
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 423
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 427
    invoke-static {p1}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 428
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->e(Landroid/view/View;)V

    .line 429
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 430
    return-void
.end method

.method public removeViews(II)V
    .locals 2

    .prologue
    .line 434
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 435
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 436
    invoke-static {v1}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 437
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->e(Landroid/view/View;)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 440
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    .prologue
    .line 444
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 446
    invoke-static {v1}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->e(Landroid/view/View;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 450
    return-void
.end method

.method public setChildrenDrawingCacheEnabled(Z)V
    .locals 0

    .prologue
    .line 935
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 936
    return-void
.end method

.method public setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    .prologue
    .line 930
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 931
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method
