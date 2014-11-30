.class public Lcom/dolphin/browser/launcher/v;
.super Ljava/lang/Object;
.source "DragController.java"


# static fields
.field public static a:I


# instance fields
.field private b:Lcom/dolphin/browser/launcher/DragLayer;

.field private c:Landroid/os/Handler;

.field private d:Landroid/graphics/Rect;

.field private final e:[I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/dolphin/browser/launcher/aj;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/ai;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/w;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/os/IBinder;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/dolphin/browser/launcher/ae;

.field private q:I

.field private r:Lcom/dolphin/browser/launcher/x;

.field private s:Lcom/dolphin/browser/launcher/ai;

.field private t:Landroid/view/inputmethod/InputMethodManager;

.field private u:[I

.field private v:J

.field private w:I

.field private x:I

.field private y:[I

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/dolphin/browser/launcher/v;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/launcher/DragLayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->d:Landroid/graphics/Rect;

    .line 65
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->e:[I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->k:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->l:Ljava/util/ArrayList;

    .line 96
    iput v2, p0, Lcom/dolphin/browser/launcher/v;->q:I

    .line 97
    new-instance v0, Lcom/dolphin/browser/launcher/x;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/x;-><init>(Lcom/dolphin/browser/launcher/v;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    .line 103
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->u:[I

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/v;->v:J

    .line 105
    iput v2, p0, Lcom/dolphin/browser/launcher/v;->w:I

    .line 106
    iput v2, p0, Lcom/dolphin/browser/launcher/v;->x:I

    .line 108
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->y:[I

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->z:Landroid/graphics/Rect;

    .line 137
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    iput-object p1, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    .line 139
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/dolphin/browser/launcher/v;->c:Landroid/os/Handler;

    .line 140
    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->scroll_zone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/v;->i:I

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/v;->x:I

    .line 142
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/v;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/dolphin/browser/launcher/v;->q:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/v;)Lcom/dolphin/browser/launcher/ae;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->p:Lcom/dolphin/browser/launcher/ae;

    return-object v0
.end method

.method private a(II[I)Lcom/dolphin/browser/launcher/ai;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 527
    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->d:Landroid/graphics/Rect;

    .line 528
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->k:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 530
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 531
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ai;

    .line 532
    invoke-interface {v0}, Lcom/dolphin/browser/launcher/ai;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/ai;->e()Z

    move-result v4

    if-nez v4, :cond_1

    .line 530
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 536
    :cond_1
    invoke-interface {v0, v2}, Lcom/dolphin/browser/launcher/ai;->getHitRect(Landroid/graphics/Rect;)V

    .line 539
    invoke-interface {v0, p3}, Lcom/dolphin/browser/launcher/ai;->a([I)V

    .line 540
    aget v4, p3, v7

    aget v5, p3, v8

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 545
    iget-object v4, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget-object v4, v4, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v4}, Lcom/dolphin/browser/launcher/ag;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget v5, v5, Lcom/dolphin/browser/launcher/aj;->c:I

    sub-int/2addr v4, v5

    .line 546
    iget-object v5, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget-object v5, v5, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v5}, Lcom/dolphin/browser/launcher/ag;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget-object v6, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget v6, v6, Lcom/dolphin/browser/launcher/aj;->d:I

    sub-int/2addr v5, v6

    .line 547
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/launcher/ai;->f(Lcom/dolphin/browser/launcher/aj;)Lcom/dolphin/browser/launcher/ai;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_3

    .line 551
    invoke-interface {v1, p3}, Lcom/dolphin/browser/launcher/ai;->a([I)V

    move-object v0, v1

    .line 555
    :cond_3
    aget v1, p3, v7

    sub-int v1, p1, v1

    aput v1, p3, v7

    .line 556
    aget v1, p3, v8

    sub-int v1, p2, v1

    aput v1, p3, v8

    .line 561
    :goto_1
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(II)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/launcher/ag;->b(II)V

    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->e:[I

    .line 402
    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/launcher/v;->a(II[I)Lcom/dolphin/browser/launcher/ai;

    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    aget v3, v0, v7

    iput v3, v2, Lcom/dolphin/browser/launcher/aj;->a:I

    .line 404
    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    aget v0, v0, v6

    iput v0, v2, Lcom/dolphin/browser/launcher/aj;->b:I

    .line 405
    if-eqz v1, :cond_4

    .line 406
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/launcher/ai;->f(Lcom/dolphin/browser/launcher/aj;)Lcom/dolphin/browser/launcher/ai;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_8

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    if-eq v1, v0, :cond_1

    .line 412
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v1, v2}, Lcom/dolphin/browser/launcher/ai;->e(Lcom/dolphin/browser/launcher/aj;)V

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/launcher/ai;->c(Lcom/dolphin/browser/launcher/aj;)V

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/launcher/ai;->d(Lcom/dolphin/browser/launcher/aj;)V

    move-object v1, v0

    .line 423
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    .line 427
    iget v0, p0, Lcom/dolphin/browser/launcher/v;->w:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->u:[I

    aget v2, v2, v7

    sub-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/dolphin/browser/launcher/v;->u:[I

    aget v4, v4, v6

    sub-int/2addr v4, p2

    int-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/launcher/v;->w:I

    .line 429
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->u:[I

    aput p1, v0, v7

    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->u:[I

    aput p2, v0, v6

    .line 431
    iget v0, p0, Lcom/dolphin/browser/launcher/v;->w:I

    iget v1, p0, Lcom/dolphin/browser/launcher/v;->x:I

    if-ge v0, v1, :cond_5

    const/16 v0, 0x3e8

    .line 433
    :goto_2
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->n:Landroid/view/View;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->z:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/dolphin/browser/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 434
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/dolphin/browser/launcher/v;->i:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_6

    .line 435
    iget v1, p0, Lcom/dolphin/browser/launcher/v;->q:I

    if-nez v1, :cond_3

    .line 436
    iput v6, p0, Lcom/dolphin/browser/launcher/v;->q:I

    .line 437
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->p:Lcom/dolphin/browser/launcher/ae;

    invoke-interface {v1, p1, p2, v7}, Lcom/dolphin/browser/launcher/ae;->a(III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/launcher/DragLayer;->a(I)V

    .line 439
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    invoke-virtual {v1, v7}, Lcom/dolphin/browser/launcher/x;->a(I)V

    .line 440
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    :cond_3
    :goto_3
    return-void

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/launcher/ai;->e(Lcom/dolphin/browser/launcher/aj;)V

    goto :goto_1

    .line 431
    :cond_5
    const/16 v0, 0x1f4

    goto :goto_2

    .line 443
    :cond_6
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/dolphin/browser/launcher/v;->i:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_7

    .line 444
    iget v1, p0, Lcom/dolphin/browser/launcher/v;->q:I

    if-nez v1, :cond_3

    .line 445
    iput v6, p0, Lcom/dolphin/browser/launcher/v;->q:I

    .line 446
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->p:Lcom/dolphin/browser/launcher/ae;

    invoke-interface {v1, p1, p2, v6}, Lcom/dolphin/browser/launcher/ae;->a(III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/launcher/DragLayer;->a(I)V

    .line 448
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    invoke-virtual {v1, v6}, Lcom/dolphin/browser/launcher/x;->a(I)V

    .line 449
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 453
    :cond_7
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/v;->d()V

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(FF)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 324
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->y:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/DragLayer;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 325
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->y:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/DragLayer;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->y:[I

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/v;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/dolphin/browser/launcher/v;->w:I

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/v;)Lcom/dolphin/browser/launcher/DragLayer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    return-object v0
.end method

.method private b(FF)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 509
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->e:[I

    .line 510
    float-to-int v0, p1

    float-to-int v4, p2

    invoke-direct {p0, v0, v4, v3}, Lcom/dolphin/browser/launcher/v;->a(II[I)Lcom/dolphin/browser/launcher/ai;

    move-result-object v0

    .line 512
    iget-object v4, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    aget v5, v3, v2

    iput v5, v4, Lcom/dolphin/browser/launcher/aj;->a:I

    .line 513
    iget-object v4, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    aget v3, v3, v1

    iput v3, v4, Lcom/dolphin/browser/launcher/aj;->b:I

    .line 515
    if-eqz v0, :cond_0

    .line 516
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iput-boolean v1, v3, Lcom/dolphin/browser/launcher/aj;->e:Z

    .line 517
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v3}, Lcom/dolphin/browser/launcher/ai;->e(Lcom/dolphin/browser/launcher/aj;)V

    .line 518
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v3}, Lcom/dolphin/browser/launcher/ai;->a(Lcom/dolphin/browser/launcher/aj;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/launcher/ai;->b(Lcom/dolphin/browser/launcher/aj;)V

    .line 523
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget-object v2, v2, Lcom/dolphin/browser/launcher/aj;->h:Lcom/dolphin/browser/launcher/af;

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v2, v0, v3, v1}, Lcom/dolphin/browser/launcher/af;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/aj;Z)V

    .line 524
    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-boolean v1, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    if-eqz v1, :cond_2

    .line 288
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    .line 289
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/v;->d()V

    .line 291
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    if-eqz v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget-boolean v0, v0, Lcom/dolphin/browser/launcher/aj;->k:Z

    .line 293
    if-nez v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget-object v1, v1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/ag;->e()V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    .line 300
    :cond_1
    if-nez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/w;

    .line 302
    invoke-interface {v0}, Lcom/dolphin/browser/launcher/w;->g()V

    goto :goto_0

    .line 306
    :cond_2
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 388
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 389
    iget v0, p0, Lcom/dolphin/browser/launcher/v;->q:I

    if-ne v0, v2, :cond_0

    .line 390
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/v;->q:I

    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/launcher/x;->a(I)V

    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->p:Lcom/dolphin/browser/launcher/ae;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/ae;->c()Z

    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/DragLayer;->i()V

    .line 395
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/dolphin/browser/launcher/v;->o:Landroid/view/View;

    .line 381
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/ae;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/dolphin/browser/launcher/v;->p:Lcom/dolphin/browser/launcher/ae;

    .line 566
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/ag;)V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/ag;->e()V

    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/w;

    .line 316
    invoke-interface {v0}, Lcom/dolphin/browser/launcher/w;->g()V

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/ai;)V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/w;)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;IILcom/dolphin/browser/launcher/af;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)Z
    .locals 14

    .prologue
    .line 165
    iget-boolean v3, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    if-eqz v3, :cond_0

    .line 166
    const/4 v3, 0x0

    .line 211
    :goto_0
    return v3

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->t:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/dolphin/browser/launcher/v;->t:Landroid/view/inputmethod/InputMethodManager;

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->t:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/dolphin/browser/launcher/v;->m:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 179
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolphin/browser/launcher/w;

    .line 180
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v3, v0, v1, v2}, Lcom/dolphin/browser/launcher/w;->a(Lcom/dolphin/browser/launcher/af;Ljava/lang/Object;I)V

    goto :goto_1

    .line 183
    :cond_2
    iget v3, p0, Lcom/dolphin/browser/launcher/v;->g:I

    sub-int v6, v3, p2

    .line 184
    iget v3, p0, Lcom/dolphin/browser/launcher/v;->h:I

    sub-int v7, v3, p3

    .line 186
    if-nez p8, :cond_5

    const/4 v3, 0x0

    move v4, v3

    .line 187
    :goto_2
    if-nez p8, :cond_6

    const/4 v3, 0x0

    .line 189
    :goto_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    .line 191
    new-instance v5, Lcom/dolphin/browser/launcher/aj;

    invoke-direct {v5}, Lcom/dolphin/browser/launcher/aj;-><init>()V

    iput-object v5, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    .line 193
    iget-object v5, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/dolphin/browser/launcher/aj;->e:Z

    .line 194
    iget-object v5, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget v8, p0, Lcom/dolphin/browser/launcher/v;->g:I

    add-int v4, v4, p2

    sub-int v4, v8, v4

    iput v4, v5, Lcom/dolphin/browser/launcher/aj;->c:I

    .line 195
    iget-object v4, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget v5, p0, Lcom/dolphin/browser/launcher/v;->h:I

    add-int v3, v3, p3

    sub-int v3, v5, v3

    iput v3, v4, Lcom/dolphin/browser/launcher/aj;->d:I

    .line 196
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/dolphin/browser/launcher/aj;->h:Lcom/dolphin/browser/launcher/af;

    .line 197
    iget-object v3, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    .line 199
    iget-object v13, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    new-instance v3, Lcom/dolphin/browser/launcher/ag;

    iget-object v4, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object v5, p1

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/dolphin/browser/launcher/ag;-><init>(Lcom/dolphin/browser/launcher/DragLayer;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v3, v13, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    .line 202
    if-eqz p7, :cond_3

    .line 203
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/launcher/ag;->a(Landroid/graphics/Point;)V

    .line 205
    :cond_3
    if-eqz p8, :cond_4

    .line 206
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/launcher/ag;->a(Landroid/graphics/Rect;)V

    .line 209
    :cond_4
    iget v4, p0, Lcom/dolphin/browser/launcher/v;->g:I

    iget v5, p0, Lcom/dolphin/browser/launcher/v;->h:I

    invoke-virtual {v3, v4, v5}, Lcom/dolphin/browser/launcher/ag;->a(II)V

    .line 210
    iget v3, p0, Lcom/dolphin/browser/launcher/v;->g:I

    iget v4, p0, Lcom/dolphin/browser/launcher/v;->h:I

    invoke-direct {p0, v3, v4}, Lcom/dolphin/browser/launcher/v;->a(II)V

    .line 211
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 186
    :cond_5
    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move v4, v3

    goto :goto_2

    .line 187
    :cond_6
    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/dolphin/browser/launcher/v;->a(FF)[I

    move-result-object v1

    .line 347
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 348
    const/4 v3, 0x1

    aget v1, v1, v3

    .line 350
    packed-switch v0, :pswitch_data_0

    .line 373
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    return v0

    .line 355
    :pswitch_1
    iput v2, p0, Lcom/dolphin/browser/launcher/v;->g:I

    .line 356
    iput v1, p0, Lcom/dolphin/browser/launcher/v;->h:I

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/dolphin/browser/launcher/v;->v:J

    .line 361
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    if-eqz v0, :cond_0

    .line 362
    int-to-float v0, v2

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/launcher/v;->b(FF)V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/v;->c()V

    goto :goto_0

    .line 367
    :pswitch_3
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/v;->b()V

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->o:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->s:Lcom/dolphin/browser/launcher/ai;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/launcher/ai;->e(Lcom/dolphin/browser/launcher/aj;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iput-boolean v3, v0, Lcom/dolphin/browser/launcher/aj;->k:Z

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iput-boolean v2, v0, Lcom/dolphin/browser/launcher/aj;->j:Z

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iput-boolean v2, v0, Lcom/dolphin/browser/launcher/aj;->e:Z

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/aj;->h:Lcom/dolphin/browser/launcher/af;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->j:Lcom/dolphin/browser/launcher/aj;

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/browser/launcher/af;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/aj;Z)V

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/v;->c()V

    .line 284
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/dolphin/browser/launcher/v;->n:Landroid/view/View;

    .line 605
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/ai;)V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 598
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 461
    iget-boolean v2, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    if-nez v2, :cond_0

    .line 505
    :goto_0
    return v0

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/dolphin/browser/launcher/v;->a(FF)[I

    move-result-object v3

    .line 467
    aget v4, v3, v0

    .line 468
    aget v3, v3, v1

    .line 470
    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 505
    goto :goto_0

    .line 473
    :pswitch_0
    iput v4, p0, Lcom/dolphin/browser/launcher/v;->g:I

    .line 474
    iput v3, p0, Lcom/dolphin/browser/launcher/v;->h:I

    .line 476
    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->b:Lcom/dolphin/browser/launcher/DragLayer;

    iget-object v4, p0, Lcom/dolphin/browser/launcher/v;->n:Landroid/view/View;

    iget-object v5, p0, Lcom/dolphin/browser/launcher/v;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v5}, Lcom/dolphin/browser/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 477
    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/dolphin/browser/launcher/v;->i:I

    add-int/2addr v2, v4

    if-lt v3, v2, :cond_1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/dolphin/browser/launcher/v;->i:I

    sub-int/2addr v2, v4

    if-le v3, v2, :cond_2

    .line 478
    :cond_1
    iput v1, p0, Lcom/dolphin/browser/launcher/v;->q:I

    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 481
    :cond_2
    iput v0, p0, Lcom/dolphin/browser/launcher/v;->q:I

    goto :goto_1

    .line 485
    :pswitch_1
    invoke-direct {p0, v4, v3}, Lcom/dolphin/browser/launcher/v;->a(II)V

    goto :goto_1

    .line 489
    :pswitch_2
    invoke-direct {p0, v4, v3}, Lcom/dolphin/browser/launcher/v;->a(II)V

    .line 490
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 492
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/v;->f:Z

    if-eqz v0, :cond_3

    .line 493
    int-to-float v0, v4

    int-to-float v2, v3

    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/launcher/v;->b(FF)V

    .line 495
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/v;->c()V

    goto :goto_1

    .line 498
    :pswitch_3
    iget-object v0, p0, Lcom/dolphin/browser/launcher/v;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/v;->r:Lcom/dolphin/browser/launcher/x;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 499
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/v;->b()V

    goto :goto_1

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
