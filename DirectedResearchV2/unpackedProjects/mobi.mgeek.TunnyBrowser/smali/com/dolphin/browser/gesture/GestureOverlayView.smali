.class public Lcom/dolphin/browser/gesture/GestureOverlayView;
.super Landroid/widget/FrameLayout;
.source "GestureOverlayView.java"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Lcom/dolphin/browser/gesture/Gesture;

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/q;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/n;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/o;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/p;",
            ">;"
        }
    .end annotation
.end field

.field private K:Z

.field private L:Z

.field private M:F

.field private final N:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final O:Lcom/dolphin/browser/gesture/m;

.field private final a:Landroid/graphics/Paint;

.field private b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Path;

.field private s:Z

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    .line 70
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->b:J

    .line 71
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->c:J

    .line 74
    iput-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->f:Z

    .line 77
    const/16 v0, -0x100

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    .line 78
    const v0, 0x48ffff00

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->i:I

    .line 79
    const/high16 v0, 0x41400000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->j:F

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->k:I

    .line 82
    iput v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->l:I

    .line 83
    const/high16 v0, 0x42480000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->m:F

    .line 84
    const v0, 0x3e8ccccd

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->n:F

    .line 86
    const/high16 v0, 0x43340000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->o:F

    .line 88
    iput v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->p:I

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->q:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    .line 92
    iput-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->s:Z

    .line 101
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    .line 102
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->z:Z

    .line 103
    iput-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->A:Z

    .line 106
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->D:Z

    .line 107
    iput-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->E:Z

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->G:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->H:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->I:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->J:Ljava/util/ArrayList;

    .line 123
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    .line 124
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->M:F

    .line 125
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->N:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 127
    new-instance v0, Lcom/dolphin/browser/gesture/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/gesture/m;-><init>(Lcom/dolphin/browser/gesture/GestureOverlayView;Lcom/dolphin/browser/gesture/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    .line 131
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->f()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    .line 70
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->b:J

    .line 71
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->c:J

    .line 74
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->f:Z

    .line 77
    const/16 v0, -0x100

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    .line 78
    const v0, 0x48ffff00

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->i:I

    .line 79
    const/high16 v0, 0x41400000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->j:F

    .line 80
    iput v5, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->k:I

    .line 82
    iput v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->l:I

    .line 83
    const/high16 v0, 0x42480000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->m:F

    .line 84
    const v0, 0x3e8ccccd

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->n:F

    .line 86
    const/high16 v0, 0x43340000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->o:F

    .line 88
    iput v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->p:I

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->q:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    .line 92
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->s:Z

    .line 101
    iput-boolean v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    .line 102
    iput-boolean v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->z:Z

    .line 103
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->A:Z

    .line 106
    iput-boolean v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->D:Z

    .line 107
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->E:Z

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->G:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->H:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->I:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->J:Ljava/util/ArrayList;

    .line 123
    iput-boolean v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    .line 124
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->M:F

    .line 125
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->N:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 127
    new-instance v0, Lcom/dolphin/browser/gesture/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/gesture/m;-><init>(Lcom/dolphin/browser/gesture/GestureOverlayView;Lcom/dolphin/browser/gesture/l;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    .line 141
    sget-object v0, Lcom/dolphin/browser/gesture/R$styleable;->GestureOverlayView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->j:F

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->j:F

    .line 146
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->j:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->k:I

    .line 147
    const/4 v1, 0x2

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    .line 149
    const/4 v1, 0x3

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->i:I

    .line 151
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->b:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->b:J

    .line 152
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->c:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->c:J

    .line 153
    const/4 v1, 0x6

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->l:I

    .line 155
    const/4 v1, 0x7

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->m:F

    .line 158
    const/16 v1, 0x9

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->o:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->o:F

    .line 161
    const/16 v1, 0x8

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->n:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->n:F

    .line 164
    iget-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->A:Z

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->A:Z

    .line 166
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->f:Z

    .line 167
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->p:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->p:I

    .line 169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->f()V

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/GestureOverlayView;F)F
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->M:F

    return p1
.end method

.method private a(Landroid/view/MotionEvent;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 728
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->B:Z

    .line 731
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_4

    .line 733
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    new-instance v3, Lcom/dolphin/browser/gesture/v;

    iget-object v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->G:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/dolphin/browser/gesture/v;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/gesture/Gesture;->a(Lcom/dolphin/browser/gesture/v;)V

    .line 735
    if-nez p2, :cond_3

    .line 737
    iget-object v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->H:Ljava/util/ArrayList;

    .line 738
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 739
    :goto_0
    if-ge v3, v5, :cond_0

    .line 740
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/n;

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/gesture/n;->c(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 739
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 743
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->K:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->f:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->K:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(ZZZ)V

    .line 753
    :goto_3
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 754
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->z:Z

    .line 755
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    .line 757
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->J:Ljava/util/ArrayList;

    .line 758
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 759
    :goto_4
    if-ge v2, v3, :cond_5

    .line 760
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/p;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/gesture/p;->b(Lcom/dolphin/browser/gesture/GestureOverlayView;)V

    .line 759
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1
    move v0, v2

    .line 743
    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 746
    :cond_3
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 750
    :cond_4
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 762
    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/GestureOverlayView;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(I)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 458
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(I)V

    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 460
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->C:Z

    .line 461
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    iput-boolean p2, v0, Lcom/dolphin/browser/gesture/m;->a:Z

    .line 462
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    iput-boolean v1, v0, Lcom/dolphin/browser/gesture/m;->b:Z

    .line 464
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 465
    iput v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->M:F

    .line 466
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    .line 467
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->e:Z

    .line 468
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->d:J

    .line 470
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    iget-wide v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->c:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    :goto_0
    return-void

    .line 472
    :cond_0
    iput v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->M:F

    .line 473
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    .line 474
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->e:Z

    .line 476
    if-eqz p3, :cond_1

    .line 477
    iput-object v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    .line 478
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 479
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 480
    :cond_1
    if-eqz p2, :cond_2

    .line 481
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    iget-wide v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->c:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 482
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->l:I

    if-ne v0, v2, :cond_3

    .line 483
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    iput-boolean v2, v0, Lcom/dolphin/browser/gesture/m;->b:Z

    .line 484
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    iget-wide v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->c:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 486
    :cond_3
    iput-object v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    .line 487
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 488
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 589
    :cond_1
    :goto_0
    return v0

    .line 562
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->b(Landroid/view/MotionEvent;)V

    .line 563
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 566
    :pswitch_1
    iget-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->B:Z

    if-eqz v2, :cond_0

    .line 567
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_1

    .line 569
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 575
    :pswitch_2
    iget-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->B:Z

    if-eqz v2, :cond_0

    .line 576
    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Landroid/view/MotionEvent;Z)V

    .line 577
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 582
    :pswitch_3
    iget-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->B:Z

    if-eqz v2, :cond_0

    .line 583
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Landroid/view/MotionEvent;Z)V

    .line 584
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/GestureOverlayView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/GestureOverlayView;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->d:J

    return-wide v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 593
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->B:Z

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 598
    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->t:F

    .line 599
    iput v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->u:F

    .line 601
    const/4 v3, 0x0

    iput v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->x:F

    .line 602
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    .line 604
    iget v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->l:I

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->C:Z

    if-eqz v3, :cond_6

    .line 605
    :cond_0
    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->K:Z

    if-eqz v3, :cond_1

    .line 606
    iget v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->i:I

    invoke-direct {p0, v3}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(I)V

    .line 607
    :cond_1
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->C:Z

    .line 608
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    .line 609
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 616
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->e:Z

    if-eqz v3, :cond_8

    .line 617
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d()V

    .line 625
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    if-nez v3, :cond_4

    .line 626
    new-instance v3, Lcom/dolphin/browser/gesture/Gesture;

    invoke-direct {v3}, Lcom/dolphin/browser/gesture/Gesture;-><init>()V

    iput-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    .line 629
    :cond_4
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->G:Ljava/util/ArrayList;

    new-instance v4, Lcom/dolphin/browser/gesture/q;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/dolphin/browser/gesture/q;-><init>(FFJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->E:Z

    if-eqz v3, :cond_5

    .line 632
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    iget v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->j:F

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 634
    :cond_5
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 636
    iget v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->k:I

    .line 637
    iget-object v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->q:Landroid/graphics/Rect;

    float-to-int v5, v1

    sub-int/2addr v5, v3

    float-to-int v6, v2

    sub-int/2addr v6, v3

    float-to-int v7, v1

    add-int/2addr v7, v3

    float-to-int v8, v2

    add-int/2addr v3, v8

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 639
    iput v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->v:F

    .line 640
    iput v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->w:F

    .line 643
    iget-object v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->H:Ljava/util/ArrayList;

    .line 644
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 645
    :goto_2
    if-ge v1, v3, :cond_9

    .line 646
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/n;

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/gesture/n;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 645
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 610
    :cond_6
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v3}, Lcom/dolphin/browser/gesture/Gesture;->b()I

    move-result v3

    if-nez v3, :cond_2

    .line 611
    :cond_7
    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->K:Z

    if-eqz v3, :cond_2

    .line 612
    iget v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->i:I

    invoke-direct {p0, v3}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(I)V

    goto :goto_0

    .line 618
    :cond_8
    iget-boolean v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    if-eqz v3, :cond_3

    .line 619
    const/16 v3, 0xff

    invoke-direct {p0, v3}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(I)V

    .line 620
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    .line 621
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->e:Z

    .line 622
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 648
    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/gesture/GestureOverlayView;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->b:J

    return-wide v0
.end method

.method private c(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .locals 12

    .prologue
    .line 651
    const/4 v0, 0x0

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 656
    iget v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->t:F

    .line 657
    iget v5, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->u:F

    .line 659
    sub-float v1, v2, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 660
    sub-float v1, v3, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 662
    const/high16 v1, 0x40400000

    cmpl-float v1, v6, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x40400000

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_6

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->q:Landroid/graphics/Rect;

    .line 666
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->k:I

    .line 667
    iget v8, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->v:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->w:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->v:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->w:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 670
    add-float v8, v2, v4

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    iput v8, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->v:F

    .line 671
    add-float v9, v3, v5

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    iput v9, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->w:F

    .line 673
    iget-object v10, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v10, v4, v5, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 676
    float-to-int v10, v4

    sub-int/2addr v10, v0

    float-to-int v11, v5

    sub-int/2addr v11, v0

    float-to-int v4, v4

    add-int/2addr v4, v0

    float-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v1, v10, v11, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 680
    float-to-int v4, v8

    sub-int/2addr v4, v0

    float-to-int v5, v9

    sub-int/2addr v5, v0

    float-to-int v8, v8

    add-int/2addr v8, v0

    float-to-int v9, v9

    add-int/2addr v0, v9

    invoke-virtual {v1, v4, v5, v8, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 683
    iput v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->t:F

    .line 684
    iput v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->u:F

    .line 686
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->G:Ljava/util/ArrayList;

    new-instance v4, Lcom/dolphin/browser/gesture/q;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct {v4, v2, v3, v8, v9}, Lcom/dolphin/browser/gesture/q;-><init>(FFJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->K:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    if-nez v0, :cond_4

    .line 689
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->x:F

    mul-float v2, v6, v6

    mul-float v3, v7, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->x:F

    .line 691
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->x:F

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->m:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 692
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->G:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/w;->a(Ljava/util/ArrayList;)Lcom/dolphin/browser/gesture/ad;

    move-result-object v2

    .line 695
    iget v0, v2, Lcom/dolphin/browser/gesture/ad;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 696
    const/high16 v3, 0x42b40000

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 697
    const/high16 v3, 0x43340000

    sub-float v0, v3, v0

    .line 700
    :cond_1
    iget v2, v2, Lcom/dolphin/browser/gesture/ad;->a:F

    iget v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->n:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->p:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->o:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 704
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    .line 705
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(I)V

    .line 707
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->J:Ljava/util/ArrayList;

    .line 708
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 709
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_4

    .line 710
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/p;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/gesture/p;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;)V

    .line 709
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 700
    :cond_3
    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->o:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 717
    :cond_4
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->H:Ljava/util/ArrayList;

    .line 718
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 719
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_5

    .line 720
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/n;

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/gesture/n;->b(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 719
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 724
    :cond_6
    return-object v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 393
    iput p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->g:I

    .line 394
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->e:Z

    if-eqz v0, :cond_0

    .line 395
    const/high16 v0, 0x437f0000

    iget v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->M:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(I)V

    .line 399
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    .line 400
    return-void

    .line 397
    :cond_0
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->e:Z

    return p1
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 447
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 448
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->g:I

    ushr-int/lit8 v1, v1, 0x18

    .line 449
    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 450
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->g:I

    shl-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v2, v2, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 766
    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->H:Ljava/util/ArrayList;

    .line 767
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 768
    :goto_0
    if-ge v1, v4, :cond_0

    .line 769
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/n;

    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/gesture/n;->d(Lcom/dolphin/browser/gesture/GestureOverlayView;Landroid/view/MotionEvent;)V

    .line 768
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 772
    :cond_0
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 773
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/gesture/GestureOverlayView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->g()V

    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->C:Z

    return p1
.end method

.method static synthetic e(Lcom/dolphin/browser/gesture/GestureOverlayView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->D:Z

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/gesture/GestureOverlayView;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->x:F

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->setWillNotDraw(Z)V

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    .line 178
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 182
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 183
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 186
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->g:I

    .line 187
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(I)V

    .line 188
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->setSoftwareRendering(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/gesture/GestureOverlayView;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->m:F

    return v0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 776
    iget-object v2, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->I:Ljava/util/ArrayList;

    .line 777
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 778
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 779
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/o;

    iget-object v4, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    invoke-interface {v0, p0, v4}, Lcom/dolphin/browser/gesture/o;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;Lcom/dolphin/browser/gesture/Gesture;)V

    .line 778
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 781
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/dolphin/browser/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->N:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method static synthetic i(Lcom/dolphin/browser/gesture/GestureOverlayView;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->M:F

    return v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->j:F

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    .line 205
    return-void
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x41a00000

    const/4 v10, 0x0

    const/high16 v9, 0x40000000

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 286
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->h:I

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(I)V

    .line 287
    iput-object p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/Gesture;->b(I)Landroid/graphics/Path;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 291
    invoke-virtual {v0, v1, v12}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 292
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 293
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 294
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 295
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 297
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 298
    iget v7, v1, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    sub-float v8, v2, v4

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    sub-float v8, v3, v5

    div-float/2addr v8, v9

    add-float/2addr v1, v8

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 300
    invoke-virtual {v0, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 301
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 303
    cmpl-float v6, v4, v10

    if-eqz v6, :cond_2

    cmpl-float v6, v5, v10

    if-eqz v6, :cond_2

    sub-float v6, v2, v11

    cmpl-float v6, v4, v6

    if-gtz v6, :cond_1

    sub-float v6, v3, v11

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    .line 305
    :cond_1
    const v6, 0x3f4ccccd

    div-float v4, v2, v4

    div-float v5, v3, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v6

    .line 306
    div-float/2addr v2, v9

    div-float/2addr v3, v9

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 307
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 313
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 315
    iput-boolean v12, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->C:Z

    .line 317
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    .line 318
    return-void
.end method

.method public a(Lcom/dolphin/browser/gesture/n;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method public a(Lcom/dolphin/browser/gesture/o;)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->K:Z

    .line 362
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 454
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(ZZZ)V

    .line 455
    return-void
.end method

.method public b()Lcom/dolphin/browser/gesture/Gesture;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->i:I

    .line 209
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(I)V

    .line 495
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->L:Z

    .line 496
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->e:Z

    .line 497
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->O:Lcom/dolphin/browser/gesture/m;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 498
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    .line 500
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 540
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/Gesture;->b()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->z:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->A:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 545
    :goto_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Landroid/view/MotionEvent;)Z

    .line 547
    if-eqz v0, :cond_1

    .line 548
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 551
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 556
    :goto_1
    return v1

    .line 541
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->s:Z

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 434
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    .line 786
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    .line 787
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d()V

    .line 536
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 438
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 439
    if-eqz p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureOverlayView;->F:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/Gesture;)V

    .line 444
    :cond_0
    return-void
.end method
