.class Lmobi/mgeek/TunnyBrowser/cy;
.super Ljava/lang/Object;
.source "DateSortedExpandableListAdapter.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cw;

.field private b:[J

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/cw;Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x6

    .line 457
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cy;->a:Lmobi/mgeek/TunnyBrowser/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cy;->b:[J

    .line 455
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cy;->c:[Ljava/lang/String;

    .line 458
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 461
    invoke-direct {p0, v1}, Lmobi/mgeek/TunnyBrowser/cy;->a(Ljava/util/Calendar;)V

    .line 464
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cy;->b:[J

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    aput-wide v3, v2, v8

    .line 465
    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 466
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cy;->b:[J

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    aput-wide v3, v2, v9

    .line 467
    const/4 v2, -0x6

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 468
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cy;->b:[J

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    aput-wide v3, v2, v6

    .line 469
    const/4 v2, 0x7

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 470
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 471
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cy;->b:[J

    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 474
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cy;->c:[Ljava/lang/String;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 475
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cy;->c:[Ljava/lang/String;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 476
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cy;->c:[Ljava/lang/String;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 477
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cy;->c:[Ljava/lang/String;

    const/4 v2, 0x3

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 478
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cy;->c:[Ljava/lang/String;

    const/4 v2, 0x4

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02fc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 479
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/cy;->c:[Ljava/lang/String;

    const/4 v2, 0x5

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e02fd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 480
    return-void
.end method

.method private a(J)I
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cy;->b:[J

    array-length v1, v0

    .line 501
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 502
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/cy;->b:[J

    aget-wide v2, v2, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 504
    :goto_1
    return v0

    .line 501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 504
    goto :goto_1
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/cy;J)I
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/cy;->a(J)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 484
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 485
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 486
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 487
    return-void
.end method


# virtual methods
.method public a(IJ)I
    .locals 1

    .prologue
    .line 490
    invoke-static {p1}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-direct {p0, p2, p3}, Lmobi/mgeek/TunnyBrowser/cy;->a(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 509
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cy;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method
