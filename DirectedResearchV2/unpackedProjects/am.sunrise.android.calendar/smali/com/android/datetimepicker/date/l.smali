.class Lcom/android/datetimepicker/date/l;
.super Landroid/support/v4/widget/p;
.source "MonthView.java"


# instance fields
.field final synthetic b:Lcom/android/datetimepicker/date/k;

.field private final c:Landroid/graphics/Rect;

.field private final d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/date/k;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    .line 575
    invoke-direct {p0, p2}, Landroid/support/v4/widget/p;-><init>(Landroid/view/View;)V

    .line 571
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/l;->c:Landroid/graphics/Rect;

    .line 572
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/l;->d:Ljava/util/Calendar;

    .line 576
    return-void
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v0, v0, Lcom/android/datetimepicker/date/k;->j:I

    .line 649
    sget v1, Lcom/android/datetimepicker/date/k;->g:I

    .line 650
    iget-object v2, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v2, v2, Lcom/android/datetimepicker/date/k;->v:I

    .line 651
    iget-object v3, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v3, v3, Lcom/android/datetimepicker/date/k;->u:I

    iget-object v4, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v4, v4, Lcom/android/datetimepicker/date/k;->j:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v4, v4, Lcom/android/datetimepicker/date/k;->A:I

    div-int/2addr v3, v4

    .line 652
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    invoke-static {v5}, Lcom/android/datetimepicker/date/k;->a(Lcom/android/datetimepicker/date/k;)I

    move-result v5

    add-int/2addr v4, v5

    .line 653
    iget-object v5, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v5, v5, Lcom/android/datetimepicker/date/k;->A:I

    div-int v5, v4, v5

    .line 654
    iget-object v6, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v6, v6, Lcom/android/datetimepicker/date/k;->A:I

    rem-int/2addr v4, v6

    .line 655
    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 656
    mul-int v4, v5, v2

    add-int/2addr v1, v4

    .line 658
    add-int/2addr v3, v0

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 659
    return-void
.end method

.method private c(I)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->d:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v1, v1, Lcom/android/datetimepicker/date/k;->t:I

    iget-object v2, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v2, v2, Lcom/android/datetimepicker/date/k;->s:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 671
    const-string v0, "dd MMMM yyyy"

    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->d:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v1, v1, Lcom/android/datetimepicker/date/k;->x:I

    if-ne p1, v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/k;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/datetimepicker/i;->item_is_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 678
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(FF)I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/date/k;->a(FF)I

    move-result v0

    .line 596
    if-ltz v0, :cond_0

    .line 599
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected a(ILandroid/support/v4/view/a/j;)V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->c:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/android/datetimepicker/date/l;->a(ILandroid/graphics/Rect;)V

    .line 619
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/l;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/j;->c(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/j;->b(Landroid/graphics/Rect;)V

    .line 621
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/j;->a(I)V

    .line 623
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v0, v0, Lcom/android/datetimepicker/date/k;->x:I

    if-ne p1, v0, :cond_0

    .line 624
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/j;->c(Z)V

    .line 627
    :cond_0
    return-void
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/l;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 612
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    iget v1, v1, Lcom/android/datetimepicker/date/k;->B:I

    if-gt v0, v1, :cond_0

    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method

.method protected a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 632
    packed-switch p2, :pswitch_data_0

    .line 638
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 634
    :pswitch_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    invoke-static {v0, p1}, Lcom/android/datetimepicker/date/k;->a(Lcom/android/datetimepicker/date/k;I)V

    .line 635
    const/4 v0, 0x1

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/l;->a(Landroid/view/View;)Landroid/support/v4/view/a/t;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/view/a/t;->a(IILandroid/os/Bundle;)Z

    .line 581
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/l;->c()I

    move-result v0

    .line 585
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->b:Lcom/android/datetimepicker/date/k;

    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/l;->a(Landroid/view/View;)Landroid/support/v4/view/a/t;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/a/t;->a(IILandroid/os/Bundle;)Z

    .line 591
    :cond_0
    return-void
.end method
