.class Lcom/dolphin/browser/mostvisit/e;
.super Lcom/dolphin/browser/util/f;
.source "MostVisitedManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/mostvisit/b;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/mostvisit/b;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/dolphin/browser/mostvisit/e;->a:Lcom/dolphin/browser/mostvisit/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/mostvisit/b;Lcom/dolphin/browser/mostvisit/c;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/dolphin/browser/mostvisit/e;-><init>(Lcom/dolphin/browser/mostvisit/b;)V

    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/mostvisit/a/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 560
    .line 561
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    move v2, v0

    .line 584
    :cond_1
    return v2

    :cond_2
    move v1, v0

    move v2, v0

    .line 565
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 566
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/mostvisit/a/a;

    .line 567
    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 565
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 573
    :cond_4
    iget-object v4, p0, Lcom/dolphin/browser/mostvisit/e;->a:Lcom/dolphin/browser/mostvisit/b;

    invoke-static {v4, v3}, Lcom/dolphin/browser/mostvisit/b;->b(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 574
    invoke-direct {p0, v3}, Lcom/dolphin/browser/mostvisit/e;->b(Ljava/util/List;)I

    move-result v4

    .line 575
    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/a;->c()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v5, v4, v3}, Lcom/dolphin/browser/mostvisit/a;->a(III)I

    move-result v3

    .line 577
    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/a;->d()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 578
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 579
    const-string v5, "score"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    iget-object v3, p0, Lcom/dolphin/browser/mostvisit/e;->a:Lcom/dolphin/browser/mostvisit/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/a;->a()I

    move-result v0

    invoke-static {v3, v0, v4}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;ILandroid/content/ContentValues;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private b(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/mostvisit/a/b;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 589
    .line 590
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    move v2, v0

    .line 606
    :cond_1
    return v2

    :cond_2
    move v1, v0

    move v2, v0

    .line 594
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 595
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/mostvisit/a/b;

    .line 596
    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/b;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/b;->c()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/mostvisit/a;->a(IJ)I

    move-result v3

    .line 598
    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/b;->d()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 600
    iget-object v4, p0, Lcom/dolphin/browser/mostvisit/e;->a:Lcom/dolphin/browser/mostvisit/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/b;->a()I

    move-result v0

    invoke-static {v4, v0, v3}, Lcom/dolphin/browser/mostvisit/b;->b(Lcom/dolphin/browser/mostvisit/b;II)I

    .line 603
    :cond_3
    add-int/2addr v2, v3

    .line 594
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/mostvisit/e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/e;->a:Lcom/dolphin/browser/mostvisit/b;

    invoke-static {v0}, Lcom/dolphin/browser/mostvisit/b;->c(Lcom/dolphin/browser/mostvisit/b;)I

    move-result v0

    .line 532
    if-gtz v0, :cond_0

    .line 555
    :goto_0
    return-object v8

    .line 536
    :cond_0
    const-string v3, "MostVisitedManager"

    const-string v4, "FrencencyCountTask begin"

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    div-int/lit8 v3, v0, 0x64

    rem-int/lit8 v0, v0, 0x64

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    add-int v4, v3, v0

    move v0, v2

    move v3, v2

    .line 541
    :goto_2
    if-ge v0, v4, :cond_1

    .line 542
    iget-object v5, p0, Lcom/dolphin/browser/mostvisit/e;->a:Lcom/dolphin/browser/mostvisit/b;

    const/16 v6, 0x64

    mul-int/lit8 v7, v0, 0x64

    invoke-static {v5, v6, v7}, Lcom/dolphin/browser/mostvisit/b;->a(Lcom/dolphin/browser/mostvisit/b;II)Ljava/util/List;

    move-result-object v5

    .line 544
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 552
    :cond_1
    const-string v0, "MostVisitedManager"

    const-string v4, "FrencencyCountTask updatedCounts: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 553
    const-string v0, "MostVisitedManager"

    const-string v1, "FrencencyCountTask end"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 538
    goto :goto_1

    .line 549
    :cond_3
    invoke-direct {p0, v5}, Lcom/dolphin/browser/mostvisit/e;->a(Ljava/util/List;)I

    move-result v5

    add-int/2addr v3, v5

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
