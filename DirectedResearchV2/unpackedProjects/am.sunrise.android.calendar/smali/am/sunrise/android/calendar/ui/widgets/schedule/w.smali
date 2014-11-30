.class public Lam/sunrise/android/calendar/ui/widgets/schedule/w;
.super Lam/sunrise/android/calendar/ui/widgets/schedule/r;
.source "ScheduleViewDay.java"


# instance fields
.field private A:I

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/x;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/graphics/Rect;

.field private K:[F

.field private L:Landroid/graphics/Path;

.field private M:Landroid/graphics/DashPathEffect;

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Typeface;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Typeface;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->H:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->I:Landroid/util/SparseArray;

    .line 421
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->J:Landroid/graphics/Rect;

    .line 422
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->K:[F

    .line 424
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    .line 425
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->M:Landroid/graphics/DashPathEffect;

    .line 102
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->c()V

    .line 103
    return-void

    .line 425
    :array_0
    .array-data 4
        0x40000000
        0x40000000
    .end array-data
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/w;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->B:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static a(Lam/sunrise/android/calendar/ui/widgets/schedule/ab;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 165
    iget-boolean v3, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->d:Z

    if-nez v3, :cond_1

    if-eq v0, p0, :cond_1

    iget v3, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->z:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    const-string v4, ":checkin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(Lam/sunrise/android/calendar/ui/mainview/k;Lam/sunrise/android/calendar/ui/mainview/k;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 174
    goto :goto_0
.end method

.method private a(IILandroid/graphics/drawable/Drawable;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 807
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->H:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    .line 808
    aget-object v1, v0, p2

    .line 809
    if-eqz v1, :cond_0

    .line 810
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 812
    :cond_0
    aput-object p3, v0, p2

    .line 813
    aget-object v1, v0, p2

    if-eqz v1, :cond_1

    .line 814
    aget-object v1, v0, p2

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 815
    aget-object v0, v0, p2

    invoke-virtual {v0, v3, v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 817
    :cond_1
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/w;IILandroid/graphics/drawable/Drawable;II)V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(IILandroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method private a([Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 784
    invoke-static {p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 786
    aget-object v1, p1, v0

    .line 787
    if-eqz v1, :cond_0

    .line 788
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 785
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_1
    return-void
.end method

.method private static a(Lam/sunrise/android/calendar/ui/mainview/k;Lam/sunrise/android/calendar/ui/mainview/k;)Z
    .locals 11

    .prologue
    const/high16 v10, 0x44610000

    const/16 v9, 0x384

    const/16 v8, 0xd

    .line 120
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    .line 122
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int v0, v0

    .line 125
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-float v0, v0

    cmpg-float v0, v0, v10

    if-gez v0, :cond_0

    .line 126
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 127
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    :goto_0
    move-object v1, v0

    .line 136
    :goto_1
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    .line 138
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 141
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-float v0, v4

    cmpg-float v0, v0, v10

    if-gez v0, :cond_2

    .line 142
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 143
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 152
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 133
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    move-object v1, v0

    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    goto :goto_2

    .line 148
    :cond_3
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 149
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 152
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/schedule/w;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 678
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 680
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    .line 681
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 682
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 684
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->g:F

    .line 686
    const v1, 0x7f0c010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    .line 688
    const v1, 0x7f0c011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->i:I

    .line 689
    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    .line 691
    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->k:I

    .line 693
    const v1, 0x7f0c011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->l:I

    .line 694
    const v1, 0x7f0c011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    .line 696
    const v1, 0x7f0c011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->n:I

    .line 697
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->o:Landroid/graphics/Typeface;

    .line 699
    const v1, 0x7f0201b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->p:Landroid/graphics/drawable/Drawable;

    .line 700
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->p:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 701
    const v1, 0x7f0c011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->q:I

    .line 702
    const v1, 0x7f0c011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->r:I

    .line 703
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->s:Landroid/graphics/Typeface;

    .line 705
    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->t:I

    .line 706
    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->u:I

    .line 707
    const v1, 0x7f0c0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->v:I

    .line 709
    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->w:I

    .line 711
    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->x:I

    .line 712
    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->y:I

    .line 714
    const v1, 0x7f0c0120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->z:I

    .line 715
    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->A:I

    .line 717
    const v1, 0x7f0c0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    .line 718
    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->D:I

    .line 719
    const v1, 0x7f0c0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->E:I

    .line 720
    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->B:Landroid/graphics/drawable/Drawable;

    .line 721
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->B:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 723
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->F:I

    .line 727
    const v1, 0x7f0c0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->G:I

    .line 728
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 795
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->H:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 796
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->H:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 797
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->H:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    .line 798
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a([Landroid/graphics/drawable/Drawable;)V

    .line 795
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 801
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->H:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 802
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->I:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 803
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v12, 0x5

    const/4 v4, 0x0

    .line 179
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a(Ljava/util/Calendar;Ljava/util/ArrayList;)V

    .line 181
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->d()V

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 185
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 186
    iget-boolean v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->d:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    const-string v2, ":checkin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 188
    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->g:[Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 192
    new-array v1, v12, [Landroid/graphics/drawable/Drawable;

    .line 193
    new-array v2, v12, [Lam/sunrise/android/calendar/ui/widgets/schedule/x;

    .line 194
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->H:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->I:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v4

    .line 196
    :goto_1
    if-ge v1, v12, :cond_3

    iget-object v5, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->g:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 197
    new-instance v5, Lam/sunrise/android/calendar/ui/widgets/schedule/x;

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->g:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v5, p0, v3, v1, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/x;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/w;IILjava/lang/String;)V

    aput-object v5, v2, v1

    .line 199
    iget-object v5, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->g:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 200
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v5

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->g:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v5

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    iget v9, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    invoke-virtual {v5, v7, v9}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v5

    aget-object v7, v2, v1

    invoke-virtual {v5, v7}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 196
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_2
    aget-object v5, v2, v1

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/x;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 211
    :cond_3
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/ab;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 216
    invoke-static {v7}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v5, v6

    .line 227
    :goto_3
    iput v5, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->z:I

    .line 229
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v1, v6

    .line 230
    :goto_4
    if-gt v1, v5, :cond_6

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 219
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 220
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 221
    iget v9, v1, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->z:I

    if-ge v9, v2, :cond_5

    .line 222
    iput v2, v1, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->z:I

    goto :goto_5

    .line 234
    :cond_6
    invoke-static {v7}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 235
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    move v7, v4

    .line 237
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_7

    .line 238
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v11, v1, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->A:I

    if-ne v2, v11, :cond_8

    .line 239
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 242
    :cond_8
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_6

    .line 247
    :cond_9
    iput v5, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->A:I

    move v2, v4

    .line 248
    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    .line 249
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->A:I

    if-ge v1, v5, :cond_a

    .line 250
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->A:I

    .line 248
    :cond_a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 254
    :cond_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 255
    goto/16 :goto_0

    .line 258
    :cond_c
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->invalidate()V

    .line 260
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->requestLayout()V

    .line 261
    return-void

    :cond_d
    move v5, v2

    goto/16 :goto_3
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 429
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->onDraw(Landroid/graphics/Canvas;)V

    .line 431
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 432
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a(Landroid/graphics/Canvas;)V

    .line 675
    :goto_0
    return-void

    .line 436
    :cond_0
    iget v9, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    .line 438
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000

    div-float v10, v0, v1

    .line 439
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    mul-int/lit8 v11, v0, 0x2

    .line 441
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->c:Z

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 444
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    int-to-float v1, v0

    int-to-float v2, v9

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    mul-int/lit8 v0, v11, 0x6

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 448
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    int-to-float v1, v0

    mul-int/lit8 v0, v11, 0x12

    add-int/2addr v0, v9

    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 455
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    add-int v1, v9, v0

    .line 460
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->w:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 462
    const/4 v0, 0x0

    move v2, v9

    :goto_1
    const/16 v3, 0x19

    if-ge v0, v3, :cond_2

    .line 463
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 464
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 465
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 466
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 467
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 469
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->M:Landroid/graphics/DashPathEffect;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 470
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 471
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 472
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 473
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->L:Landroid/graphics/Path;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 475
    add-int/2addr v2, v11

    .line 476
    add-int/2addr v1, v11

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 481
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 484
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    sub-int/2addr v0, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->z:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 489
    :cond_3
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->c:Z

    if-eqz v0, :cond_4

    .line 490
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 492
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    int-to-float v1, v0

    int-to-float v2, v9

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredHeight()I

    move-result v0

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 498
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 499
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 501
    const/4 v0, 0x0

    .line 502
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v7, v0

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 503
    iget-boolean v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->d:Z

    if-eqz v0, :cond_5

    .line 504
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 505
    goto :goto_2

    .line 509
    :cond_5
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 517
    :goto_3
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    if-eqz v1, :cond_b

    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    :goto_4
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_c

    const/4 v1, 0x1

    move v8, v1

    .line 522
    :goto_5
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    const-string v2, ":checkin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 524
    const v1, 0x3ecccccd

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v1

    .line 526
    iget v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 527
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    if-eqz v8, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 531
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 532
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 533
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->l:I

    add-int/2addr v1, v2

    .line 534
    int-to-float v2, v1

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 536
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 539
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->q:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 540
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    if-eqz v1, :cond_8

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 542
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 543
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    add-int/2addr v2, v3

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 547
    int-to-float v0, v0

    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 549
    iget v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 550
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 551
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 552
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 553
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 558
    :goto_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 561
    :cond_8
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 562
    goto/16 :goto_2

    .line 511
    :cond_9
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    .line 514
    :cond_a
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->F:I

    goto/16 :goto_3

    .line 517
    :cond_b
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    goto/16 :goto_4

    :cond_c
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_5

    .line 555
    :cond_d
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 566
    :cond_e
    iget v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    move v1, v0

    .line 572
    :goto_7
    const v2, 0x3ecccccd

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v2

    .line 573
    const v3, 0x3ecccccd

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v3

    .line 576
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    if-eqz v8, :cond_f

    move v1, v2

    :cond_f
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 580
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    if-eqz v8, :cond_10

    move v0, v3

    :cond_10
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->l:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 585
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 587
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1d

    .line 588
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 590
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->l:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v13, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v13, v13

    sub-float/2addr v5, v13

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 594
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->l:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 597
    iget v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 598
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    .line 599
    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 600
    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 601
    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 606
    :goto_8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 608
    iget-object v1, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->D:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    move v1, v0

    .line 611
    :goto_9
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->l:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v2, v2

    add-float v4, v0, v2

    .line 613
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_15

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_15

    .line 615
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->H:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 622
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#ff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 630
    :goto_a
    const v3, 0x3eb851ec

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v3

    .line 631
    if-eqz v8, :cond_11

    move v2, v3

    :cond_11
    const v3, 0x3e851eb8

    const/high16 v5, -0x41000000

    invoke-static {v2, v3, v5}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IFF)I

    move-result v3

    .line 635
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 638
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    const/4 v1, 0x0

    move v2, v4

    :goto_b
    array-length v4, v0

    if-ge v1, v4, :cond_14

    .line 641
    aget-object v4, v0, v1

    if-eqz v4, :cond_13

    .line 642
    aget-object v4, v0, v1

    iget-object v8, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->B:Landroid/graphics/drawable/Drawable;

    if-ne v4, v8, :cond_12

    .line 643
    aget-object v4, v0, v1

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 645
    :cond_12
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 647
    :cond_13
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    iget v8, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->E:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 648
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v8, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1a

    .line 654
    :cond_14
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 658
    :cond_15
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 659
    goto/16 :goto_2

    .line 569
    :cond_16
    const v1, 0x3eb851ec

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v1

    goto/16 :goto_7

    .line 603
    :cond_17
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 624
    :cond_18
    iget-object v2, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#ff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_a

    .line 627
    :cond_19
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->F:I

    goto/16 :goto_a

    .line 651
    :cond_1a
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->C:I

    iget v8, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->E:I

    add-int/2addr v4, v8

    int-to-float v4, v4

    const/4 v8, 0x0

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 662
    :cond_1b
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->c:Z

    if-eqz v0, :cond_1c

    .line 663
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->t:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 665
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 666
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/2addr v1, v11

    add-int/2addr v1, v9

    int-to-float v1, v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 669
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    int-to-float v1, v1

    int-to-float v2, v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->u:I

    int-to-float v3, v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 670
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    int-to-float v1, v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->v:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->v:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 674
    :cond_1c
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_1d
    move v1, v0

    goto/16 :goto_9
.end method

.method public onMeasure(II)V
    .locals 14

    .prologue
    .line 265
    invoke-super/range {p0 .. p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->onMeasure(II)V

    .line 267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    return-void

    .line 271
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000

    div-float v9, v0, v1

    .line 272
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    mul-float v10, v0, v1

    .line 274
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 275
    iget-boolean v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->d:Z

    if-nez v0, :cond_2

    .line 279
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    if-nez v0, :cond_2

    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 281
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    const-string v1, ":checkin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 283
    iget-object v1, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 285
    int-to-float v0, v0

    mul-float/2addr v0, v10

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float v3, v0, v1

    .line 286
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    int-to-float v4, v0

    .line 288
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    int-to-float v5, v0

    .line 289
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v6, v0

    .line 291
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_4

    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v0, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-gez v0, :cond_5

    const/4 v0, 0x1

    .line 297
    :goto_2
    iget-object v1, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#ff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 305
    :goto_3
    const v2, 0x3eb851ec

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v2

    .line 306
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    const v0, 0x3e851eb8

    const/high16 v2, -0x41000000

    invoke-static {v1, v0, v2}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IFF)I

    move-result v1

    .line 310
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    add-float v7, v5, v6

    iget v12, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    int-to-float v12, v12

    add-float/2addr v3, v12

    add-float/2addr v3, v4

    invoke-virtual {v0, v5, v2, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 314
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 315
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_4
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->l:I

    int-to-float v2, v2

    sub-float v2, v6, v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->q:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->g:F

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->r:I

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->s:Landroid/graphics/Typeface;

    invoke-static {v4, v1, v5, v6}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Ljava/lang/String;IILandroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    goto/16 :goto_0

    .line 291
    :cond_4
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 299
    :cond_6
    iget-object v1, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#ff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_3

    .line 302
    :cond_7
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->F:I

    goto/16 :goto_3

    .line 317
    :cond_8
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    goto :goto_4

    .line 332
    :cond_9
    iget v3, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->z:I

    .line 333
    iget v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->A:I

    add-int/lit8 v4, v0, -0x1

    .line 337
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a:Ljava/util/Calendar;

    iget-object v1, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 338
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 339
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 345
    :goto_5
    int-to-float v2, v1

    mul-float/2addr v2, v10

    int-to-float v5, v0

    mul-float/2addr v5, v9

    add-float/2addr v5, v2

    .line 348
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    mul-int/2addr v6, v4

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    int-to-float v6, v2

    .line 351
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getMeasuredWidth()I

    move-result v2

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->j:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v2, v7

    div-int/2addr v2, v3

    int-to-float v2, v2

    .line 352
    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_a

    .line 353
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->G:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 358
    :cond_a
    iget-object v3, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    if-eqz v3, :cond_e

    .line 359
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a:Ljava/util/Calendar;

    iget-object v1, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 360
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 361
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 366
    :goto_6
    int-to-float v1, v1

    mul-float/2addr v1, v10

    int-to-float v0, v0

    mul-float/2addr v0, v9

    add-float/2addr v0, v1

    sub-float/2addr v0, v5

    .line 384
    :goto_7
    const/high16 v1, 0x41c80000

    mul-float/2addr v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 386
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_11

    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_8
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v0, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-gez v0, :cond_12

    const/4 v0, 0x1

    .line 392
    :goto_9
    iget-object v1, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#ff"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 400
    :goto_a
    const v3, 0x3eb851ec

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IF)I

    move-result v3

    .line 401
    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    const v0, 0x3e851eb8

    const/high16 v3, -0x41000000

    invoke-static {v1, v0, v3}, Lam/sunrise/android/calendar/ui/widgets/j;->a(IFF)I

    move-result v7

    .line 405
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    int-to-float v1, v1

    add-float/2addr v1, v5

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->i:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-float v3, v6, v2

    iget v12, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->h:I

    int-to-float v12, v12

    add-float/2addr v5, v12

    add-float/2addr v4, v5

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->i:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v6, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 408
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->m:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    .line 410
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_15

    .line 411
    const/high16 v0, 0x3f800000

    move v3, v0

    .line 414
    :goto_b
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->g:F

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->n:I

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->o:Landroid/graphics/Typeface;

    invoke-static {v2, v7, v4, v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->E:Landroid/text/StaticLayout;

    goto/16 :goto_0

    .line 341
    :cond_c
    const/4 v1, 0x0

    .line 342
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 363
    :cond_d
    const/16 v1, 0x18

    .line 364
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 368
    :cond_e
    const-string v3, "facebook:event"

    iget-object v4, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 369
    add-int/lit8 v1, v1, 0x3

    .line 370
    const/16 v3, 0x18

    if-le v1, v3, :cond_f

    .line 371
    const/16 v1, 0x18

    .line 372
    const/4 v0, 0x0

    .line 376
    :cond_f
    int-to-float v1, v1

    mul-float/2addr v1, v10

    int-to-float v0, v0

    mul-float/2addr v0, v9

    add-float/2addr v0, v1

    sub-float/2addr v0, v5

    goto/16 :goto_7

    .line 380
    :cond_10
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->e:I

    int-to-float v0, v0

    goto/16 :goto_7

    .line 386
    :cond_11
    iget-object v0, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto/16 :goto_8

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 394
    :cond_13
    iget-object v1, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#ff"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_a

    .line 397
    :cond_14
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->F:I

    goto/16 :goto_a

    :cond_15
    move v3, v0

    goto :goto_b
.end method
