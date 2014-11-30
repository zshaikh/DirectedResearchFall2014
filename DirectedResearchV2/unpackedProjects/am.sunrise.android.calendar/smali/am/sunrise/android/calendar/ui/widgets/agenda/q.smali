.class public Lam/sunrise/android/calendar/ui/widgets/agenda/q;
.super Lam/sunrise/android/calendar/ui/widgets/agenda/k;
.source "AgendaViewEventItem.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Landroid/graphics/Typeface;

.field private I:Landroid/text/StaticLayout;

.field private J:Lam/sunrise/android/calendar/ui/mainview/k;

.field private K:Landroid/text/StaticLayout;

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Landroid/text/StaticLayout;

.field private O:Ljava/lang/String;

.field private P:Landroid/text/StaticLayout;

.field private Q:Landroid/text/StaticLayout;

.field private R:Landroid/graphics/drawable/Drawable;

.field private S:Landroid/text/StaticLayout;

.field private T:Z

.field private U:Landroid/graphics/drawable/Drawable;

.field private V:Landroid/graphics/drawable/Drawable;

.field private W:Lcom/b/a/ay;

.field private Z:[Landroid/graphics/drawable/Drawable;

.field private a:Landroid/graphics/Paint;

.field private aa:[Lcom/b/a/ay;

.field private ab:Landroid/text/StaticLayout;

.field private ac:Landroid/graphics/Typeface;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:[I

.field private ai:Z

.field private aj:Landroid/text/StaticLayout;

.field private ak:Z

.field private final al:Landroid/graphics/Rect;

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Typeface;

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Typeface;

.field private t:I

.field private u:I

.field private v:Landroid/graphics/Typeface;

.field private w:I

.field private x:I

.field private y:Landroid/graphics/Typeface;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->al:Landroid/graphics/Rect;

    .line 141
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->c()V

    .line 142
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Lam/sunrise/android/calendar/ui/mainview/k;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    return-object v0
.end method

.method private a(ILandroid/graphics/drawable/Drawable;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    .line 675
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 677
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 679
    :cond_0
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;ILandroid/graphics/drawable/Drawable;II)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(ILandroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/q;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 649
    if-eqz p1, :cond_0

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 652
    :cond_0
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    return v0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 655
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 656
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    .line 657
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 659
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 661
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->invalidate()V

    .line 662
    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->U:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    const v3, 0x7f0c0042

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 418
    const v0, 0x7f020089

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->setBackgroundResource(I)V

    .line 420
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 422
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    .line 424
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    .line 425
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 426
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 427
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    const v0, 0x7f0c0031

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->c:I

    .line 430
    const v0, 0x7f0c0039

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->d:I

    .line 431
    const v0, 0x7f0c0038

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->e:I

    .line 432
    const v0, 0x7f0c003a

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->f:I

    .line 434
    const v0, 0x7f0c0034

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->g:I

    .line 435
    const v0, 0x7f0a001c

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->h:I

    .line 436
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->i:Landroid/graphics/Typeface;

    .line 437
    const v0, 0x7f0c0035

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->j:I

    .line 439
    const v0, 0x7f0c0033

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    .line 440
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    .line 441
    const v0, 0x7f0c0032

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->m:I

    .line 443
    const v0, 0x7f0c003b

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->n:I

    .line 444
    const v0, 0x7f0a0017

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->o:I

    .line 445
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->p:Landroid/graphics/Typeface;

    .line 447
    const v0, 0x7f0c002b

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->q:I

    .line 448
    const v0, 0x7f0a0015

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->r:I

    .line 449
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->s:Landroid/graphics/Typeface;

    .line 451
    const v0, 0x7f0c0030

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->t:I

    .line 452
    const v0, 0x7f0a0018

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->u:I

    .line 453
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->v:Landroid/graphics/Typeface;

    .line 455
    const v0, 0x7f0c002d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->w:I

    .line 456
    const v0, 0x7f0a0016

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->x:I

    .line 457
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->y:Landroid/graphics/Typeface;

    .line 458
    const v0, 0x7f0c002f

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->z:I

    .line 459
    const v0, 0x7f0c002e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->A:I

    .line 461
    const v0, 0x7f0c0021

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    .line 462
    const v0, 0x7f0c0020

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->C:I

    .line 463
    const v0, 0x7f0c001f

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->D:I

    .line 465
    const v0, 0x7f0c0022

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->F:I

    .line 466
    const v0, 0x7f0a000e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->G:I

    .line 467
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->H:Landroid/graphics/Typeface;

    .line 469
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ac:Landroid/graphics/Typeface;

    .line 470
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ad:I

    .line 471
    const v0, 0x7f0a001f

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ae:I

    .line 472
    const v0, 0x7f0a0020

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->af:I

    .line 473
    const v0, 0x7f0c0043

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ag:I

    .line 474
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    .line 475
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    const v1, 0x7f0c0045

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v7

    .line 476
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    const v1, 0x7f0c0047

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, v2

    .line 477
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    const/4 v1, 0x2

    const v2, 0x7f0c0046

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 478
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    const/4 v1, 0x3

    const v2, 0x7f0c0044

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 480
    const v0, 0x7f0d0001

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->E:I

    .line 482
    const v0, 0x7f02008b

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->U:Landroid/graphics/drawable/Drawable;

    .line 483
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->U:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    const v0, 0x7f02008c

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->R:Landroid/graphics/drawable/Drawable;

    .line 485
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->R:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->E:I

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    .line 488
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/widgets/agenda/r;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aa:[Lcom/b/a/ay;

    .line 490
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    const v2, 0x7f0a001b

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->n:I

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->p:Landroid/graphics/Typeface;

    invoke-static {v0, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    .line 493
    new-instance v0, Landroid/text/StaticLayout;

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->K:Landroid/text/StaticLayout;

    .line 496
    new-instance v0, Landroid/text/StaticLayout;

    const v1, 0x7f0f00f6

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->h:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->g:I

    iget-object v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->i:Landroid/graphics/Typeface;

    invoke-static {v2, v3, v4, v8}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->I:Landroid/text/StaticLayout;

    .line 500
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ak:Z

    .line 501
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/widgets/agenda/q;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    return v0
.end method

.method private d()V
    .locals 12

    .prologue
    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 504
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b()V

    .line 505
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->M:Ljava/lang/String;

    .line 506
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    .line 507
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->O:Ljava/lang/String;

    .line 508
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->P:Landroid/text/StaticLayout;

    .line 509
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    .line 510
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->S:Landroid/text/StaticLayout;

    .line 511
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 512
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    .line 513
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->W:Lcom/b/a/ay;

    .line 514
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->f()V

    .line 515
    iput-boolean v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->L:Z

    .line 516
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ab:Landroid/text/StaticLayout;

    .line 517
    iput-boolean v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ai:Z

    .line 518
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aj:Landroid/text/StaticLayout;

    .line 520
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-boolean v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->d:Z

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->M:Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 532
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lc/a/a/b;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v3, Lc/a/a/b;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v2, v3}, Lc/a/a/aa;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/aa;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->O:Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->O:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 537
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->O:Ljava/lang/String;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->r:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->q:I

    iget-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->s:Landroid/graphics/Typeface;

    invoke-static {v2, v3, v4, v9}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->P:Landroid/text/StaticLayout;

    .line 582
    :cond_1
    :goto_1
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->M:Ljava/lang/String;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->o:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->n:I

    iget-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->p:Landroid/graphics/Typeface;

    invoke-static {v2, v3, v4, v9}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    .line 586
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    iput-boolean v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->T:Z

    .line 588
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->T:Z

    if-eqz v0, :cond_a

    .line 589
    :goto_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-ge v7, v0, :cond_a

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_a

    .line 590
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aa:[Lcom/b/a/ay;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/agenda/r;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {v1, p0, v2, v7}, Lam/sunrise/android/calendar/ui/widgets/agenda/r;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/q;Ljava/lang/String;I)V

    aput-object v1, v0, v7

    .line 591
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 592
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aa:[Lcom/b/a/ay;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 589
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 545
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->q:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->p:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->q:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    :goto_5
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->L:Z

    .line 549
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->L:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    .line 553
    :goto_6
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ak:Z

    if-eqz v1, :cond_5

    .line 554
    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->M:Ljava/lang/String;

    .line 566
    :goto_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 569
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lc/a/a/b;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v3, Lc/a/a/b;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-direct {v3, v9, v10, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v2, v3}, Lc/a/a/aa;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/aa;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/aa;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->O:Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->O:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 574
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->O:Ljava/lang/String;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->r:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->q:I

    iget-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->s:Landroid/graphics/Typeface;

    invoke-static {v2, v3, v4, v9}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->P:Landroid/text/StaticLayout;

    goto/16 :goto_1

    :cond_3
    move v0, v7

    .line 545
    goto/16 :goto_5

    .line 549
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    goto/16 :goto_6

    .line 557
    :cond_5
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 558
    if-nez v1, :cond_6

    .line 559
    const/16 v1, 0xc

    .line 561
    :cond_6
    const-string v2, "%d:%02d %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    const/4 v1, 0x2

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "AM"

    :goto_8
    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->M:Ljava/lang/String;

    goto/16 :goto_7

    :cond_7
    const-string v0, "PM"

    goto :goto_8

    :cond_8
    move v8, v7

    .line 586
    goto/16 :goto_2

    .line 598
    :cond_9
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aa:[Lcom/b/a/ay;

    aget-object v0, v0, v7

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->U:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/b/a/ay;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 603
    :cond_a
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iput-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    .line 605
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/k;->m:Ljava/lang/String;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->c:Ljava/lang/String;

    :goto_9
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->n:Ljava/lang/String;

    :goto_a
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    invoke-static {v2, v0, v1, v3}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 611
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/agenda/s;

    invoke-direct {v1, p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/s;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/q;Ljava/lang/String;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->W:Lcom/b/a/ay;

    .line 612
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->W:Lcom/b/a/ay;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    goto/16 :goto_0

    .line 605
    :cond_b
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/k;->u:Ljava/lang/String;

    goto :goto_9

    :cond_c
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->t:Ljava/lang/String;

    goto :goto_a
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 618
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ai:Z

    if-nez v0, :cond_0

    .line 619
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aj:Landroid/text/StaticLayout;

    .line 646
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 625
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 626
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 628
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 631
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 632
    iput-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aj:Landroid/text/StaticLayout;

    .line 633
    iput-boolean v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ai:Z

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f017a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 638
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->af:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ag:I

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ac:Landroid/graphics/Typeface;

    invoke-static {v0, v2, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    .line 640
    new-instance v0, Landroid/text/StaticLayout;

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ad:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aj:Landroid/text/StaticLayout;

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 666
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v0

    .line 668
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aa:[Lcom/b/a/ay;

    aput-object v2, v1, v0

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_0
    return-void
.end method


# virtual methods
.method b(Z)V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ai:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ai:Z

    .line 168
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->e()V

    .line 169
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->invalidate()V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->e()V

    .line 173
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->invalidate()V

    goto :goto_0
.end method

.method public getEvent()Lam/sunrise/android/calendar/ui/mainview/k;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 179
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->c:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getDesiredMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->I:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->I:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->c:I

    .line 196
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ai:Z

    if-eqz v0, :cond_7

    .line 197
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v8

    .line 198
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ae:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aj:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    aget v2, v2, v10

    add-int/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    add-int v9, v0, v2

    .line 205
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ad:I

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    aget v2, v2, v6

    int-to-float v2, v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    aget v3, v3, v10

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 210
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aj:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->f:I

    add-int/2addr v0, v9

    .line 218
    :goto_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->M:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 219
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    iget-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->L:Z

    if-eqz v4, :cond_8

    .line 223
    int-to-float v4, v7

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->K:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->K:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->K:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 235
    :cond_2
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 237
    invoke-virtual {p0, p1, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(Landroid/graphics/Canvas;I)V

    .line 240
    :cond_3
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 243
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 248
    :cond_4
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->m:I

    add-int/2addr v2, v3

    .line 249
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 251
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    if-eqz v3, :cond_5

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 254
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-ne v4, v10, :cond_9

    .line 255
    int-to-float v4, v2

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 262
    :goto_3
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 263
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 266
    :cond_5
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->T:Z

    if-eqz v3, :cond_c

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 270
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->C:I

    add-int/2addr v4, v0

    .line 271
    int-to-float v0, v2

    int-to-float v5, v4

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    move v0, v6

    .line 272
    :goto_4
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    if-ge v0, v5, :cond_a

    .line 273
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    if-eqz v5, :cond_6

    .line 274
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Z:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    :cond_6
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->D:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 215
    :cond_7
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->d:I

    goto/16 :goto_1

    .line 228
    :cond_8
    int-to-float v4, v7

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 230
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->O:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 231
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 232
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->P:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 258
    :cond_9
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->al:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v5}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 259
    int-to-float v4, v2

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->al:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 260
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->al:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    goto/16 :goto_3

    .line 279
    :cond_a
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 281
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ab:Landroid/text/StaticLayout;

    if-eqz v0, :cond_b

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 284
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    add-int/2addr v1, v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->D:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ab:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ab:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 287
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 290
    :cond_b
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    add-int/2addr v0, v4

    .line 293
    :cond_c
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->S:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 296
    int-to-float v2, v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->z:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 298
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->A:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->S:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 303
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->S:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 305
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->getDefaultSize(II)I

    move-result v3

    .line 314
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    if-nez v0, :cond_0

    .line 315
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->j:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->I:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    :goto_0
    invoke-virtual {p0, v3, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a(II)V

    .line 414
    return-void

    .line 317
    :cond_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ai:Z

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->aj:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    aget v2, v2, v12

    add-int/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ah:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    add-int/2addr v0, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->f:I

    add-int/2addr v0, v2

    .line 325
    :goto_1
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->e:I

    add-int/2addr v0, v2

    .line 333
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    div-int/lit8 v2, v2, 0x2

    add-int v4, v0, v2

    .line 339
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->L:Z

    if-eqz v0, :cond_7

    .line 340
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->K:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 341
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 350
    :cond_1
    :goto_2
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->P:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->P:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 357
    :cond_2
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    div-int/lit8 v5, v2, 0x2

    .line 363
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    if-nez v2, :cond_a

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/mainview/k;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 364
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/mainview/k;->n:Ljava/lang/String;

    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    sub-int v6, v3, v6

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->c:I

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    iget v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->u:I

    iget v10, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->t:I

    iget-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->v:Landroid/graphics/Typeface;

    invoke-static {v8, v9, v10, v11}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    .line 370
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ne v2, v12, :cond_8

    .line 371
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 378
    :goto_3
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->S:Landroid/text/StaticLayout;

    if-nez v6, :cond_3

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v6, v6, Lam/sunrise/android/calendar/ui/mainview/k;->v:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 379
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v6, v6, Lam/sunrise/android/calendar/ui/mainview/k;->v:Ljava/lang/String;

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    sub-int v7, v3, v7

    iget v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->k:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->c:I

    sub-int/2addr v7, v8

    iget v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    iget v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->x:I

    iget v10, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->w:I

    iget-object v11, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->y:Landroid/graphics/Typeface;

    invoke-static {v8, v9, v10, v11}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v8

    invoke-static {v6, v7, v12, v8}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v6

    iput-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->S:Landroid/text/StaticLayout;

    .line 385
    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->z:I

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->S:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    iget-object v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 390
    :cond_3
    iget-boolean v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->T:Z

    if-eqz v6, :cond_5

    .line 391
    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->C:I

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 393
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v6, v6, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    array-length v6, v6

    if-ne v6, v12, :cond_5

    .line 395
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v6, v6, Lam/sunrise/android/calendar/ui/mainview/k;->k:[Ljava/lang/String;

    invoke-static {v6}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v6, v6, Lam/sunrise/android/calendar/ui/mainview/k;->k:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 397
    :cond_4
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v6, v6, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    aget-object v1, v6, v1

    .line 402
    :goto_4
    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->l:I

    sub-int v6, v3, v6

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->m:I

    sub-int/2addr v6, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->B:I

    sub-int/2addr v6, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->D:I

    sub-int/2addr v6, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b:F

    iget v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->G:I

    iget v9, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->F:I

    iget-object v10, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->H:Landroid/graphics/Typeface;

    invoke-static {v7, v8, v9, v10}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v1, v6, v12, v7}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->ab:Landroid/text/StaticLayout;

    .line 410
    :cond_5
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    goto/16 :goto_0

    .line 322
    :cond_6
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->d:I

    goto/16 :goto_1

    .line 345
    :cond_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    if-eqz v0, :cond_b

    .line 346
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->N:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto/16 :goto_2

    .line 373
    :cond_8
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->al:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v6}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 374
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->Q:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->al:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v2, v1

    goto/16 :goto_3

    .line 399
    :cond_9
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    iget-object v6, v6, Lam/sunrise/android/calendar/ui/mainview/k;->k:[Ljava/lang/String;

    aget-object v1, v6, v1

    goto :goto_4

    :cond_a
    move v2, v1

    goto/16 :goto_3

    :cond_b
    move v0, v1

    goto/16 :goto_2
.end method

.method public setEvent(Lam/sunrise/android/calendar/ui/mainview/k;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->J:Lam/sunrise/android/calendar/ui/mainview/k;

    .line 156
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->d()V

    .line 157
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->requestLayout()V

    .line 158
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->invalidate()V

    .line 159
    return-void
.end method
