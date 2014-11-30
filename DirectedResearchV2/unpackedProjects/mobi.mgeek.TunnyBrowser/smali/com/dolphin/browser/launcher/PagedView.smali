.class public Lcom/dolphin/browser/launcher/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field protected A:Z

.field protected B:Z

.field private C:Landroid/view/VelocityTracker;

.field private D:F

.field private E:I

.field private F:[I

.field private G:[I

.field private H:I

.field private I:I

.field private J:Lcom/dolphin/browser/launcher/cf;

.field private K:Lcom/dolphin/browser/launcher/ce;

.field private L:Lcom/dolphin/browser/launcher/ch;

.field private M:Z

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:F

.field protected e:F

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Landroid/widget/Scroller;

.field protected k:F

.field protected l:F

.field protected m:F

.field protected n:F

.field protected o:I

.field protected p:Z

.field protected q:Landroid/view/View$OnLongClickListener;

.field protected r:Z

.field protected s:I

.field protected t:I

.field protected u:Z

.field protected v:I

.field protected w:[I

.field protected x:Z

.field protected y:I

.field protected z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->f:I

    .line 80
    iput v2, p0, Lcom/dolphin/browser/launcher/PagedView;->h:I

    .line 90
    iput v2, p0, Lcom/dolphin/browser/launcher/PagedView;->E:I

    .line 100
    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    .line 101
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/PagedView;->p:Z

    .line 105
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/PagedView;->r:Z

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->w:[I

    .line 118
    iput v2, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    .line 128
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/PagedView;->A:Z

    .line 130
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/PagedView;->B:Z

    .line 133
    iput-boolean v3, p0, Lcom/dolphin/browser/launcher/PagedView;->M:Z

    .line 158
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->c(I)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->a()V

    .line 161
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1128
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1131
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 1141
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1142
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1143
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    if-ne v1, v2, :cond_0

    .line 1147
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1148
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->D:F

    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    .line 1149
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->m:F

    .line 1150
    const/4 v1, 0x0

    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->l:F

    .line 1151
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    .line 1152
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1156
    :cond_0
    return-void

    .line 1147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    .line 1138
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4

    .prologue
    .line 1234
    const/high16 v0, 0x3f000000

    sub-float v0, p1, v0

    .line 1235
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 1236
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->z:Ljava/util/ArrayList;

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->z:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 169
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/dolphin/browser/launcher/ci;

    invoke-direct {v2}, Lcom/dolphin/browser/launcher/ci;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->u:Z

    .line 173
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->s:I

    .line 175
    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->s:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->H:I

    .line 176
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->I:I

    .line 177
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->d:F

    .line 179
    const/high16 v0, 0x43fa0000

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->a:I

    .line 180
    const/high16 v0, 0x437a0000

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->b:I

    .line 181
    const v0, 0x44bb8000

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->c:I

    .line 182
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/launcher/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 183
    return-void
.end method

.method protected a(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000

    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1241
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1248
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->e(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1249
    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->v:I

    sub-int/2addr v2, v3

    .line 1252
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/dolphin/browser/launcher/PagedView;->b:I

    if-ge v3, v4, :cond_0

    .line 1256
    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/PagedView;->b(II)V

    .line 1282
    :goto_0
    return-void

    .line 1267
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1268
    int-to-float v4, v1

    int-to-float v1, v1

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/launcher/PagedView;->a(F)F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    .line 1271
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1272
    iget v4, p0, Lcom/dolphin/browser/launcher/PagedView;->c:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1279
    const/high16 v4, 0x447a0000

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 1281
    invoke-virtual {p0, v0, v2, v1}, Lcom/dolphin/browser/launcher/PagedView;->a(III)V

    goto :goto_0
.end method

.method protected a(III)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1303
    iput p1, p0, Lcom/dolphin/browser/launcher/PagedView;->h:I

    .line 1305
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1308
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1311
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->f()V

    .line 1312
    if-nez p3, :cond_2

    .line 1313
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1316
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->v:I

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1320
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->e()V

    .line 1321
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->invalidate()V

    .line 1322
    return-void

    :cond_2
    move v5, p3

    goto :goto_0
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 912
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(Landroid/view/MotionEvent;F)V

    .line 913
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;F)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 924
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 925
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 929
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 930
    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v5, v3

    .line 931
    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->m:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v6, v2

    .line 933
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->s:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 934
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->H:I

    if-le v5, v2, :cond_5

    move v3, v1

    .line 935
    :goto_1
    if-le v5, v7, :cond_6

    move v2, v1

    .line 936
    :goto_2
    if-le v6, v7, :cond_2

    move v0, v1

    .line 938
    :cond_2
    if-gt v6, v5, :cond_0

    .line 941
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    .line 942
    :cond_3
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->A:Z

    if-eqz v0, :cond_7

    if-eqz v3, :cond_4

    .line 944
    :goto_3
    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    .line 945
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    .line 946
    iput v4, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    .line 947
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->l:F

    .line 948
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->e:F

    .line 949
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->f()V

    .line 952
    :cond_4
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->l()V

    goto :goto_0

    :cond_5
    move v3, v0

    .line 934
    goto :goto_1

    :cond_6
    move v2, v0

    .line 935
    goto :goto_2

    .line 942
    :cond_7
    if-eqz v2, :cond_4

    goto :goto_3
.end method

.method protected a([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v4

    .line 605
    if-lez v4, :cond_2

    .line 606
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v5

    .line 609
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    move v2, v3

    .line 611
    :goto_0
    add-int/lit8 v1, v4, -0x1

    if-ge v2, v1, :cond_0

    invoke-static {v0}, Lcom/g/c/a;->e(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 612
    add-int/lit8 v2, v2, 0x1

    .line 613
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 616
    :cond_0
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    move v1, v2

    .line 619
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_1

    invoke-static {v0}, Lcom/g/c/a;->e(Landroid/view/View;)F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v6, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v6, v6

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    .line 620
    add-int/lit8 v1, v1, 0x1

    .line 621
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 623
    :cond_1
    aput v2, p1, v3

    .line 624
    aput v1, p1, v7

    .line 629
    :goto_2
    return-void

    .line 626
    :cond_2
    aput v0, p1, v3

    .line 627
    aput v0, p1, v7

    goto :goto_2
.end method

.method protected a(FF)Z
    .locals 2

    .prologue
    .line 793
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->t:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 632
    invoke-static {p1}, Lcom/g/c/a;->a(Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 733
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 734
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 736
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 737
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    if-lez v0, :cond_1

    .line 738
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 745
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 741
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 742
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    return v0
.end method

.method protected b(I)I
    .locals 0

    .prologue
    .line 223
    return p1
.end method

.method protected b(II)V
    .locals 3

    .prologue
    .line 1289
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1296
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->e(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1297
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->v:I

    .line 1298
    sub-int/2addr v1, v2

    .line 1299
    invoke-virtual {p0, v0, v1, p2}, Lcom/dolphin/browser/launcher/PagedView;->a(III)V

    .line 1300
    return-void
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1159
    return-void
.end method

.method protected b(FF)Z
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->t:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()I
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 494
    iput p1, p0, Lcom/dolphin/browser/launcher/PagedView;->t:I

    .line 495
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->k()V

    .line 496
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->j()Z

    .line 367
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->e(I)I

    move-result v0

    .line 233
    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v1

    .line 234
    sub-int/2addr v0, v1

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/PagedView;->scrollTo(II)V

    .line 236
    iget-object v1, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 238
    return-void
.end method

.method protected d(I)V
    .locals 0

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->p()V

    .line 533
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v3, -0x1

    const/4 v9, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 638
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 640
    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->E:I

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/dolphin/browser/launcher/PagedView;->p:Z

    if-eqz v1, :cond_1

    .line 644
    :cond_0
    iput-boolean v9, p0, Lcom/dolphin/browser/launcher/PagedView;->p:Z

    .line 645
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->d(I)V

    .line 646
    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->E:I

    .line 651
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v0

    .line 652
    if-lez v0, :cond_5

    .line 653
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->w:[I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a([I)V

    .line 654
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->w:[I

    aget v1, v0, v9

    .line 655
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->w:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 656
    if-eq v1, v3, :cond_5

    if-eq v2, v3, :cond_5

    .line 657
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getDrawingTime()J

    move-result-wide v3

    .line 659
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 660
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 674
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 675
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v5

    .line 676
    iget-boolean v6, p0, Lcom/dolphin/browser/launcher/PagedView;->x:Z

    if-nez v6, :cond_2

    if-gt v1, v0, :cond_3

    if-gt v0, v2, :cond_3

    invoke-virtual {p0, v5}, Lcom/dolphin/browser/launcher/PagedView;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 678
    :cond_2
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 679
    invoke-virtual {p0, p1, v5, v3, v4}, Lcom/dolphin/browser/launcher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 674
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 681
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 684
    :cond_4
    iput-boolean v9, p0, Lcom/dolphin/browser/launcher/PagedView;->x:Z

    .line 685
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 688
    :cond_5
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 717
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->b()I

    move-result v1

    if-lez v1, :cond_1

    .line 719
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->h(I)V

    .line 728
    :goto_0
    return v0

    .line 722
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 724
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->h(I)V

    goto :goto_0

    .line 728
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected e(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 569
    iget-object v3, p0, Lcom/dolphin/browser/launcher/PagedView;->F:[I

    .line 571
    if-eqz v3, :cond_1

    aget v1, v3, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 572
    aget v0, v3, p1

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v1

    move v5, v0

    move v0, v1

    move v1, v5

    .line 578
    :goto_1
    if-ge v1, p1, :cond_2

    .line 579
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, p0, Lcom/dolphin/browser/launcher/PagedView;->t:I

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    .line 578
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 581
    :cond_2
    if-eqz v3, :cond_0

    .line 582
    aput v0, v3, p1

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->J:Lcom/dolphin/browser/launcher/cf;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->J:Lcom/dolphin/browser/launcher/cf;

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/launcher/cf;->a(Landroid/view/View;I)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->p()V

    .line 266
    return-void
.end method

.method protected f(I)I
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->G:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->G:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->G:[I

    aget v0, v0, p1

    .line 598
    :cond_0
    :goto_0
    return v0

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->g(I)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 595
    iget-object v1, p0, Lcom/dolphin/browser/launcher/PagedView;->G:[I

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/dolphin/browser/launcher/PagedView;->G:[I

    aput v0, v1, p1

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->B:Z

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->B:Z

    .line 271
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->h()V

    .line 273
    :cond_0
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 755
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 758
    :goto_0
    if-ne v0, v1, :cond_1

    .line 759
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 769
    :cond_0
    return-void

    .line 762
    :cond_1
    if-eq v0, p0, :cond_0

    .line 765
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 766
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 767
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method protected g(I)I
    .locals 1

    .prologue
    .line 1185
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1186
    if-nez v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    .line 1190
    :cond_0
    return v0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->B:Z

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->B:Z

    .line 278
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->i()V

    .line 280
    :cond_0
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 1285
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/PagedView;->b(II)V

    .line 1286
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method protected j()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 340
    iget-object v2, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/launcher/PagedView;->scrollTo(II)V

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->invalidate()V

    .line 361
    :cond_2
    :goto_0
    return v0

    .line 347
    :cond_3
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->h:I

    if-eq v2, v4, :cond_4

    .line 348
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->h:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    .line 349
    iput v4, p0, Lcom/dolphin/browser/launcher/PagedView;->h:I

    .line 350
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->e()V

    .line 355
    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    if-nez v1, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->g()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 361
    goto :goto_0
.end method

.method protected k()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 553
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v1

    .line 554
    if-nez v1, :cond_1

    .line 555
    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->F:[I

    .line 556
    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->G:[I

    .line 566
    :cond_0
    return-void

    .line 560
    :cond_1
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->F:[I

    .line 561
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->G:[I

    .line 562
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 563
    iget-object v2, p0, Lcom/dolphin/browser/launcher/PagedView;->F:[I

    aput v3, v2, v0

    .line 564
    iget-object v2, p0, Lcom/dolphin/browser/launcher/PagedView;->G:[I

    aput v3, v2, v0

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->r:Z

    if-eqz v0, :cond_0

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->r:Z

    .line 962
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 963
    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 967
    :cond_0
    return-void
.end method

.method m()I
    .locals 7

    .prologue
    .line 1194
    const v3, 0x7fffffff

    .line 1195
    const/4 v0, -0x1

    .line 1196
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    .line 1197
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v5

    .line 1198
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 1199
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v2

    .line 1200
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1201
    div-int/lit8 v2, v2, 0x2

    .line 1202
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->e(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 1203
    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1204
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 1198
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 1209
    :cond_0
    return v0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->m()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/PagedView;->b(II)V

    .line 1214
    return-void
.end method

.method protected o()Lcom/dolphin/browser/launcher/ch;
    .locals 2

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->L:Lcom/dolphin/browser/launcher/ch;

    if-nez v0, :cond_0

    .line 1403
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1404
    if-eqz v0, :cond_0

    .line 1405
    sget v1, Lcom/dolphin/browser/launcher/R$id;->paged_view_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ch;

    check-cast v0, Lcom/dolphin/browser/launcher/ch;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->L:Lcom/dolphin/browser/launcher/ch;

    .line 1407
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->L:Lcom/dolphin/browser/launcher/ch;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->M:Z

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->L:Lcom/dolphin/browser/launcher/ch;

    return-object v0

    .line 1407
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->p:Z

    .line 541
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->invalidate()V

    .line 542
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->k()V

    .line 543
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->p:Z

    .line 548
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->invalidate()V

    .line 549
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->k()V

    .line 550
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 810
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->c(Landroid/view/MotionEvent;)V

    .line 813
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 814
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 908
    :cond_0
    :goto_0
    return v0

    .line 820
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 821
    if-ne v2, v6, :cond_2

    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    if-eq v3, v0, :cond_0

    .line 825
    :cond_2
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 908
    :cond_3
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 832
    :pswitch_1
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    if-eq v2, v4, :cond_4

    .line 833
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 848
    :cond_4
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 851
    iput v3, p0, Lcom/dolphin/browser/launcher/PagedView;->D:F

    .line 852
    iput v3, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    .line 853
    iput v4, p0, Lcom/dolphin/browser/launcher/PagedView;->m:F

    .line 854
    iput v5, p0, Lcom/dolphin/browser/launcher/PagedView;->l:F

    .line 855
    iput v5, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    .line 856
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    .line 857
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/PagedView;->r:Z

    .line 864
    iget-object v2, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v5, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 865
    iget-object v5, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/dolphin/browser/launcher/PagedView;->s:I

    if-ge v2, v5, :cond_6

    :cond_5
    move v2, v0

    .line 866
    :goto_2
    if-eqz v2, :cond_7

    .line 867
    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    .line 868
    iget-object v2, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 876
    :goto_3
    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    if-eq v2, v6, :cond_3

    iget v2, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    .line 877
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 878
    invoke-virtual {p0, v3, v4}, Lcom/dolphin/browser/launcher/PagedView;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 879
    iput v6, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    goto :goto_1

    :cond_6
    move v2, v1

    .line 865
    goto :goto_2

    .line 870
    :cond_7
    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    goto :goto_3

    .line 880
    :cond_8
    invoke-virtual {p0, v3, v4}, Lcom/dolphin/browser/launcher/PagedView;->b(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 881
    const/4 v2, 0x3

    iput v2, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    goto :goto_1

    .line 890
    :pswitch_3
    iput v1, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    .line 891
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/PagedView;->r:Z

    .line 892
    iput v4, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    .line 893
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/PagedView;->q()V

    goto :goto_1

    .line 897
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->d(Landroid/view/MotionEvent;)V

    .line 898
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/PagedView;->q()V

    goto/16 :goto_1

    .line 825
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingBottom()I

    move-result v2

    add-int v3, v1, v2

    .line 503
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v4

    .line 504
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v1

    move v2, v0

    .line 506
    :goto_0
    if-ge v2, v4, :cond_1

    .line 507
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v5

    .line 508
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_3

    .line 509
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 510
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 511
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingTop()I

    move-result v0

    .line 512
    iget-boolean v8, p0, Lcom/dolphin/browser/launcher/PagedView;->u:Z

    if-eqz v8, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    .line 518
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v7, v0

    invoke-virtual {v5, v1, v0, v8, v7}, Landroid/view/View;->layout(IIII)V

    .line 520
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->t:I

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    .line 506
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 524
    :cond_1
    sub-int v0, p4, p2

    .line 525
    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->f:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 526
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->d()V

    .line 527
    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->f:I

    .line 529
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 371
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 372
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 373
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 374
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 375
    const/high16 v1, 0x40000000

    if-eq v0, v1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    if-lez v6, :cond_1

    if-gtz v3, :cond_2

    .line 381
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 479
    :goto_0
    return-void

    .line 392
    :cond_2
    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingBottom()I

    move-result v2

    add-int v8, v0, v2

    .line 395
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getPaddingRight()I

    move-result v2

    add-int v9, v0, v2

    .line 401
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v10

    .line 402
    const/4 v0, 0x0

    move v4, v0

    move v5, v1

    :goto_1
    if-ge v4, v10, :cond_6

    .line 404
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v1

    .line 405
    instance-of v0, v1, Lcom/dolphin/browser/launcher/CellLayout;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 406
    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/launcher/CellLayout;->a(I)V

    .line 408
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 411
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x2

    if-ne v0, v11, :cond_4

    .line 412
    const/high16 v0, -0x80000000

    .line 418
    :goto_2
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v2, v11, :cond_5

    .line 419
    const/high16 v2, -0x80000000

    .line 424
    :goto_3
    sub-int v11, v6, v9

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 426
    sub-int v11, v3, v8

    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 429
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 430
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 402
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v1

    goto :goto_1

    .line 414
    :cond_4
    const/high16 v0, 0x40000000

    goto :goto_2

    .line 421
    :cond_5
    const/high16 v2, 0x40000000

    goto :goto_3

    .line 437
    :cond_6
    const/high16 v0, -0x80000000

    if-ne v7, v0, :cond_9

    .line 438
    add-int v0, v5, v8

    .line 441
    :goto_4
    invoke-virtual {p0, v6, v0}, Lcom/dolphin/browser/launcher/PagedView;->setMeasuredDimension(II)V

    .line 448
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->k()V

    .line 450
    if-lez v10, :cond_7

    .line 456
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v0

    .line 466
    sub-int v1, v6, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 468
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->c(I)V

    .line 472
    :cond_7
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->p()V

    .line 474
    if-lez v10, :cond_8

    .line 475
    add-int/lit8 v0, v10, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->e(I)I

    move-result v0

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/PagedView;->f(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->i:I

    goto/16 :goto_0

    .line 477
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->i:I

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    .line 703
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 704
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->h:I

    .line 708
    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_1

    .line 710
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 712
    :goto_1
    return v0

    .line 706
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    goto :goto_0

    .line 712
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->K:Lcom/dolphin/browser/launcher/ce;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->K:Lcom/dolphin/browser/launcher/ce;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/launcher/ce;->a(I)V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->p()V

    .line 335
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 973
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1123
    :cond_0
    :goto_0
    return v1

    .line 975
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->c(Landroid/view/MotionEvent;)V

    .line 977
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 979
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 985
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 986
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 990
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->D:F

    .line 991
    iput v3, p0, Lcom/dolphin/browser/launcher/PagedView;->l:F

    .line 992
    iput v3, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    .line 993
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    .line 994
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    if-ne v0, v1, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->f()V

    goto :goto_0

    .line 1000
    :pswitch_2
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    if-ne v0, v1, :cond_3

    .line 1002
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1003
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1004
    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    iget v4, p0, Lcom/dolphin/browser/launcher/PagedView;->l:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v0

    .line 1006
    iget v4, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    .line 1013
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 1014
    iget v4, p0, Lcom/dolphin/browser/launcher/PagedView;->e:F

    add-float/2addr v4, v3

    iput v4, p0, Lcom/dolphin/browser/launcher/PagedView;->e:F

    .line 1015
    float-to-int v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/dolphin/browser/launcher/PagedView;->scrollBy(II)V

    .line 1019
    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    .line 1020
    float-to-int v0, v3

    int-to-float v0, v0

    sub-float v0, v3, v0

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->l:F

    goto :goto_0

    .line 1023
    :cond_3
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1028
    :pswitch_3
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    if-ne v0, v1, :cond_e

    .line 1029
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    .line 1030
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1031
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1032
    iget-object v4, p0, Lcom/dolphin/browser/launcher/PagedView;->C:Landroid/view/VelocityTracker;

    .line 1033
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/dolphin/browser/launcher/PagedView;->I:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1034
    invoke-static {v4, v0}, Landroid/support/v4/view/ao;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v5, v0

    .line 1036
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->D:F

    sub-float v0, v3, v0

    float-to-int v6, v0

    .line 1037
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1038
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v7, v4

    const v8, 0x3ecccccd

    mul-float/2addr v7, v8

    cmpl-float v0, v0, v7

    if-lez v0, :cond_6

    move v0, v1

    .line 1041
    :goto_1
    iget v7, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    iget v8, p0, Lcom/dolphin/browser/launcher/PagedView;->k:F

    iget v9, p0, Lcom/dolphin/browser/launcher/PagedView;->l:F

    add-float/2addr v8, v9

    sub-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v7

    iput v3, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    .line 1043
    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->n:F

    const/high16 v7, 0x41c80000

    cmpl-float v3, v3, v7

    if-lez v3, :cond_7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v7, p0, Lcom/dolphin/browser/launcher/PagedView;->a:I

    if-le v3, v7, :cond_7

    move v3, v1

    .line 1053
    :goto_2
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v4, v4

    const v8, 0x3ea8f5c3

    mul-float/2addr v4, v8

    cmpl-float v4, v7, v4

    if-lez v4, :cond_14

    int-to-float v4, v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    int-to-float v7, v6

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_14

    if-eqz v3, :cond_14

    move v4, v1

    .line 1065
    :goto_3
    if-eqz v0, :cond_4

    if-lez v6, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    if-eqz v3, :cond_9

    if-lez v5, :cond_9

    :cond_5
    iget v7, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    if-lez v7, :cond_9

    .line 1068
    if-eqz v4, :cond_8

    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    .line 1069
    :goto_4
    invoke-virtual {p0, v0, v5}, Lcom/dolphin/browser/launcher/PagedView;->a(II)V

    .line 1102
    :goto_5
    iput v2, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    .line 1103
    iput v10, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    .line 1104
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/PagedView;->q()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1038
    goto :goto_1

    :cond_7
    move v3, v2

    .line 1043
    goto :goto_2

    .line 1068
    :cond_8
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1070
    :cond_9
    if-eqz v0, :cond_a

    if-gez v6, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    if-eqz v3, :cond_d

    if-gez v5, :cond_d

    :cond_b
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 1072
    if-eqz v4, :cond_c

    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    .line 1073
    :goto_6
    invoke-virtual {p0, v0, v5}, Lcom/dolphin/browser/launcher/PagedView;->a(II)V

    goto :goto_5

    .line 1072
    :cond_c
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1075
    :cond_d
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->n()V

    goto :goto_5

    .line 1077
    :cond_e
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    .line 1082
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1083
    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    if-eq v0, v3, :cond_f

    .line 1084
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->h(I)V

    goto :goto_5

    .line 1086
    :cond_f
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->n()V

    goto :goto_5

    .line 1088
    :cond_10
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_12

    .line 1093
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1094
    iget v3, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    if-eq v0, v3, :cond_11

    .line 1095
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->h(I)V

    goto :goto_5

    .line 1097
    :cond_11
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->n()V

    goto :goto_5

    .line 1100
    :cond_12
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->b(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 1108
    :pswitch_4
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    if-ne v0, v1, :cond_13

    .line 1109
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->n()V

    .line 1111
    :cond_13
    iput v2, p0, Lcom/dolphin/browser/launcher/PagedView;->o:I

    .line 1112
    iput v10, p0, Lcom/dolphin/browser/launcher/PagedView;->y:I

    .line 1113
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/PagedView;->q()V

    goto/16 :goto_0

    .line 1117
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_14
    move v4, v2

    goto/16 :goto_3

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method p()V
    .locals 3

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->o()Lcom/dolphin/browser/launcher/ch;

    .line 1416
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->L:Lcom/dolphin/browser/launcher/ch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/PagedView;->L:Lcom/dolphin/browser/launcher/ch;

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getChildCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/launcher/ch;->a(FI)V

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1163
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1164
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->b(I)I

    move-result v0

    .line 1165
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1166
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->h(I)V

    .line 1168
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->b(I)I

    move-result v0

    .line 693
    iget v1, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/PagedView;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->h(I)V

    .line 695
    const/4 v0, 0x1

    .line 697
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 779
    if-eqz p1, :cond_0

    .line 782
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->g:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 785
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 786
    return-void
.end method

.method public scrollBy(II)V
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->v:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/PagedView;->scrollTo(II)V

    .line 312
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 316
    iput p1, p0, Lcom/dolphin/browser/launcher/PagedView;->v:I

    .line 318
    if-gez p1, :cond_0

    .line 319
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 325
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/dolphin/browser/launcher/PagedView;->e:F

    .line 326
    return-void

    .line 320
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->i:I

    if-le p1, v0, :cond_1

    .line 321
    iget v0, p0, Lcom/dolphin/browser/launcher/PagedView;->i:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .prologue
    .line 302
    iput-object p1, p0, Lcom/dolphin/browser/launcher/PagedView;->q:Landroid/view/View$OnLongClickListener;

    .line 303
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/PagedView;->c()I

    move-result v1

    .line 304
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 305
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/PagedView;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method
