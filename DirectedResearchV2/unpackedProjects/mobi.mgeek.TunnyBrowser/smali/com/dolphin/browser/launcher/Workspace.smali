.class public Lcom/dolphin/browser/launcher/Workspace;
.super Lcom/dolphin/browser/launcher/OverScrollView;
.source "Workspace.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/ae;
.implements Lcom/dolphin/browser/launcher/af;
.implements Lcom/dolphin/browser/launcher/ai;
.implements Lcom/dolphin/browser/launcher/w;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:Lcom/dolphin/browser/launcher/CellLayout;

.field private H:Lcom/dolphin/browser/launcher/ca;

.field private I:Z

.field private J:Lcom/dolphin/browser/launcher/ShortcutIcon;

.field a:Z

.field b:Z

.field c:Lcom/dolphin/browser/launcher/cc;

.field private d:Lcom/dolphin/browser/launcher/v;

.field private e:Z

.field private f:[I

.field private g:[I

.field private h:I

.field private i:I

.field private j:[I

.field private k:Lcom/dolphin/browser/launcher/az;

.field private l:Lcom/dolphin/browser/launcher/FolderIcon;

.field private m:Z

.field private n:Z

.field private final o:Lcom/dolphin/browser/launcher/a;

.field private final p:Lcom/dolphin/browser/launcher/a;

.field private q:I

.field private r:[I

.field private s:I

.field private t:F

.field private u:Lcom/dolphin/browser/launcher/bk;

.field private v:[I

.field private w:Lcom/dolphin/browser/launcher/bh;

.field private x:Lcom/dolphin/browser/launcher/ShortcutIcon;

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/OverScrollView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->a:Z

    .line 46
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->b:Z

    .line 49
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    .line 54
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    .line 55
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->g:[I

    .line 56
    iput v3, p0, Lcom/dolphin/browser/launcher/Workspace;->h:I

    .line 57
    iput v3, p0, Lcom/dolphin/browser/launcher/Workspace;->i:I

    .line 59
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    .line 61
    iput-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->k:Lcom/dolphin/browser/launcher/az;

    .line 62
    iput-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->l:Lcom/dolphin/browser/launcher/FolderIcon;

    .line 63
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->m:Z

    .line 64
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->n:Z

    .line 67
    new-instance v0, Lcom/dolphin/browser/launcher/a;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->o:Lcom/dolphin/browser/launcher/a;

    .line 68
    new-instance v0, Lcom/dolphin/browser/launcher/a;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->p:Lcom/dolphin/browser/launcher/a;

    .line 75
    iput v1, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    .line 77
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    .line 78
    iput v1, p0, Lcom/dolphin/browser/launcher/Workspace;->s:I

    .line 83
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    .line 87
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->y:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->F:Z

    .line 272
    new-instance v0, Lcom/dolphin/browser/launcher/co;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/co;-><init>(Lcom/dolphin/browser/launcher/Workspace;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->c:Lcom/dolphin/browser/launcher/cc;

    .line 112
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->o()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/OverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->a:Z

    .line 46
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->b:Z

    .line 49
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    .line 54
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    .line 55
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->g:[I

    .line 56
    iput v3, p0, Lcom/dolphin/browser/launcher/Workspace;->h:I

    .line 57
    iput v3, p0, Lcom/dolphin/browser/launcher/Workspace;->i:I

    .line 59
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    .line 61
    iput-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->k:Lcom/dolphin/browser/launcher/az;

    .line 62
    iput-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->l:Lcom/dolphin/browser/launcher/FolderIcon;

    .line 63
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->m:Z

    .line 64
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->n:Z

    .line 67
    new-instance v0, Lcom/dolphin/browser/launcher/a;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->o:Lcom/dolphin/browser/launcher/a;

    .line 68
    new-instance v0, Lcom/dolphin/browser/launcher/a;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/a;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->p:Lcom/dolphin/browser/launcher/a;

    .line 75
    iput v1, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    .line 77
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    .line 78
    iput v1, p0, Lcom/dolphin/browser/launcher/Workspace;->s:I

    .line 83
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    .line 87
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->y:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->F:Z

    .line 272
    new-instance v0, Lcom/dolphin/browser/launcher/co;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/co;-><init>(Lcom/dolphin/browser/launcher/Workspace;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->c:Lcom/dolphin/browser/launcher/cc;

    .line 103
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->o()V

    .line 104
    return-void
.end method

.method private a(Lcom/dolphin/browser/launcher/bh;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 933
    invoke-interface {p1, p2}, Lcom/dolphin/browser/launcher/bh;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 934
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 935
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 936
    invoke-interface {p1, v1}, Lcom/dolphin/browser/launcher/bh;->a(Landroid/graphics/Canvas;)V

    .line 937
    return-object v0
.end method

.method static a(Landroid/view/View;)Lcom/dolphin/browser/launcher/CellLayout;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/Workspace;Lcom/dolphin/browser/launcher/az;)Lcom/dolphin/browser/launcher/az;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Workspace;->k:Lcom/dolphin/browser/launcher/az;

    return-object p1
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->p:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->a()V

    .line 266
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->p:Lcom/dolphin/browser/launcher/a;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->c:Lcom/dolphin/browser/launcher/cc;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/a;->a(Lcom/dolphin/browser/launcher/cc;)V

    .line 267
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->a:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->p:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/launcher/a;->a(J)V

    .line 270
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/launcher/aj;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 397
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/launcher/Workspace;->a(IILcom/dolphin/browser/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    .line 403
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/dolphin/browser/launcher/CellLayout;->a(FF[I)F

    move-result v4

    .line 408
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/launcher/Workspace;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/CellLayout;[IFZLcom/dolphin/browser/launcher/ag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/launcher/Workspace;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/CellLayout;[IFLcom/dolphin/browser/launcher/aj;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v2, p2, v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->a(Landroid/view/View;II)Z

    move-result v0

    .line 419
    if-eqz v0, :cond_2

    .line 420
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 422
    invoke-static {p2}, Lcom/dolphin/browser/launcher/Workspace;->b(Landroid/view/View;)V

    .line 425
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 426
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v0, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 427
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v0, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 428
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b:Z

    .line 429
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/dolphin/browser/launcher/CellLayout;->a(II)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 430
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1, p2, v0}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/bi;)V

    .line 432
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v1

    iget-wide v2, v0, Lcom/dolphin/browser/launcher/bi;->f:J

    iget v4, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/dolphin/browser/launcher/f;->b(Lcom/dolphin/browser/launcher/bi;JI)V

    .line 445
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/Workspace;->b(Lcom/dolphin/browser/launcher/aj;Landroid/view/View;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 436
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a()I

    move-result v3

    aput v3, v1, v2

    .line 437
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b()I

    move-result v3

    aput v3, v1, v2

    .line 438
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/CellLayout;

    .line 439
    invoke-virtual {v1, p2}, Lcom/dolphin/browser/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 440
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Lcom/dolphin/browser/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 441
    invoke-virtual {v1, p2}, Lcom/dolphin/browser/launcher/CellLayout;->d(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->m()V

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/CellLayout;[IFLandroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 529
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/CellLayout;[IFZ)Z

    move-result v0

    .line 532
    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->o:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->o:Lcom/dolphin/browser/launcher/a;

    new-instance v1, Lcom/dolphin/browser/launcher/cs;

    aget v2, p3, v5

    aget v3, p3, v6

    invoke-direct {v1, p0, p2, v2, v3}, Lcom/dolphin/browser/launcher/cs;-><init>(Lcom/dolphin/browser/launcher/Workspace;Lcom/dolphin/browser/launcher/CellLayout;II)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/a;->a(Lcom/dolphin/browser/launcher/cc;)V

    .line 536
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->o:Lcom/dolphin/browser/launcher/a;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/a;->a(J)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/launcher/Workspace;->a(Ljava/lang/Object;Lcom/dolphin/browser/launcher/CellLayout;[IF)Z

    move-result v1

    .line 543
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    if-nez v2, :cond_2

    .line 544
    check-cast p5, Lcom/dolphin/browser/launcher/FolderIcon;

    iput-object p5, p0, Lcom/dolphin/browser/launcher/Workspace;->l:Lcom/dolphin/browser/launcher/FolderIcon;

    .line 545
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->l:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->b(Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0, v7}, Lcom/dolphin/browser/launcher/Workspace;->a(I)V

    goto :goto_0

    .line 550
    :cond_2
    iget v2, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    if-ne v2, v7, :cond_3

    if-nez v1, :cond_3

    .line 551
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/launcher/Workspace;->a(I)V

    .line 553
    :cond_3
    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    if-ne v1, v6, :cond_0

    if-nez v0, :cond_0

    .line 554
    invoke-virtual {p0, v5}, Lcom/dolphin/browser/launcher/Workspace;->a(I)V

    goto :goto_0
.end method

.method private a([ILjava/lang/Object;Lcom/dolphin/browser/launcher/CellLayout;Lcom/dolphin/browser/launcher/aj;)V
    .locals 2

    .prologue
    .line 388
    check-cast p2, Lcom/dolphin/browser/launcher/bi;

    .line 390
    const-wide/16 v0, -0x64

    iput-wide v0, p2, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bi;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 392
    check-cast v0, Lcom/dolphin/browser/launcher/bh;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    .line 393
    invoke-direct {p0, p4, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/aj;Landroid/view/View;)V

    .line 394
    return-void
.end method

.method private a(Lcom/dolphin/browser/launcher/CellLayout;II)Z
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p1, p2, p3}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 744
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    const/4 v0, 0x0

    .line 748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(IILcom/dolphin/browser/launcher/CellLayout;[I)[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 714
    invoke-virtual {p3, p1, p2, p4}, Lcom/dolphin/browser/launcher/CellLayout;->b(II[I)[I

    move-result-object v1

    .line 716
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->H:Lcom/dolphin/browser/launcher/ca;

    sget-object v2, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    if-ne v0, v2, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dolphin/browser/launcher/R$integer;->config_normal_countY:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 723
    :goto_0
    invoke-virtual {p3}, Lcom/dolphin/browser/launcher/CellLayout;->a()I

    move-result v3

    .line 724
    aget v2, v1, v8

    mul-int/2addr v2, v3

    aget v4, v1, v7

    add-int/2addr v2, v4

    .line 725
    mul-int/2addr v0, v3

    add-int/2addr v0, v3

    add-int/lit8 v4, v0, -0x1

    move v0, v2

    .line 726
    :goto_1
    if-gt v0, v4, :cond_3

    .line 727
    rem-int v2, v0, v3

    .line 728
    div-int v5, v0, v3

    .line 729
    invoke-direct {p0, p3, v2, v5}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/CellLayout;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 730
    aput v2, v1, v7

    .line 731
    aput v5, v1, v8

    move-object v0, v1

    .line 737
    :goto_2
    return-object v0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->H:Lcom/dolphin/browser/launcher/ca;

    sget-object v2, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    if-ne v0, v2, :cond_1

    .line 719
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dolphin/browser/launcher/R$integer;->config_minimized_countY:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p3}, Lcom/dolphin/browser/launcher/CellLayout;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 726
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    aget v0, v0, v7

    aput v0, v1, v7

    .line 736
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    aget v0, v0, v8

    aput v0, v1, v8

    move-object v0, v1

    .line 737
    goto :goto_2
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/Workspace;)[I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    return-object v0
.end method

.method static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 603
    if-nez p0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 607
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/launcher/aj;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 449
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v4, Lcom/dolphin/browser/launcher/cp;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/launcher/cp;-><init>(Lcom/dolphin/browser/launcher/Workspace;)V

    .line 458
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->j()V

    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    iget-object v1, p1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    const/4 v3, -0x1

    move-object v2, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/ag;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 465
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout;

    .line 466
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/launcher/CellLayout;->c(Landroid/view/View;)V

    .line 467
    return-void

    .line 462
    :cond_0
    iput-boolean v1, p1, Lcom/dolphin/browser/launcher/aj;->k:Z

    .line 463
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 871
    if-eqz p1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->p:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->a()V

    .line 874
    :cond_0
    return-void
.end method

.method private b(II)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 145
    sget v0, Lcom/dolphin/browser/launcher/R$integer;->config_countX:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 146
    sget v0, Lcom/dolphin/browser/launcher/R$dimen;->cell_width:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 147
    add-int/lit8 v5, v3, 0x1

    .line 148
    mul-int v0, v3, v4

    sub-int v0, p1, v0

    .line 149
    if-gez v0, :cond_0

    move v0, v1

    .line 152
    :cond_0
    div-int v5, v0, v5

    .line 155
    sget v0, Lcom/dolphin/browser/launcher/R$dimen;->icon_display_size:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->J:Lcom/dolphin/browser/launcher/ShortcutIcon;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/launcher/ShortcutIcon;->a(I)V

    .line 157
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 158
    iget-object v7, p0, Lcom/dolphin/browser/launcher/Workspace;->J:Lcom/dolphin/browser/launcher/ShortcutIcon;

    invoke-virtual {v7, v0, v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->measure(II)V

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->J:Lcom/dolphin/browser/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->getMeasuredHeight()I

    move-result v0

    .line 160
    sub-int v7, v6, v0

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 161
    sget v0, Lcom/dolphin/browser/launcher/R$dimen;->cell_height:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 167
    :cond_1
    sget v7, Lcom/dolphin/browser/launcher/R$integer;->config_maximized_countY:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 168
    add-int/lit8 v7, v2, 0x1

    .line 170
    mul-int/2addr v2, v0

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/dolphin/browser/launcher/R$dimen;->workspace_celllayout_padding_top:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v2, v8

    .line 172
    if-gez v2, :cond_2

    move v2, v1

    .line 175
    :cond_2
    div-int/2addr v2, v7

    .line 177
    iget v7, p0, Lcom/dolphin/browser/launcher/Workspace;->z:I

    if-ne v7, v3, :cond_3

    iget v7, p0, Lcom/dolphin/browser/launcher/Workspace;->A:I

    if-ne v7, v5, :cond_3

    iget v7, p0, Lcom/dolphin/browser/launcher/Workspace;->B:I

    if-ne v7, v2, :cond_3

    iget v7, p0, Lcom/dolphin/browser/launcher/Workspace;->C:I

    if-ne v7, v4, :cond_3

    iget v7, p0, Lcom/dolphin/browser/launcher/Workspace;->D:I

    if-eq v7, v0, :cond_4

    .line 180
    :cond_3
    iput v3, p0, Lcom/dolphin/browser/launcher/Workspace;->z:I

    .line 181
    iput v5, p0, Lcom/dolphin/browser/launcher/Workspace;->A:I

    .line 182
    iput v2, p0, Lcom/dolphin/browser/launcher/Workspace;->B:I

    .line 183
    iput v4, p0, Lcom/dolphin/browser/launcher/Workspace;->C:I

    .line 184
    iput v0, p0, Lcom/dolphin/browser/launcher/Workspace;->D:I

    .line 185
    iput v6, p0, Lcom/dolphin/browser/launcher/Workspace;->E:I

    .line 186
    const/4 v1, 0x1

    .line 188
    :cond_4
    return v1
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/Workspace;)[I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->g:[I

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/CellLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/launcher/Workspace;)Lcom/dolphin/browser/launcher/az;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->k:Lcom/dolphin/browser/launcher/az;

    return-object v0
.end method

.method private o()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    const v1, 0x3f0ccccd

    sget v2, Lcom/dolphin/browser/launcher/R$dimen;->icon_display_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/dolphin/browser/launcher/Workspace;->t:F

    .line 118
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/dolphin/browser/launcher/CellLayout;

    invoke-direct {v2, v1}, Lcom/dolphin/browser/launcher/CellLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    sget v2, Lcom/dolphin/browser/launcher/R$integer;->config_countX:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2, v6, v6}, Lcom/dolphin/browser/launcher/CellLayout;->a(III)V

    .line 121
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v7}, Lcom/dolphin/browser/launcher/Workspace;->addView(Landroid/view/View;II)V

    .line 122
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v3

    sget v4, Lcom/dolphin/browser/launcher/R$dimen;->workspace_celllayout_padding_top:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v4}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingRight()I

    move-result v4

    sget v5, Lcom/dolphin/browser/launcher/R$dimen;->workspace_celllayout_padding_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/dolphin/browser/launcher/CellLayout;->setPadding(IIII)V

    .line 127
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/support/v4/view/at;->b(Landroid/view/View;I)V

    .line 129
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/launcher/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 130
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/launcher/Workspace;->setVerticalScrollBarEnabled(Z)V

    .line 131
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/launcher/Workspace;->setScrollContainer(Z)V

    .line 132
    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_countX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/Workspace;->z:I

    .line 133
    new-instance v0, Lcom/dolphin/browser/launcher/cl;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/launcher/cl;-><init>(J)V

    .line 134
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/launcher/R$layout;->shortcut_icon:I

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->a(Landroid/view/LayoutInflater;ILcom/dolphin/browser/launcher/cl;)Lcom/dolphin/browser/launcher/ShortcutIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->J:Lcom/dolphin/browser/launcher/ShortcutIcon;

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->J:Lcom/dolphin/browser/launcher/ShortcutIcon;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/ShortcutIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    .line 298
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->k:Lcom/dolphin/browser/launcher/az;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->k:Lcom/dolphin/browser/launcher/az;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/az;->b()V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->o:Lcom/dolphin/browser/launcher/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/a;->a()V

    .line 860
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 863
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->l:Lcom/dolphin/browser/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->l:Lcom/dolphin/browser/launcher/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/FolderIcon;->c(Ljava/lang/Object;)V

    .line 865
    iput-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->l:Lcom/dolphin/browser/launcher/FolderIcon;

    .line 867
    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 878
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->h:I

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->i:I

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->s:I

    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    if-eq v0, v1, :cond_1

    .line 880
    :cond_0
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(J)V

    .line 881
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->h:I

    aput v1, v0, v2

    .line 882
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->i:I

    aput v1, v0, v3

    .line 883
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    iput v0, p0, Lcom/dolphin/browser/launcher/Workspace;->s:I

    .line 885
    :cond_1
    return-void
.end method


# virtual methods
.method a(Lcom/dolphin/browser/launcher/ca;)I
    .locals 5

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    .line 216
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    sget v3, Lcom/dolphin/browser/launcher/R$integer;->config_normal_countY:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/launcher/CellLayout;->b(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 218
    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/CellLayout;->f()I

    move-result v2

    sget v3, Lcom/dolphin/browser/launcher/R$dimen;->workspace_icon_text_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    sget v3, Lcom/dolphin/browser/launcher/R$integer;->config_minimized_countY:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/launcher/CellLayout;->b(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 223
    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/CellLayout;->f()I

    move-result v3

    sget v4, Lcom/dolphin/browser/launcher/R$dimen;->workspace_icon_text_margin:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 225
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 226
    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/CellLayout;->d()I

    move-result v1

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/CellLayout;->g()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 230
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 1046
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/CellLayout;->j()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->smoothScrollBy(II)V

    .line 1047
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->p()Lcom/dolphin/browser/launcher/Folder;

    move-result-object v0

    .line 1048
    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Folder;->k()V

    .line 1051
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 837
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    if-eq p1, v0, :cond_1

    .line 838
    if-nez p1, :cond_2

    .line 839
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->r()V

    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/Workspace;->b(Z)V

    .line 843
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->q()V

    .line 851
    :cond_0
    :goto_0
    iput p1, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    .line 853
    :cond_1
    return-void

    .line 844
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 845
    invoke-direct {p0, v1}, Lcom/dolphin/browser/launcher/Workspace;->b(Z)V

    .line 846
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->q()V

    goto :goto_0

    .line 847
    :cond_3
    if-ne p1, v1, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->r()V

    .line 849
    invoke-direct {p0, v1}, Lcom/dolphin/browser/launcher/Workspace;->b(Z)V

    goto :goto_0
.end method

.method a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 826
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->h:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->i:I

    if-eq p2, v0, :cond_1

    .line 827
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/launcher/Workspace;->h:I

    .line 828
    iput p2, p0, Lcom/dolphin/browser/launcher/Workspace;->i:I

    .line 829
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->g:[I

    aput p1, v0, v2

    .line 830
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->g:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 831
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/launcher/Workspace;->a(I)V

    .line 832
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->s()V

    .line 834
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Lcom/dolphin/browser/launcher/aj;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 309
    if-eqz p3, :cond_2

    .line 310
    if-eq p1, p0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->b(Landroid/view/View;)V

    .line 314
    instance-of v1, v0, Lcom/dolphin/browser/launcher/ai;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->d:Lcom/dolphin/browser/launcher/v;

    check-cast v0, Lcom/dolphin/browser/launcher/ai;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/v;->b(Lcom/dolphin/browser/launcher/ai;)V

    .line 334
    :cond_0
    :goto_0
    iget-boolean v0, p2, Lcom/dolphin/browser/launcher/aj;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    .line 339
    invoke-virtual {p0, v3, v3}, Lcom/dolphin/browser/launcher/Workspace;->a(II)V

    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    aput v3, v0, v4

    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 342
    return-void

    .line 320
    :cond_2
    if-nez p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout;

    .line 324
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 325
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/dolphin/browser/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 326
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->d(Landroid/view/View;)V

    .line 328
    invoke-direct {p0, p2, v1}, Lcom/dolphin/browser/launcher/Workspace;->b(Lcom/dolphin/browser/launcher/aj;Landroid/view/View;)V

    goto :goto_0

    .line 330
    :cond_3
    iput-boolean v4, p2, Lcom/dolphin/browser/launcher/aj;->k:Z

    goto :goto_0
.end method

.method a(Landroid/view/View;[I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getScrollX()I

    move-result v0

    .line 514
    aget v1, p2, v2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p2, v2

    .line 515
    aget v0, p2, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p2, v3

    .line 516
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/CellLayout;)V
    .locals 6

    .prologue
    .line 193
    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->C:I

    iget v2, p0, Lcom/dolphin/browser/launcher/Workspace;->D:I

    iget v3, p0, Lcom/dolphin/browser/launcher/Workspace;->A:I

    iget v4, p0, Lcom/dolphin/browser/launcher/Workspace;->B:I

    iget v5, p0, Lcom/dolphin/browser/launcher/Workspace;->E:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/launcher/CellLayout;->a(IIIII)V

    .line 194
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/af;Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->b:Z

    .line 255
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->m()V

    .line 256
    return-void
.end method

.method a(Lcom/dolphin/browser/launcher/bh;)V
    .locals 2

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->I:Z

    if-eqz v0, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    invoke-interface {p1}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v1

    .line 893
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-interface {p1}, Lcom/dolphin/browser/launcher/bh;->b()Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->d:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/v;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    .line 903
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 904
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 905
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 906
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout;

    .line 907
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->b(Landroid/view/View;)V

    .line 909
    invoke-virtual {p0, p1, p0}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/bh;Lcom/dolphin/browser/launcher/af;)Z

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/launcher/bk;Lcom/dolphin/browser/launcher/v;)V
    .locals 1

    .prologue
    .line 247
    iput-object p2, p0, Lcom/dolphin/browser/launcher/Workspace;->d:Lcom/dolphin/browser/launcher/v;

    .line 248
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/CellLayout;->a(Lcom/dolphin/browser/launcher/bk;)V

    .line 250
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/dolphin/browser/launcher/Workspace;->I:Z

    .line 1121
    return-void
.end method

.method public a([I)V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;[I)V

    .line 823
    return-void
.end method

.method public a(III)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1064
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->H:Lcom/dolphin/browser/launcher/ca;

    sget-object v3, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    if-eq v2, v3, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return v0

    .line 1067
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getScrollY()I

    move-result v2

    .line 1068
    if-nez v2, :cond_2

    if-eqz p3, :cond_0

    .line 1070
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/CellLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_3

    if-eq p3, v1, :cond_0

    .line 1073
    :cond_3
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    move v0, v1

    .line 1074
    goto :goto_0
.end method

.method a(Landroid/view/View;Lcom/dolphin/browser/launcher/CellLayout;[IFLcom/dolphin/browser/launcher/aj;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 681
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->t:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 705
    :goto_0
    return v0

    .line 683
    :cond_0
    aget v0, p3, v1

    aget v3, p3, v2

    invoke-virtual {p2, v0, v3}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v0

    .line 684
    iget-boolean v3, p0, Lcom/dolphin/browser/launcher/Workspace;->n:Z

    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 685
    :cond_1
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->n:Z

    .line 687
    instance-of v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;

    if-eqz v3, :cond_3

    .line 688
    check-cast v0, Lcom/dolphin/browser/launcher/FolderIcon;

    .line 689
    iget-object v3, p5, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 690
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->j()V

    .line 691
    new-instance v1, Lcom/dolphin/browser/launcher/cr;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/cr;-><init>(Lcom/dolphin/browser/launcher/Workspace;)V

    iput-object v1, p5, Lcom/dolphin/browser/launcher/aj;->i:Ljava/lang/Runnable;

    .line 696
    invoke-virtual {v0, p5}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/aj;)V

    .line 699
    if-nez p6, :cond_2

    .line 700
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->b(Landroid/view/View;)V

    :cond_2
    move v0, v2

    .line 702
    goto :goto_0

    :cond_3
    move v0, v1

    .line 705
    goto :goto_0
.end method

.method a(Landroid/view/View;Lcom/dolphin/browser/launcher/CellLayout;[IFZLcom/dolphin/browser/launcher/ag;)Z
    .locals 8

    .prologue
    .line 614
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->t:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    .line 615
    :cond_0
    if-nez p2, :cond_3

    const/4 v2, 0x0

    .line 617
    :goto_1
    const/4 v0, 0x0

    .line 618
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    if-eqz v1, :cond_1

    .line 619
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Landroid/view/View;)Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v1}, Lcom/dolphin/browser/launcher/bh;->b()Lcom/dolphin/browser/launcher/bi;

    move-result-object v1

    iget v1, v1, Lcom/dolphin/browser/launcher/bi;->h:I

    const/4 v3, 0x0

    aget v3, p3, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v1}, Lcom/dolphin/browser/launcher/bh;->b()Lcom/dolphin/browser/launcher/bi;

    move-result-object v1

    iget v1, v1, Lcom/dolphin/browser/launcher/bi;->i:I

    const/4 v3, 0x1

    aget v3, p3, v3

    if-ne v1, v3, :cond_4

    if-ne v0, p2, :cond_4

    const/4 v0, 0x1

    .line 624
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->m:Z

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 615
    :cond_3
    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-virtual {p2, v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 620
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 625
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 626
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v1}, Lcom/dolphin/browser/launcher/bh;->b()Lcom/dolphin/browser/launcher/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/bi;->k()Z

    move-result v1

    if-nez v1, :cond_7

    .line 627
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 629
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->m:Z

    .line 631
    instance-of v1, v0, Lcom/dolphin/browser/launcher/cl;

    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/dolphin/browser/launcher/cl;

    .line 634
    if-eqz v1, :cond_c

    if-eqz v3, :cond_c

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolphin/browser/launcher/cl;

    move-object v1, v0

    .line 636
    check-cast v1, Lcom/dolphin/browser/launcher/cl;

    .line 638
    if-nez p5, :cond_8

    .line 639
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->b(Landroid/view/View;)V

    .line 642
    :cond_8
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 643
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0, v2, v5}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 644
    invoke-virtual {p2, v2}, Lcom/dolphin/browser/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 646
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    const/4 v4, 0x0

    aget v4, p3, v4

    const/4 v6, 0x1

    aget v6, p3, v6

    invoke-virtual {v0, p2, v4, v6}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/CellLayout;II)Lcom/dolphin/browser/launcher/FolderIcon;

    move-result-object v0

    .line 648
    const/4 v4, -0x1

    iput v4, v1, Lcom/dolphin/browser/launcher/cl;->h:I

    .line 649
    const/4 v4, -0x1

    iput v4, v1, Lcom/dolphin/browser/launcher/cl;->i:I

    .line 650
    const/4 v4, -0x1

    iput v4, v3, Lcom/dolphin/browser/launcher/cl;->h:I

    .line 651
    const/4 v4, -0x1

    iput v4, v3, Lcom/dolphin/browser/launcher/cl;->i:I

    .line 652
    iget-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->k:Lcom/dolphin/browser/launcher/az;

    if-eqz v4, :cond_9

    .line 653
    iget-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->k:Lcom/dolphin/browser/launcher/az;

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/FolderIcon;)V

    .line 657
    :cond_9
    if-eqz p6, :cond_a

    const/4 v4, 0x1

    .line 658
    :goto_3
    if-eqz v4, :cond_b

    .line 659
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->j()V

    .line 660
    new-instance v7, Lcom/dolphin/browser/launcher/cq;

    invoke-direct {v7, p0}, Lcom/dolphin/browser/launcher/cq;-><init>(Lcom/dolphin/browser/launcher/Workspace;)V

    .line 668
    check-cast v2, Lcom/dolphin/browser/launcher/bh;

    const/high16 v6, 0x3f800000

    move-object v4, p6

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/bh;Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 674
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 657
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 671
    :cond_b
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/cl;)V

    .line 672
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_4

    .line 676
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/aj;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 773
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    .line 774
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->h:Lcom/dolphin/browser/launcher/af;

    if-eq v0, p0, :cond_0

    .line 777
    if-nez v2, :cond_1

    move v5, v6

    .line 817
    :cond_0
    :goto_0
    return v5

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/launcher/aj;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    .line 784
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Landroid/view/View;[I)V

    .line 786
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Landroid/view/View;)Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_2

    move v5, v6

    .line 789
    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v1, v1, v5

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/launcher/Workspace;->a(IILcom/dolphin/browser/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    .line 795
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    aget v0, v0, v6

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    aget v0, v0, v5

    if-ltz v0, :cond_3

    move v0, v5

    .line 796
    :goto_1
    if-nez v0, :cond_4

    move v5, v6

    .line 797
    goto :goto_0

    :cond_3
    move v0, v6

    .line 795
    goto :goto_1

    .line 800
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v1, v1, v5

    int-to-float v1, v1

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/dolphin/browser/launcher/CellLayout;->a(FF[I)F

    move-result v4

    .line 803
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    if-nez v0, :cond_5

    iget-object v1, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v1, Lcom/dolphin/browser/launcher/bi;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    :cond_5
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    invoke-virtual {p0, v0, v2, v1, v4}, Lcom/dolphin/browser/launcher/Workspace;->a(Ljava/lang/Object;Lcom/dolphin/browser/launcher/CellLayout;[IF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/CellLayout;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->m()V

    move v5, v6

    .line 814
    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/bh;Lcom/dolphin/browser/launcher/af;)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 913
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 915
    invoke-direct {p0, p1, v8}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/bh;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 917
    invoke-interface {p1}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    .line 918
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    invoke-virtual {v2, v0, v3}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;[I)V

    .line 919
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    aget v0, v0, v6

    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    .line 920
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    iget v3, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    .line 922
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->d:Lcom/dolphin/browser/launcher/v;

    invoke-interface {p1}, Lcom/dolphin/browser/launcher/bh;->b()Lcom/dolphin/browser/launcher/bi;

    move-result-object v5

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000

    move-object v4, p2

    invoke-virtual/range {v0 .. v9}, Lcom/dolphin/browser/launcher/v;->a(Landroid/graphics/Bitmap;IILcom/dolphin/browser/launcher/af;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)Z

    move-result v0

    .line 924
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 925
    return v0
.end method

.method a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/CellLayout;[IFZ)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 562
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->t:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v3

    .line 563
    :cond_1
    aget v0, p3, v3

    aget v1, p3, v2

    invoke-virtual {p2, v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v1

    .line 564
    if-eqz v1, :cond_0

    .line 567
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 568
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
    iget-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    if-eqz v4, :cond_5

    .line 574
    iget-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v4}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v4

    if-ne v1, v4, :cond_3

    move v1, v2

    .line 577
    :goto_1
    if-nez v1, :cond_0

    if-eqz p5, :cond_2

    iget-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->m:Z

    if-eqz v1, :cond_0

    .line 581
    :cond_2
    instance-of v0, v0, Lcom/dolphin/browser/launcher/cl;

    .line 583
    instance-of v1, p1, Lcom/dolphin/browser/launcher/cl;

    .line 585
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v1, v3

    .line 574
    goto :goto_1

    :cond_4
    move v2, v3

    .line 585
    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method a(Ljava/lang/Object;Lcom/dolphin/browser/launcher/CellLayout;[IF)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 590
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->t:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 599
    :goto_0
    return v0

    .line 591
    :cond_0
    aget v0, p3, v1

    aget v3, p3, v2

    invoke-virtual {p2, v0, v3}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v0

    .line 593
    instance-of v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;

    if-eqz v3, :cond_1

    .line 594
    check-cast v0, Lcom/dolphin/browser/launcher/FolderIcon;

    .line 595
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 596
    goto :goto_0

    :cond_1
    move v0, v1

    .line 599
    goto :goto_0
.end method

.method b(Lcom/dolphin/browser/launcher/ca;)I
    .locals 3

    .prologue
    .line 235
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/ca;)I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->B:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->E:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/launcher/R$dimen;->background_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :goto_0
    return v0

    .line 238
    :cond_0
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    if-ne p1, v0, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/ca;)I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->B:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->E:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dolphin/browser/launcher/R$dimen;->background_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b([I)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1089
    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->z:I

    if-nez v1, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return v0

    .line 1092
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/launcher/CellLayout;->b([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1093
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    aget v0, v0, v4

    aput v0, p1, v4

    .line 1094
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    aget v0, v0, v5

    aput v0, p1, v5

    .line 1095
    aget v0, p1, v5

    iget v1, p0, Lcom/dolphin/browser/launcher/Workspace;->z:I

    mul-int/2addr v0, v1

    aget v1, p1, v4

    add-int/2addr v0, v1

    goto :goto_0

    .line 1097
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 1098
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dolphin/browser/launcher/R$integer;->config_max_count:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1099
    if-ge v1, v2, :cond_0

    .line 1101
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->z:I

    rem-int v0, v1, v0

    aput v0, p1, v4

    .line 1102
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->z:I

    div-int v0, v1, v0

    aput v0, p1, v5

    move v0, v1

    .line 1103
    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1055
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/CellLayout;->j()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->smoothScrollBy(II)V

    .line 1056
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->p()Lcom/dolphin/browser/launcher/Folder;

    move-result-object v0

    .line 1057
    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Folder;->k()V

    .line 1060
    :cond_0
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/CellLayout;)V
    .locals 2

    .prologue
    .line 944
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/dolphin/browser/launcher/CellLayout;->a([IZ)V

    .line 945
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/aj;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/launcher/aj;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    .line 361
    if-eqz v0, :cond_0

    .line 362
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(Landroid/view/View;[I)V

    .line 365
    :cond_0
    iget-object v1, p1, Lcom/dolphin/browser/launcher/aj;->h:Lcom/dolphin/browser/launcher/af;

    if-eq v1, p0, :cond_2

    .line 366
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v2, v2, v4

    aput v2, v1, v4

    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v2, v2, v5

    aput v2, v1, v5

    .line 368
    iget-object v2, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/dolphin/browser/launcher/Workspace;->a([ILjava/lang/Object;Lcom/dolphin/browser/launcher/CellLayout;Lcom/dolphin/browser/launcher/aj;)V

    .line 374
    :cond_1
    :goto_0
    invoke-virtual {p0, v3, v3}, Lcom/dolphin/browser/launcher/Workspace;->a(II)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    .line 376
    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->w:Lcom/dolphin/browser/launcher/bh;

    invoke-interface {v0}, Lcom/dolphin/browser/launcher/bh;->c()Landroid/view/View;

    move-result-object v0

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/aj;Landroid/view/View;)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 941
    return-void
.end method

.method public c(Lcom/dolphin/browser/launcher/aj;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 471
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->m:Z

    .line 472
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->n:Z

    .line 473
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    aput v2, v0, v1

    .line 474
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->r:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 475
    return-void
.end method

.method public c(Lcom/dolphin/browser/launcher/ca;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1113
    iput-object p1, p0, Lcom/dolphin/browser/launcher/Workspace;->H:Lcom/dolphin/browser/launcher/ca;

    .line 1114
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->d:Lcom/dolphin/browser/launcher/ca;

    if-eq p1, v0, :cond_0

    .line 1115
    invoke-virtual {p0, v1, v1}, Lcom/dolphin/browser/launcher/Workspace;->scrollTo(II)V

    .line 1117
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1079
    .line 1080
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->invalidate()V

    .line 1082
    const/4 v0, 0x1

    .line 1083
    iput-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    .line 1085
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public d(Lcom/dolphin/browser/launcher/aj;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 480
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->e:Z

    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    .line 484
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/launcher/aj;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    .line 488
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Landroid/view/View;[I)V

    .line 489
    iget-object v1, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v1, Lcom/dolphin/browser/launcher/bi;

    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v0, v0, v5

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/dolphin/browser/launcher/Workspace;->a(IILcom/dolphin/browser/launcher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    .line 494
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    aget v0, v0, v5

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    aget v3, v3, v6

    invoke-virtual {p0, v0, v3}, Lcom/dolphin/browser/launcher/Workspace;->a(II)V

    .line 496
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v0, v0, v5

    int-to-float v0, v0

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->j:[I

    aget v3, v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    invoke-virtual {v2, v0, v3, v4}, Lcom/dolphin/browser/launcher/CellLayout;->a(FF[I)F

    move-result v4

    .line 499
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    aget v0, v0, v5

    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    aget v3, v3, v6

    invoke-virtual {v2, v0, v3}, Lcom/dolphin/browser/launcher/CellLayout;->b(II)Landroid/view/View;

    move-result-object v5

    .line 502
    iget-object v3, p0, Lcom/dolphin/browser/launcher/Workspace;->f:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/CellLayout;[IFLandroid/view/View;)V

    .line 504
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->s()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public e(Lcom/dolphin/browser/launcher/aj;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 753
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    if-ne v0, v2, :cond_0

    .line 754
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/Workspace;->m:Z

    .line 763
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->p()V

    .line 764
    return-void

    .line 755
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/launcher/Workspace;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 756
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/Workspace;->n:Z

    goto :goto_0

    .line 758
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->r()V

    .line 759
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/Workspace;->q()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lcom/dolphin/browser/launcher/aj;)Lcom/dolphin/browser/launcher/ai;
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->b:Z

    .line 261
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(J)V

    .line 262
    return-void
.end method

.method public h()Lcom/dolphin/browser/launcher/CellLayout;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    return-object v0
.end method

.method i()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/dolphin/browser/launcher/Workspace;->F:Z

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/CellLayout;->a([IZ)V

    .line 286
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/f;->c()V

    .line 287
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->l()V

    .line 288
    return-void
.end method

.method j()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 948
    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->a:Z

    .line 949
    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/Workspace;->b(Z)V

    .line 950
    return-void
.end method

.method k()V
    .locals 2

    .prologue
    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->a:Z

    .line 954
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/launcher/Workspace;->a(J)V

    .line 955
    return-void
.end method

.method l()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 981
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->x:Lcom/dolphin/browser/launcher/ShortcutIcon;

    if-nez v0, :cond_0

    .line 982
    new-instance v0, Lcom/dolphin/browser/launcher/cl;

    const-wide/16 v1, -0x4

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/launcher/cl;-><init>(J)V

    .line 983
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/bk;->y()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 984
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/graphics/Bitmap;)V

    .line 985
    const-wide/16 v1, -0x64

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/launcher/cl;->a(J)V

    .line 986
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 987
    invoke-virtual {v0, v4}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 988
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 989
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 990
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 991
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/bi;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ShortcutIcon;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->x:Lcom/dolphin/browser/launcher/ShortcutIcon;

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->x:Lcom/dolphin/browser/launcher/ShortcutIcon;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->b(Landroid/view/View;)V

    .line 994
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Workspace;->b([I)I

    move-result v1

    .line 995
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->x:Lcom/dolphin/browser/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 997
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v0, Lcom/dolphin/browser/launcher/cl;->h:I

    .line 998
    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->v:[I

    aget v2, v2, v4

    iput v2, v0, Lcom/dolphin/browser/launcher/cl;->i:I

    .line 999
    iput v1, v0, Lcom/dolphin/browser/launcher/cl;->j:I

    .line 1000
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/Workspace;->x:Lcom/dolphin/browser/launcher/ShortcutIcon;

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Lcom/dolphin/browser/launcher/bi;)V

    .line 1002
    :cond_1
    iput-boolean v4, p0, Lcom/dolphin/browser/launcher/Workspace;->y:Z

    .line 1003
    return-void
.end method

.method m()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->x:Lcom/dolphin/browser/launcher/ShortcutIcon;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/Workspace;->b(Landroid/view/View;)V

    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/Workspace;->y:Z

    .line 1008
    return-void
.end method

.method n()V
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->x:Lcom/dolphin/browser/launcher/ShortcutIcon;

    if-nez v0, :cond_0

    .line 1013
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->l()V

    .line 1018
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->u:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->y()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->x:Lcom/dolphin/browser/launcher/ShortcutIcon;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 198
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 200
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/launcher/Workspace;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/Workspace;->a(Lcom/dolphin/browser/launcher/CellLayout;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_countX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v2

    .line 206
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/CellLayout;->getChildCount()I

    move-result v3

    iget-boolean v1, p0, Lcom/dolphin/browser/launcher/Workspace;->y:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v3

    mul-int v3, v2, v0

    if-le v1, v3, :cond_1

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/launcher/Workspace;->G:Lcom/dolphin/browser/launcher/CellLayout;

    mul-int v3, v2, v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/dolphin/browser/launcher/CellLayout;->a(III)V

    .line 210
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/launcher/OverScrollView;->onMeasure(II)V

    .line 211
    return-void

    .line 206
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->H:Lcom/dolphin/browser/launcher/ca;

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    if-eq v0, v1, :cond_0

    .line 1030
    const/4 v0, 0x0

    .line 1032
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/dolphin/browser/launcher/OverScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/dolphin/browser/launcher/Workspace;->H:Lcom/dolphin/browser/launcher/ca;

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    if-eq v0, v1, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 1041
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/launcher/OverScrollView;->scrollBy(II)V

    goto :goto_0
.end method
