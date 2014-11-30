.class public Landroid/support/v4/view/ViewPager2;
.super Landroid/view/ViewGroup;
.source "ViewPager2.java"


# instance fields
.field private A:I

.field private B:Z

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ci;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v4/view/ae;

.field private c:I

.field private d:I

.field private e:Landroid/os/Parcelable;

.field private f:Ljava/lang/ClassLoader;

.field private g:Landroid/widget/Scroller;

.field private h:Landroid/database/DataSetObserver;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:I

.field private v:Landroid/view/VelocityTracker;

.field private w:I

.field private x:I

.field private y:Landroid/support/v4/view/cj;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 184
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    .line 62
    iput v1, p0, Landroid/support/v4/view/ViewPager2;->d:I

    .line 63
    iput-object v2, p0, Landroid/support/v4/view/ViewPager2;->e:Landroid/os/Parcelable;

    .line 64
    iput-object v2, p0, Landroid/support/v4/view/ViewPager2;->f:Ljava/lang/ClassLoader;

    .line 90
    iput v1, p0, Landroid/support/v4/view/ViewPager2;->u:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->z:I

    .line 1006
    const/16 v0, 0xfa

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->A:I

    .line 185
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->a()V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    .line 62
    iput v1, p0, Landroid/support/v4/view/ViewPager2;->d:I

    .line 63
    iput-object v2, p0, Landroid/support/v4/view/ViewPager2;->e:Landroid/os/Parcelable;

    .line 64
    iput-object v2, p0, Landroid/support/v4/view/ViewPager2;->f:Ljava/lang/ClassLoader;

    .line 90
    iput v1, p0, Landroid/support/v4/view/ViewPager2;->u:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->z:I

    .line 1006
    const/16 v0, 0xfa

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->A:I

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->a()V

    .line 191
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 951
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 952
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 953
    iget v2, p0, Landroid/support/v4/view/ViewPager2;->u:I

    if-ne v1, v2, :cond_0

    .line 956
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 957
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager2;->s:F

    .line 958
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->u:I

    .line 959
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 963
    :cond_0
    return-void

    .line 956
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->l:Z

    if-eq v0, p1, :cond_0

    .line 977
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager2;->l:Z

    .line 988
    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->z:I

    if-ne v0, p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager2;->z:I

    .line 208
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cj;->b(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 680
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->n:Z

    if-eqz v0, :cond_2

    .line 682
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager2;->b(Z)V

    .line 683
    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 684
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollX()I

    move-result v1

    .line 685
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollY()I

    move-result v3

    .line 686
    iget-object v4, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 687
    iget-object v5, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 688
    if-ne v1, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 689
    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/support/v4/view/ViewPager2;->scrollTo(II)V

    .line 691
    :cond_1
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager2;->d(I)V

    .line 693
    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager2;->m:Z

    .line 694
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager2;->n:Z

    move v1, v2

    move v3, v0

    .line 695
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 696
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ci;

    .line 697
    iget-boolean v4, v0, Landroid/support/v4/view/ci;->c:Z

    if-eqz v4, :cond_3

    .line 698
    const/4 v3, 0x1

    .line 699
    iput-boolean v2, v0, Landroid/support/v4/view/ci;->c:Z

    .line 695
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 702
    :cond_4
    if-eqz v3, :cond_5

    .line 703
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->d()V

    .line 705
    :cond_5
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 966
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    .line 967
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->p:Z

    .line 969
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    .line 973
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)Landroid/support/v4/view/ci;
    .locals 4

    .prologue
    .line 557
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 558
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ci;

    .line 559
    iget-object v2, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    iget-object v3, v0, Landroid/support/v4/view/ci;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    :goto_1
    return-object v0

    .line 557
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 563
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager2;->setWillNotDraw(Z)V

    .line 195
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/support/v4/view/bj;->a(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager2;->q:I

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager2;->w:I

    .line 199
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->x:I

    .line 200
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/ViewPager2;->a(IZ)V

    .line 244
    return-void
.end method

.method a(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 304
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager2;->b(Z)V

    .line 323
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollX()I

    move-result v1

    .line 310
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollY()I

    move-result v2

    .line 311
    sub-int v3, p1, v1

    .line 312
    sub-int v4, p2, v2

    .line 313
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 314
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager2;->g()V

    goto :goto_0

    .line 318
    :cond_1
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager2;->b(Z)V

    .line 319
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager2;->n:Z

    .line 320
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager2;->d(I)V

    .line 321
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    iget v5, p0, Landroid/support/v4/view/ViewPager2;->A:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 322
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->invalidate()V

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 247
    if-eqz p2, :cond_0

    .line 248
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->m:Z

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager2;->a(IZZ)V

    .line 251
    return-void
.end method

.method a(IZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v0

    if-gtz v0, :cond_2

    .line 255
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager2;->b(Z)V

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    if-nez p3, :cond_3

    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->B:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 260
    :cond_4
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager2;->b(Z)V

    goto :goto_0

    .line 263
    :cond_5
    if-gez p1, :cond_8

    move p1, v1

    .line 268
    :cond_6
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_7

    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_9

    :cond_7
    move v2, v1

    .line 272
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 273
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ci;

    iput-boolean v3, v0, Landroid/support/v4/view/ci;->c:Z

    .line 272
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 265
    :cond_8
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v0

    if-lt p1, v0, :cond_6

    .line 266
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 276
    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    if-eq v0, p1, :cond_a

    move v0, v3

    .line 277
    :goto_3
    iput p1, p0, Landroid/support/v4/view/ViewPager2;->c:I

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->d()V

    .line 279
    if-eqz p2, :cond_b

    .line 280
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/view/ViewPager2;->a(II)V

    .line 281
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cj;->a(I)V

    goto :goto_0

    :cond_a
    move v0, v1

    .line 276
    goto :goto_3

    .line 285
    :cond_b
    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    if-eqz v0, :cond_c

    .line 286
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cj;->a(I)V

    .line 288
    :cond_c
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager2;->g()V

    .line 289
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager2;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public a(Landroid/support/v4/view/ae;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->h:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ae;->b(Landroid/database/DataSetObserver;)V

    .line 218
    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    .line 220
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->h:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Landroid/support/v4/view/ck;

    invoke-direct {v0, p0, v3}, Landroid/support/v4/view/ck;-><init>(Landroid/support/v4/view/ViewPager2;Landroid/support/v4/view/ch;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager2;->h:Landroid/database/DataSetObserver;

    .line 224
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->h:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ae;->a(Landroid/database/DataSetObserver;)V

    .line 225
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager2;->m:Z

    .line 226
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->d:I

    if-ltz v0, :cond_3

    .line 227
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->e:Landroid/os/Parcelable;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager2;->f:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ae;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 228
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->d:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v4, v1}, Landroid/support/v4/view/ViewPager2;->a(IZZ)V

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->d:I

    .line 230
    iput-object v3, p0, Landroid/support/v4/view/ViewPager2;->e:Landroid/os/Parcelable;

    .line 231
    iput-object v3, p0, Landroid/support/v4/view/ViewPager2;->f:Ljava/lang/ClassLoader;

    .line 236
    :cond_2
    :goto_0
    return-void

    .line 233
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->d()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/view/cj;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    .line 295
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1026
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager2;->B:Z

    .line 1027
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->k:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager2;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 542
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->i:I

    iget v1, p0, Landroid/support/v4/view/ViewPager2;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 554
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public b()Landroid/support/v4/view/ae;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 1009
    iput p1, p0, Landroid/support/v4/view/ViewPager2;->A:I

    .line 1010
    return-void
.end method

.method b(II)V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/support/v4/view/ci;

    invoke-direct {v0}, Landroid/support/v4/view/ci;-><init>()V

    .line 327
    iput p1, v0, Landroid/support/v4/view/ci;->b:I

    .line 328
    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/ae;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ci;->a:Ljava/lang/Object;

    .line 329
    if-gez p2, :cond_0

    .line 330
    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method c()V
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 339
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    move v3, v2

    move v4, v5

    move v6, v0

    .line 342
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 343
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ci;

    .line 344
    iget-object v7, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    iget-object v8, v0, Landroid/support/v4/view/ci;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ae;->a(Ljava/lang/Object;)I

    move-result v7

    .line 346
    if-ne v7, v5, :cond_1

    move v0, v3

    move v3, v4

    move v4, v6

    .line 342
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 339
    goto :goto_0

    .line 350
    :cond_1
    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    .line 351
    iget-object v6, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 352
    add-int/lit8 v3, v3, -0x1

    .line 353
    iget-object v6, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    iget v7, v0, Landroid/support/v4/view/ci;->b:I

    iget-object v8, v0, Landroid/support/v4/view/ci;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8}, Landroid/support/v4/view/ae;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 356
    iget v6, p0, Landroid/support/v4/view/ViewPager2;->c:I

    iget v0, v0, Landroid/support/v4/view/ci;->b:I

    if-ne v6, v0, :cond_8

    .line 358
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    iget-object v4, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v4}, Landroid/support/v4/view/ae;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v3

    move v3, v4

    move v4, v1

    goto :goto_2

    .line 363
    :cond_2
    iget v8, v0, Landroid/support/v4/view/ci;->b:I

    if-eq v8, v7, :cond_7

    .line 364
    iget v6, v0, Landroid/support/v4/view/ci;->b:I

    iget v8, p0, Landroid/support/v4/view/ViewPager2;->c:I

    if-ne v6, v8, :cond_3

    move v4, v7

    .line 369
    :cond_3
    iput v7, v0, Landroid/support/v4/view/ci;->b:I

    move v0, v3

    move v3, v4

    move v4, v1

    .line 370
    goto :goto_2

    .line 374
    :cond_4
    if-ltz v4, :cond_6

    .line 376
    invoke-virtual {p0, v4, v2, v1}, Landroid/support/v4/view/ViewPager2;->a(IZZ)V

    .line 379
    :goto_3
    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->d()V

    .line 381
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->requestLayout()V

    .line 383
    :cond_5
    return-void

    :cond_6
    move v1, v6

    goto :goto_3

    :cond_7
    move v0, v3

    move v3, v4

    move v4, v6

    goto :goto_2

    :cond_8
    move v0, v3

    move v3, v4

    move v4, v1

    goto :goto_2
.end method

.method public c(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1019
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->B:Z

    if-nez v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 648
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 649
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 651
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollX()I

    move-result v0

    .line 652
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollY()I

    move-result v1

    .line 653
    iget-object v2, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 654
    iget-object v3, p0, Landroid/support/v4/view/ViewPager2;->g:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 656
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 657
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager2;->scrollTo(II)V

    .line 660
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getWidth()I

    move-result v0

    .line 662
    div-int v1, v2, v0

    .line 663
    rem-int/2addr v2, v0

    .line 664
    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 665
    iget-object v3, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    invoke-interface {v3, v1, v0, v2}, Landroid/support/v4/view/cj;->a(IFI)V

    .line 669
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->invalidate()V

    .line 676
    :goto_0
    return-void

    .line 675
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager2;->g()V

    goto :goto_0
.end method

.method d()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 386
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->m:Z

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ae;->a(Landroid/view/ViewGroup;)V

    .line 408
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 409
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v0

    .line 410
    iget v2, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_4

    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 416
    :goto_2
    const/4 v0, 0x0

    move v3, v0

    move v4, v5

    :goto_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 417
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ci;

    .line 418
    iget v6, v0, Landroid/support/v4/view/ci;->b:I

    if-lt v6, v1, :cond_2

    iget v6, v0, Landroid/support/v4/view/ci;->b:I

    if-le v6, v2, :cond_5

    :cond_2
    iget-boolean v6, v0, Landroid/support/v4/view/ci;->c:Z

    if-nez v6, :cond_5

    .line 420
    iget-object v4, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 421
    add-int/lit8 v3, v3, -0x1

    .line 422
    iget-object v4, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    iget v6, v0, Landroid/support/v4/view/ci;->b:I

    iget-object v7, v0, Landroid/support/v4/view/ci;->a:Ljava/lang/Object;

    invoke-virtual {v4, p0, v6, v7}, Landroid/support/v4/view/ae;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move v4, v3

    .line 438
    :goto_4
    iget v3, v0, Landroid/support/v4/view/ci;->b:I

    .line 416
    add-int/lit8 v0, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_3

    .line 408
    :cond_3
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    move v1, v0

    goto :goto_1

    .line 410
    :cond_4
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_2

    .line 423
    :cond_5
    if-ge v4, v2, :cond_b

    iget v6, v0, Landroid/support/v4/view/ci;->b:I

    if-le v6, v1, :cond_b

    .line 427
    add-int/lit8 v4, v4, 0x1

    .line 428
    if-ge v4, v1, :cond_6

    move v4, v1

    .line 431
    :cond_6
    :goto_5
    if-gt v4, v2, :cond_b

    iget v6, v0, Landroid/support/v4/view/ci;->b:I

    if-ge v4, v6, :cond_b

    .line 433
    invoke-virtual {p0, v4, v3}, Landroid/support/v4/view/ViewPager2;->b(II)V

    .line 434
    add-int/lit8 v4, v4, 0x1

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 442
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager2;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ci;

    iget v0, v0, Landroid/support/v4/view/ci;->b:I

    .line 443
    :goto_6
    if-ge v0, v2, :cond_a

    .line 444
    add-int/lit8 v0, v0, 0x1

    .line 445
    if-le v0, v1, :cond_8

    move v1, v0

    .line 446
    :cond_8
    :goto_7
    if-gt v1, v2, :cond_a

    .line 448
    invoke-virtual {p0, v1, v5}, Landroid/support/v4/view/ViewPager2;->b(II)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    move v0, v5

    .line 442
    goto :goto_6

    .line 460
    :cond_a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ae;->b(Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_b
    move v4, v3

    goto :goto_4
.end method

.method public e()V
    .locals 1

    .prologue
    .line 1013
    const/16 v0, 0xfa

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->A:I

    .line 1014
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 568
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 569
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->d()V

    .line 572
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 718
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    if-ne v2, v0, :cond_2

    .line 721
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    .line 722
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->p:Z

    .line 723
    iput v4, p0, Landroid/support/v4/view/ViewPager2;->u:I

    move v0, v1

    .line 819
    :cond_1
    :goto_0
    return v0

    .line 729
    :cond_2
    if-eqz v2, :cond_3

    .line 730
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    if-nez v3, :cond_1

    .line 734
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager2;->p:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 736
    goto :goto_0

    .line 740
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 819
    :cond_4
    :goto_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    goto :goto_0

    .line 751
    :sswitch_0
    iget v1, p0, Landroid/support/v4/view/ViewPager2;->u:I

    .line 752
    if-eq v1, v4, :cond_4

    .line 757
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 758
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 759
    iget v3, p0, Landroid/support/v4/view/ViewPager2;->s:F

    sub-float v3, v2, v3

    .line 760
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 761
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 762
    iget v4, p0, Landroid/support/v4/view/ViewPager2;->t:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 765
    iget v4, p0, Landroid/support/v4/view/ViewPager2;->q:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 767
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    .line 768
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager2;->d(I)V

    .line 769
    iput v2, p0, Landroid/support/v4/view/ViewPager2;->s:F

    .line 770
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager2;->b(Z)V

    goto :goto_1

    .line 772
    :cond_5
    iget v2, p0, Landroid/support/v4/view/ViewPager2;->q:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 778
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->p:Z

    goto :goto_1

    .line 789
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager2;->r:F

    iput v2, p0, Landroid/support/v4/view/ViewPager2;->s:F

    .line 790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager2;->t:F

    .line 791
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager2;->u:I

    .line 793
    iget v2, p0, Landroid/support/v4/view/ViewPager2;->z:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 795
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    .line 796
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->p:Z

    .line 797
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager2;->d(I)V

    goto :goto_1

    .line 799
    :cond_6
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager2;->g()V

    .line 800
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    .line 801
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->p:Z

    goto :goto_1

    .line 811
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager2;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 740
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 621
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->k:Z

    .line 622
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->d()V

    .line 623
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->k:Z

    .line 625
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getChildCount()I

    move-result v1

    .line 626
    sub-int v2, p4, p2

    .line 628
    :goto_0
    if-ge v0, v1, :cond_1

    .line 629
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 631
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager2;->a(Landroid/view/View;)Landroid/support/v4/view/ci;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 632
    iget v4, v4, Landroid/support/v4/view/ci;->b:I

    mul-int/2addr v4, v2

    .line 633
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 634
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getPaddingTop()I

    move-result v5

    .line 638
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 628
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000

    const/4 v0, 0x0

    .line 581
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager2;->getDefaultSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewPager2;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/view/ViewPager2;->setMeasuredDimension(II)V

    .line 585
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager2;->i:I

    .line 587
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager2;->j:I

    .line 591
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->k:Z

    .line 592
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->d()V

    .line 593
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->k:Z

    .line 596
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getChildCount()I

    move-result v1

    .line 597
    :goto_0
    if-ge v0, v1, :cond_1

    .line 598
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 599
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 602
    iget v3, p0, Landroid/support/v4/view/ViewPager2;->i:I

    iget v4, p0, Landroid/support/v4/view/ViewPager2;->j:I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 597
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 520
    instance-of v0, p1, Landroid/support/v4/view/ViewPager2$SavedState;

    if-nez v0, :cond_0

    .line 521
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 536
    :goto_0
    return-void

    .line 525
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager2$SavedState;

    .line 526
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 528
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager2$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager2$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ae;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 530
    iget v0, p1, Landroid/support/v4/view/ViewPager2$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager2;->a(IZZ)V

    goto :goto_0

    .line 532
    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager2$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->d:I

    .line 533
    iget-object v0, p1, Landroid/support/v4/view/ViewPager2$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager2;->e:Landroid/os/Parcelable;

    .line 534
    iget-object v0, p1, Landroid/support/v4/view/ViewPager2$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager2;->f:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 511
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 512
    new-instance v1, Landroid/support/v4/view/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 513
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    iput v0, v1, Landroid/support/v4/view/ViewPager2$SavedState;->a:I

    .line 514
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->b_()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager2$SavedState;->b:Landroid/os/Parcelable;

    .line 515
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 609
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 612
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    mul-int/2addr v0, p1

    .line 613
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 614
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager2;->g()V

    .line 615
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager2;->scrollTo(II)V

    .line 617
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    if-eqz v1, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v0

    .line 831
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v1}, Landroid/support/v4/view/ae;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    .line 837
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    .line 839
    :cond_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 843
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v0, v3

    .line 947
    goto :goto_0

    .line 849
    :pswitch_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager2;->g()V

    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager2;->r:F

    iput v1, p0, Landroid/support/v4/view/ViewPager2;->s:F

    .line 853
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->u:I

    goto :goto_1

    .line 857
    :pswitch_2
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    if-nez v1, :cond_4

    .line 858
    iget v1, p0, Landroid/support/v4/view/ViewPager2;->u:I

    invoke-static {p1, v1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 859
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 860
    iget v4, p0, Landroid/support/v4/view/ViewPager2;->s:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 861
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 862
    iget v5, p0, Landroid/support/v4/view/ViewPager2;->t:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 864
    iget v5, p0, Landroid/support/v4/view/ViewPager2;->q:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_4

    .line 866
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    .line 867
    iput v2, p0, Landroid/support/v4/view/ViewPager2;->s:F

    .line 868
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager2;->d(I)V

    .line 869
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager2;->b(Z)V

    .line 872
    :cond_4
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    if-eqz v1, :cond_3

    .line 874
    iget v1, p0, Landroid/support/v4/view/ViewPager2;->u:I

    invoke-static {p1, v1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 876
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 877
    iget v2, p0, Landroid/support/v4/view/ViewPager2;->s:F

    sub-float/2addr v2, v1

    .line 878
    iput v1, p0, Landroid/support/v4/view/ViewPager2;->s:F

    .line 879
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 880
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getWidth()I

    move-result v4

    .line 882
    iget v1, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 883
    iget v1, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Landroid/support/v4/view/ViewPager2;->b:Landroid/support/v4/view/ae;

    invoke-virtual {v5}, Landroid/support/v4/view/ae;->a()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/2addr v1, v4

    int-to-float v1, v1

    .line 885
    cmpg-float v5, v2, v0

    if-gez v5, :cond_5

    .line 891
    :goto_2
    iget v1, p0, Landroid/support/v4/view/ViewPager2;->s:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/view/ViewPager2;->s:F

    .line 892
    float-to-int v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager2;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 895
    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/view/ViewPager2;->scrollTo(II)V

    .line 896
    iget-object v1, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    if-eqz v1, :cond_3

    .line 897
    float-to-int v1, v0

    div-int/2addr v1, v4

    .line 898
    float-to-int v0, v0

    rem-int/2addr v0, v4

    .line 899
    int-to-float v2, v0

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 900
    iget-object v4, p0, Landroid/support/v4/view/ViewPager2;->y:Landroid/support/v4/view/cj;

    invoke-interface {v4, v1, v2, v0}, Landroid/support/v4/view/cj;->a(IFI)V

    goto/16 :goto_1

    .line 887
    :cond_5
    cmpl-float v0, v2, v1

    if-lez v0, :cond_9

    move v0, v1

    .line 888
    goto :goto_2

    .line 906
    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    if-eqz v0, :cond_3

    .line 907
    iget-object v0, p0, Landroid/support/v4/view/ViewPager2;->v:Landroid/view/VelocityTracker;

    .line 908
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager2;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 909
    iget v1, p0, Landroid/support/v4/view/ViewPager2;->u:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ao;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 911
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager2;->m:Z

    .line 912
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager2;->w:I

    if-gt v0, v1, :cond_6

    iget v0, p0, Landroid/support/v4/view/ViewPager2;->r:F

    iget v1, p0, Landroid/support/v4/view/ViewPager2;->s:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager2;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    .line 914
    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->s:F

    iget v1, p0, Landroid/support/v4/view/ViewPager2;->r:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 915
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3, v3}, Landroid/support/v4/view/ViewPager2;->a(IZZ)V

    .line 923
    :goto_3
    iput v4, p0, Landroid/support/v4/view/ViewPager2;->u:I

    .line 924
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager2;->h()V

    goto/16 :goto_1

    .line 917
    :cond_7
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3, v3}, Landroid/support/v4/view/ViewPager2;->a(IZZ)V

    goto :goto_3

    .line 920
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    invoke-virtual {p0, v0, v3, v3}, Landroid/support/v4/view/ViewPager2;->a(IZZ)V

    goto :goto_3

    .line 928
    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager2;->o:Z

    if-eqz v0, :cond_3

    .line 929
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->c:I

    invoke-virtual {p0, v0, v3, v3}, Landroid/support/v4/view/ViewPager2;->a(IZZ)V

    .line 930
    iput v4, p0, Landroid/support/v4/view/ViewPager2;->u:I

    .line 931
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager2;->h()V

    goto/16 :goto_1

    .line 935
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 936
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 937
    iput v1, p0, Landroid/support/v4/view/ViewPager2;->s:F

    .line 938
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->u:I

    goto/16 :goto_1

    .line 942
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager2;->a(Landroid/view/MotionEvent;)V

    .line 943
    iget v0, p0, Landroid/support/v4/view/ViewPager2;->u:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager2;->s:F

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    .line 843
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
