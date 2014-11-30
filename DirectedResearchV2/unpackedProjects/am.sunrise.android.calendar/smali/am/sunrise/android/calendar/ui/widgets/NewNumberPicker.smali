.class public Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;
.super Landroid/widget/LinearLayout;
.source "NewNumberPicker.java"


# static fields
.field public static final a:Lam/sunrise/android/calendar/ui/widgets/q;

.field private static final b:I

.field private static final c:[C


# instance fields
.field private A:Lam/sunrise/android/calendar/ui/widgets/o;

.field private B:Lam/sunrise/android/calendar/ui/widgets/p;

.field private C:Landroid/animation/AnimatorSet;

.field private D:Landroid/animation/Animator;

.field private E:F

.field private F:F

.field private G:Z

.field private H:Z

.field private I:I

.field private J:Landroid/view/VelocityTracker;

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:I

.field private P:Z

.field private Q:Landroid/graphics/drawable/Drawable;

.field private R:I

.field private final S:Landroid/graphics/Rect;

.field private T:I

.field private U:J

.field private V:Z

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:[Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Lam/sunrise/android/calendar/ui/widgets/t;

.field private n:Lam/sunrise/android/calendar/ui/widgets/s;

.field private o:Lam/sunrise/android/calendar/ui/widgets/q;

.field private p:J

.field private q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:[I

.field private s:Landroid/graphics/Paint;

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/widget/Scroller;

.field private x:Landroid/widget/Scroller;

.field private y:I

.field private z:Lam/sunrise/android/calendar/ui/widgets/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b:I

    .line 140
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c:[C

    .line 152
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/k;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/k;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a:Lam/sunrise/android/calendar/ui/widgets/q;

    return-void

    .line 140
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 457
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->p:J

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->q:Landroid/util/SparseArray;

    .line 240
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    .line 258
    const/high16 v0, -0x80000000

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    .line 373
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->S:Landroid/graphics/Rect;

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->T:I

    .line 458
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b()V

    .line 459
    return-void

    .line 240
    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 468
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 230
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->p:J

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->q:Landroid/util/SparseArray;

    .line 240
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    .line 258
    const/high16 v0, -0x80000000

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    .line 373
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->S:Landroid/graphics/Rect;

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->T:I

    .line 469
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b()V

    .line 470
    return-void

    .line 240
    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 480
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->p:J

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->q:Landroid/util/SparseArray;

    .line 240
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    .line 258
    const/high16 v0, -0x80000000

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    .line 373
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->S:Landroid/graphics/Rect;

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->T:I

    .line 481
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b()V

    .line 482
    return-void

    .line 240
    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1583
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1585
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1609
    :goto_0
    return v0

    .line 1590
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1592
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1593
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1594
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1590
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1603
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 1586
    :catch_0
    move-exception v0

    .line 1609
    :goto_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    goto :goto_0

    .line 1604
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    if-ne v0, p1, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-eqz v0, :cond_1

    .line 1223
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d(I)I

    move-result p1

    .line 1225
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    .line 1226
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setValue(I)V

    .line 1227
    invoke-direct {p0, v0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(II)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->m:Lam/sunrise/android/calendar/ui/widgets/t;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->m:Lam/sunrise/android/calendar/ui/widgets/t;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    invoke-interface {v0, p0, p1, v1}, Lam/sunrise/android/calendar/ui/widgets/t;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;II)V

    .line 1547
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 1402
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h()V

    .line 1403
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1404
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1405
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1406
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;II)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(II)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;J)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(J)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Z)V

    return-void
.end method

.method private a(Landroid/widget/Scroller;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1330
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1331
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->I:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1332
    invoke-direct {p0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g(I)V

    .line 1333
    invoke-direct {p0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(I)V

    .line 1342
    :goto_0
    return-void

    .line 1335
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    .line 1336
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->U:J

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(J)V

    goto :goto_0

    .line 1339
    :cond_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    .line 1340
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->U:J

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(J)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1237
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->P:Z

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->D:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1239
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1240
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->s:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1241
    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->y:I

    .line 1242
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d()V

    .line 1243
    if-eqz p1, :cond_0

    .line 1244
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1250
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->invalidate()V

    .line 1258
    :goto_1
    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1252
    :cond_1
    if-eqz p1, :cond_2

    .line 1253
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(I)V

    goto :goto_1

    .line 1255
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(I)V

    goto :goto_1
.end method

.method private a([I)V
    .locals 2

    .prologue
    .line 1452
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1453
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1456
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    if-le v0, v1, :cond_1

    .line 1457
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    .line 1459
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1460
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e(I)V

    .line 1461
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1290
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->S:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1291
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->S:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method static synthetic a()[C
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c:[C

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->y:I

    return p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 485
    invoke-virtual {p0, v5}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setOrientation(I)V

    .line 486
    invoke-virtual {p0, v6}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setOverScrollMode(I)V

    .line 488
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 489
    const v1, 0x7f03006b

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 491
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->O:I

    .line 492
    iput-boolean v5, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->P:Z

    .line 493
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#ffcecece"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->Q:Landroid/graphics/drawable/Drawable;

    .line 497
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->R:I

    .line 499
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->Q:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->R:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->R:I

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->U:J

    .line 503
    invoke-virtual {p0, v7}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setWillNotDraw(Z)V

    .line 504
    invoke-direct {p0, v7}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setSelectorWheelState(I)V

    .line 506
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/l;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/l;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V

    .line 521
    new-instance v2, Lam/sunrise/android/calendar/ui/widgets/m;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/widgets/m;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V

    .line 534
    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    .line 535
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 539
    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    .line 540
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 544
    const v0, 0x7f0b0100

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    .line 559
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Lam/sunrise/android/calendar/ui/widgets/r;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/widgets/r;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 563
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 565
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 568
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->K:I

    .line 569
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->K:I

    .line 571
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->L:I

    .line 572
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->M:I

    .line 574
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g:I

    .line 577
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 578
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 579
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 580
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 581
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->c:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 582
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 583
    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->ENABLED_STATE_SET:[I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 584
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->s:Landroid/graphics/Paint;

    .line 588
    const-string v0, "selectorPaintAlpha"

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->D:Landroid/animation/Animator;

    .line 590
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 592
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    const-string v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 594
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    .line 595
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->D:Landroid/animation/Animator;

    aput-object v4, v3, v7

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 597
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/n;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/n;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    .line 619
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40200000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->x:Landroid/widget/Scroller;

    .line 621
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    .line 622
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h()V

    .line 624
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->P:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    invoke-direct {p0, v5}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setSelectorWheelState(I)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-direct {p0, v6}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setSelectorWheelState(I)V

    .line 632
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g()V

    goto :goto_0

    .line 588
    :array_0
    .array-data 4
        0xff
        0x3c
    .end array-data

    .line 590
    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 592
    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->T:I

    if-ne v0, p1, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->T:I

    .line 1352
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->n:Lam/sunrise/android/calendar/ui/widgets/s;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->n:Lam/sunrise/android/calendar/ui/widgets/s;

    invoke-interface {v0, p0, p1}, Lam/sunrise/android/calendar/ui/widgets/s;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;I)V

    goto :goto_0
.end method

.method private b(II)V
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->z:Lam/sunrise/android/calendar/ui/widgets/u;

    if-nez v0, :cond_0

    .line 1619
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/u;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/u;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->z:Lam/sunrise/android/calendar/ui/widgets/u;

    .line 1623
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->z:Lam/sunrise/android/calendar/ui/widgets/u;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/u;->a(Lam/sunrise/android/calendar/ui/widgets/u;I)I

    .line 1624
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->z:Lam/sunrise/android/calendar/ui/widgets/u;

    invoke-static {v0, p2}, Lam/sunrise/android/calendar/ui/widgets/u;->b(Lam/sunrise/android/calendar/ui/widgets/u;I)I

    .line 1625
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->z:Lam/sunrise/android/calendar/ui/widgets/u;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1626
    return-void

    .line 1621
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->z:Lam/sunrise/android/calendar/ui/widgets/u;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b(J)V
    .locals 2

    .prologue
    .line 1414
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1415
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->D:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1416
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->D:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1417
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 1556
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j()V

    .line 1557
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->B:Lam/sunrise/android/calendar/ui/widgets/p;

    if-nez v0, :cond_0

    .line 1558
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/p;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/p;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->B:Lam/sunrise/android/calendar/ui/widgets/p;

    .line 1560
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->B:Lam/sunrise/android/calendar/ui/widgets/p;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/p;->a(Lam/sunrise/android/calendar/ui/widgets/p;Z)V

    .line 1561
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->B:Lam/sunrise/android/calendar/ui/widgets/p;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1562
    return-void
.end method

.method private b([I)V
    .locals 2

    .prologue
    .line 1468
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 1469
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1468
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1471
    :cond_0
    const/4 v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    .line 1472
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    if-ge v0, v1, :cond_1

    .line 1473
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    .line 1475
    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1476
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e(I)V

    .line 1477
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 1196
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1197
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    .line 1198
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getValue()I

    move-result v2

    .line 1199
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1200
    add-int/lit8 v1, v0, -0x2

    add-int/2addr v1, v2

    .line 1201
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-eqz v3, :cond_0

    .line 1202
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d(I)I

    move-result v1

    .line 1204
    :cond_0
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    aput v1, v3, v0

    .line 1205
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e(I)V

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    :cond_1
    return-void
.end method

.method private c(I)V
    .locals 9

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1361
    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->y:I

    .line 1362
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    .line 1364
    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-eqz v2, :cond_1

    .line 1365
    if-lez p1, :cond_0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1366
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1381
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->invalidate()V

    .line 1382
    return-void

    :cond_0
    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1368
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1371
    :cond_1
    if-lez p1, :cond_2

    .line 1372
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int/2addr v3, v4

    mul-int v8, v2, v3

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 1373
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1375
    :cond_2
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v2

    .line 1377
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    return-object v0
.end method

.method private d(I)I
    .locals 4

    .prologue
    .line 1439
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    if-le p1, v0, :cond_1

    .line 1440
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    sub-int v1, p1, v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1444
    :cond_0
    :goto_0
    return p1

    .line 1441
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    if-ge p1, v0, :cond_0

    .line 1442
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int/2addr v1, p1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    .line 1267
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1268
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1269
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1270
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1271
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->scrollBy(II)V

    .line 1273
    :cond_0
    return-void
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 1305
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c()V

    .line 1306
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    .line 1307
    array-length v1, v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g:I

    mul-int/2addr v1, v2

    .line 1308
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    int-to-float v1, v1

    .line 1309
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 1311
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h:I

    .line 1312
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    .line 1314
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    .line 1317
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    .line 1318
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    .line 1319
    return-void
.end method

.method private e(I)V
    .locals 3

    .prologue
    .line 1485
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->q:Landroid/util/SparseArray;

    .line 1486
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1487
    if-eqz v0, :cond_0

    .line 1501
    :goto_0
    return-void

    .line 1490
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    if-le p1, v0, :cond_2

    .line 1491
    :cond_1
    const-string v0, ""

    .line 1500
    :goto_1
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1493
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1494
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int v0, p1, v0

    .line 1495
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    aget-object v0, v2, v0

    goto :goto_1

    .line 1497
    :cond_3
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    return v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->o:Lam/sunrise/android/calendar/ui/widgets/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->o:Lam/sunrise/android/calendar/ui/widgets/q;

    invoke-interface {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/q;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 1322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1323
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setFadingEdgeLength(I)V

    .line 1324
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1388
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1389
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1390
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1391
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1392
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->invalidate()V

    .line 1393
    return-void
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 1634
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->A:Lam/sunrise/android/calendar/ui/widgets/o;

    if-nez v0, :cond_0

    .line 1635
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/o;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/o;-><init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->A:Lam/sunrise/android/calendar/ui/widgets/o;

    .line 1639
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->A:Lam/sunrise/android/calendar/ui/widgets/o;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1640
    return-void

    .line 1637
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->A:Lam/sunrise/android/calendar/ui/widgets/o;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    return-void
.end method

.method static synthetic h(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->U:J

    return-wide v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1423
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-nez v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    if-ge v0, v1, :cond_2

    .line 1424
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1428
    :goto_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-nez v0, :cond_1

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    if-le v0, v1, :cond_3

    .line 1429
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1433
    :goto_1
    return-void

    .line 1426
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1431
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic i(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    return v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 1531
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1532
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    :goto_0
    return-void

    .line 1534
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic j(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->x:Landroid/widget/Scroller;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->B:Lam/sunrise/android/calendar/ui/widgets/p;

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->B:Lam/sunrise/android/calendar/ui/widgets/p;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1571
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->A:Lam/sunrise/android/calendar/ui/widgets/o;

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->A:Lam/sunrise/android/calendar/ui/widgets/o;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1574
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->z:Lam/sunrise/android/calendar/ui/widgets/u;

    if-eqz v0, :cond_2

    .line 1575
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->z:Lam/sunrise/android/calendar/ui/widgets/u;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1577
    :cond_2
    return-void
.end method

.method static synthetic k(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->p:J

    return-wide v0
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1283
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->invalidate()V

    .line 1284
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 2

    .prologue
    .line 1298
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->I:I

    .line 1299
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1300
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->s:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1302
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 793
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->I:I

    if-nez v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    .line 797
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 798
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->x:Landroid/widget/Scroller;

    .line 799
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 803
    :cond_2
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 804
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 805
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->y:I

    if-nez v2, :cond_3

    .line 806
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->y:I

    .line 808
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->y:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->scrollBy(II)V

    .line 809
    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->y:I

    .line 810
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 811
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 813
    :cond_4
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 1105
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 775
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 776
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 777
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j()V

    .line 779
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 758
    packed-switch v0, :pswitch_data_0

    .line 770
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 760
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->I:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 761
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j()V

    .line 762
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d()V

    goto :goto_0

    .line 767
    :pswitch_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j()V

    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 785
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 786
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j()V

    .line 788
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 1117
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->I:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getDrawingTime()J

    move-result-wide v1

    .line 1124
    const/4 v0, 0x0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 1125
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1126
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1124
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    :cond_1
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1132
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1083
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->O:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1078
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1088
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1091
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    iget-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->U:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(J)V

    .line 1095
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1099
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j()V

    .line 1100
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1136
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->I:I

    if-nez v0, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1140
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 1141
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    int-to-float v0, v0

    .line 1143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1152
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    move v1, v2

    move v3, v0

    .line 1153
    :goto_1
    array-length v0, v6

    if-ge v1, v0, :cond_3

    .line 1154
    aget v0, v6, v1

    .line 1155
    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->q:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1160
    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    .line 1161
    :cond_1
    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1163
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 1153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1167
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1169
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getHeight()I

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    sub-int/2addr v0, v1

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->R:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1171
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->R:I

    add-int/2addr v1, v0

    .line 1172
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getRight()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1173
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    add-int/2addr v0, v3

    .line 1177
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    add-int/2addr v1, v3

    .line 1178
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getRight()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1179
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1182
    :cond_4
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 650
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->P:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 697
    :goto_0
    return v0

    .line 653
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v0, v1

    .line 697
    goto :goto_0

    .line 655
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->E:F

    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->F:F

    .line 656
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j()V

    .line 657
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->C:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 658
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->D:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 659
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->G:Z

    .line 660
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->H:Z

    .line 661
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->I:I

    if-ne v2, v4, :cond_5

    .line 662
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->x:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    .line 664
    :goto_1
    if-nez v2, :cond_3

    .line 665
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 666
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->x:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 667
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(I)V

    .line 669
    :cond_3
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->G:Z

    .line 670
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->H:Z

    .line 671
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g()V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 662
    goto :goto_1

    .line 674
    :cond_5
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isShown()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 679
    :cond_7
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->H:Z

    .line 680
    invoke-direct {p0, v4}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setSelectorWheelState(I)V

    .line 681
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g()V

    goto/16 :goto_0

    .line 686
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 687
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->E:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 688
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->K:I

    if-le v2, v3, :cond_2

    .line 689
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->G:Z

    .line 690
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(I)V

    .line 691
    invoke-direct {p0, v4}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setSelectorWheelState(I)V

    .line 692
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g()V

    goto/16 :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 639
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 640
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->V:Z

    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->V:Z

    .line 643
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e()V

    .line 644
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f()V

    .line 646
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 702
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 752
    :goto_0
    return v0

    .line 705
    :cond_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->J:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 706
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->J:Landroid/view/VelocityTracker;

    .line 708
    :cond_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 710
    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 752
    goto :goto_0

    .line 712
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 713
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->G:Z

    if-nez v3, :cond_2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->T:I

    if-eq v3, v1, :cond_3

    .line 715
    :cond_2
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->E:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 716
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->K:I

    if-le v3, v4, :cond_3

    .line 717
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->G:Z

    .line 718
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(I)V

    .line 721
    :cond_3
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->F:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    .line 722
    invoke-virtual {p0, v0, v3}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->scrollBy(II)V

    .line 723
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->invalidate()V

    .line 724
    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->F:F

    goto :goto_1

    .line 727
    :pswitch_1
    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->G:Z

    if-eqz v2, :cond_4

    .line 728
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setSelectorWheelState(I)V

    .line 729
    iget-wide v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->U:J

    invoke-direct {p0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(J)V

    .line 730
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move v0, v1

    .line 731
    goto :goto_0

    .line 733
    :cond_4
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->J:Landroid/view/VelocityTracker;

    .line 734
    const/16 v3, 0x3e8

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->M:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 735
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    .line 736
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->L:I

    if-le v3, v4, :cond_6

    .line 737
    invoke-direct {p0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c(I)V

    .line 738
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(I)V

    .line 748
    :cond_5
    :goto_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->J:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 740
    :cond_6
    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->H:Z

    if-eqz v2, :cond_7

    .line 741
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->w:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->x:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 742
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g(I)V

    goto :goto_2

    .line 745
    :cond_7
    sget v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b:I

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g(I)V

    goto :goto_2

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 827
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->I:I

    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    .line 831
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    if-gt v1, v2, :cond_2

    .line 833
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    goto :goto_0

    .line 836
    :cond_2
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    if-lt v1, v2, :cond_3

    .line 838
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    goto :goto_0

    .line 841
    :cond_3
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    add-int/2addr v1, p2

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    .line 842
    :cond_4
    :goto_1
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    sub-int/2addr v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h:I

    if-le v1, v2, :cond_5

    .line 843
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    sub-int/2addr v1, v2

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    .line 844
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b([I)V

    .line 845
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(I)V

    .line 846
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    if-gt v1, v2, :cond_4

    .line 847
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    goto :goto_1

    .line 850
    :cond_5
    :goto_2
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    sub-int/2addr v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 851
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->t:I

    add-int/2addr v1, v2

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    .line 852
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a([I)V

    .line 853
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(I)V

    .line 854
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    if-lt v1, v2, :cond_5

    .line 855
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->u:I

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->v:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    .prologue
    .line 1189
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1064
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    .line 1065
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1072
    :goto_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    .line 1073
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c()V

    goto :goto_0

    .line 1070
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 819
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 820
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 821
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 822
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 823
    return-void
.end method

.method public setFormatter(Lam/sunrise/android/calendar/ui/widgets/q;)V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->o:Lam/sunrise/android/calendar/ui/widgets/q;

    if-ne p1, v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 899
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->o:Lam/sunrise/android/calendar/ui/widgets/q;

    .line 900
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c()V

    .line 901
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 2

    .prologue
    .line 1030
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    if-ne v0, p1, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1033
    :cond_0
    if-gez p1, :cond_1

    .line 1034
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_1
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    .line 1037
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    if-ge v0, v1, :cond_2

    .line 1038
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    .line 1040
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1041
    :goto_1
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1042
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c()V

    .line 1043
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    goto :goto_0

    .line 1040
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 2

    .prologue
    .line 999
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    if-ne v0, p1, :cond_0

    .line 1013
    :goto_0
    return-void

    .line 1002
    :cond_0
    if-gez p1, :cond_1

    .line 1003
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_1
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    .line 1006
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    if-le v0, v1, :cond_2

    .line 1007
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    .line 1009
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    .line 1010
    :goto_1
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1011
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c()V

    .line 1012
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    goto :goto_0

    .line 1009
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .prologue
    .line 972
    iput-wide p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->p:J

    .line 973
    return-void
.end method

.method public setOnScrollListener(Lam/sunrise/android/calendar/ui/widgets/s;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->n:Lam/sunrise/android/calendar/ui/widgets/s;

    .line 881
    return-void
.end method

.method public setOnValueChangedListener(Lam/sunrise/android/calendar/ui/widgets/t;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->m:Lam/sunrise/android/calendar/ui/widgets/t;

    .line 872
    return-void
.end method

.method public setValue(I)V
    .locals 2

    .prologue
    .line 912
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    if-ne v0, p1, :cond_0

    .line 926
    :goto_0
    return-void

    .line 915
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    if-ge p1, v0, :cond_4

    .line 916
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    .line 918
    :goto_1
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    if-le v0, v1, :cond_1

    .line 919
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    .line 921
    :cond_1
    :goto_2
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->l:I

    .line 922
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->c()V

    .line 923
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i()V

    .line 924
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h()V

    .line 925
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->invalidate()V

    goto :goto_0

    .line 916
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    goto :goto_1

    .line 919
    :cond_3
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    goto :goto_2

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .prologue
    .line 952
    if-eqz p1, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->r:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 953
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    if-eq p1, v0, :cond_1

    .line 956
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->N:Z

    .line 957
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h()V

    .line 959
    :cond_1
    return-void
.end method
