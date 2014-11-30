.class public Lcom/android/datetimepicker/time/l;
.super Landroid/support/v4/app/e;
.source "TimePickerDialog.java"

# interfaces
.implements Lcom/android/datetimepicker/time/e;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private a:Lcom/android/datetimepicker/time/s;

.field private b:Lcom/android/datetimepicker/a;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Lcom/android/datetimepicker/time/RadialPickerLayout;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:C

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/android/datetimepicker/time/r;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    .line 129
    return-void
.end method

.method public static a(Lcom/android/datetimepicker/time/s;IIZ)Lcom/android/datetimepicker/time/l;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/android/datetimepicker/time/l;

    invoke-direct {v0}, Lcom/android/datetimepicker/time/l;-><init>()V

    .line 139
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/datetimepicker/time/l;->b(Lcom/android/datetimepicker/time/s;IIZ)V

    .line 140
    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 4

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-eqz v0, :cond_2

    .line 419
    const-string v0, "%02d"

    .line 428
    :cond_0
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    if-eqz p2, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 434
    :cond_1
    return-void

    .line 421
    :cond_2
    const-string v0, "%d"

    .line 422
    rem-int/lit8 p1, p1, 0xc

    .line 423
    if-nez p1, :cond_0

    .line 424
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private a(IZZZ)V
    .locals 4

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(IZ)V

    .line 452
    if-nez p1, :cond_3

    .line 453
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    .line 454
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-nez v1, :cond_0

    .line 455
    rem-int/lit8 v0, v0, 0xc

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 458
    if-eqz p4, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->C:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    move-object v2, v0

    .line 471
    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lcom/android/datetimepicker/time/l;->k:I

    move v1, v0

    .line 472
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/android/datetimepicker/time/l;->k:I

    .line 473
    :goto_2
    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    const v0, 0x3f59999a

    const v1, 0x3f8ccccd

    invoke-static {v2, v0, v1}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 477
    if-eqz p3, :cond_2

    .line 478
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 480
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 481
    return-void

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    .line 464
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 465
    if-eqz p4, :cond_4

    .line 466
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->E:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->f:Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0

    .line 471
    :cond_5
    iget v0, p0, Lcom/android/datetimepicker/time/l;->l:I

    move v1, v0

    goto :goto_1

    .line 472
    :cond_6
    iget v0, p0, Lcom/android/datetimepicker/time/l;->l:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/datetimepicker/time/l;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/l;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/datetimepicker/time/l;IZZZ)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/l;->a(IZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/datetimepicker/time/l;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/l;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 644
    iput-boolean v4, p0, Lcom/android/datetimepicker/time/l;->w:Z

    .line 645
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/l;->a([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(II)V

    .line 648
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-nez v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 653
    :cond_1
    if-eqz p1, :cond_2

    .line 654
    invoke-direct {p0, v4}, Lcom/android/datetimepicker/time/l;->b(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v5}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(Z)Z

    .line 657
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/android/datetimepicker/time/l;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    return v0
.end method

.method private a([Ljava/lang/Boolean;)[I
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 734
    .line 736
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 737
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 738
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v4

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    move v4, v5

    move v6, v0

    :goto_1
    move v7, v3

    move v8, v3

    move v3, v4

    .line 747
    :goto_2
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v3, v0, :cond_5

    .line 748
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/datetimepicker/time/l;->f(I)I

    move-result v0

    .line 749
    if-ne v3, v4, :cond_2

    move v8, v0

    .line 747
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 740
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v4

    if-ne v0, v4, :cond_6

    move v0, v2

    .line 741
    goto :goto_0

    .line 751
    :cond_2
    add-int/lit8 v9, v4, 0x1

    if-ne v3, v9, :cond_3

    .line 752
    mul-int/lit8 v9, v0, 0xa

    add-int/2addr v8, v9

    .line 753
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 754
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    goto :goto_3

    .line 756
    :cond_3
    add-int/lit8 v9, v4, 0x2

    if-ne v3, v9, :cond_4

    move v7, v0

    .line 757
    goto :goto_3

    .line 758
    :cond_4
    add-int/lit8 v9, v4, 0x3

    if-ne v3, v9, :cond_0

    .line 759
    mul-int/lit8 v9, v0, 0xa

    add-int/2addr v7, v9

    .line 760
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 761
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_3

    .line 766
    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v7, v0, v1

    aput v8, v0, v2

    aput v6, v0, v5

    .line 767
    return-object v0

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move v4, v2

    move v6, v3

    goto :goto_1
.end method

.method private b(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 437
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    move p1, v0

    .line 440
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 442
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method private b(Z)V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 667
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 668
    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    .line 669
    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    .line 670
    invoke-direct {p0, v2, v1}, Lcom/android/datetimepicker/time/l;->a(IZ)V

    .line 671
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/l;->b(I)V

    .line 672
    iget-boolean v3, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-nez v3, :cond_0

    .line 673
    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/l;->a(I)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/datetimepicker/time/l;->a(IZZZ)V

    .line 676
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 696
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 673
    goto :goto_0

    .line 678
    :cond_3
    new-array v3, v8, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    .line 679
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/l;->a([Ljava/lang/Boolean;)[I

    move-result-object v4

    .line 680
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "%02d"

    .line 681
    :goto_2
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "%02d"

    .line 682
    :goto_3
    aget v5, v4, v0

    if-ne v5, v7, :cond_6

    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->u:Ljava/lang/String;

    .line 684
    :goto_4
    aget v5, v4, v1

    if-ne v5, v7, :cond_7

    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->u:Ljava/lang/String;

    .line 686
    :goto_5
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/datetimepicker/time/l;->l:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/datetimepicker/time/l;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 692
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-nez v0, :cond_1

    .line 693
    aget v0, v4, v8

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/l;->a(I)V

    goto :goto_1

    .line 680
    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    .line 681
    :cond_5
    const-string v3, "%2d"

    goto :goto_3

    .line 682
    :cond_6
    new-array v5, v1, [Ljava/lang/Object;

    aget v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-char v5, p0, Lcom/android/datetimepicker/time/l;->t:C

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 684
    :cond_7
    new-array v5, v1, [Ljava/lang/Object;

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/android/datetimepicker/time/l;->t:C

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->y:Lcom/android/datetimepicker/time/r;

    .line 605
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 606
    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/r;->b(I)Lcom/android/datetimepicker/time/r;

    move-result-object v0

    .line 607
    if-nez v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 611
    :goto_1
    return v0

    :cond_0
    move-object v1, v0

    .line 608
    goto :goto_0

    .line 611
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/datetimepicker/time/l;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/datetimepicker/time/l;I)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/l;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/s;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->a:Lcom/android/datetimepicker/time/s;

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 618
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-eqz v2, :cond_1

    .line 621
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/l;->a([Ljava/lang/Boolean;)[I

    move-result-object v2

    .line 622
    aget v3, v2, v1

    if-ltz v3, :cond_0

    aget v3, v2, v0

    if-ltz v3, :cond_0

    aget v2, v2, v0

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_0

    .line 626
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 622
    goto :goto_0

    .line 626
    :cond_1
    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private c(I)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 489
    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/l;->dismiss()V

    move v0, v1

    .line 552
    :goto_0
    return v0

    .line 492
    :cond_1
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_3

    .line 493
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    if-eqz v0, :cond_8

    .line 494
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->a(Z)V

    :cond_2
    move v0, v1

    .line 497
    goto :goto_0

    .line 499
    :cond_3
    const/16 v0, 0x42

    if-ne p1, v0, :cond_7

    .line 500
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    if-eqz v0, :cond_5

    .line 501
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->c()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 502
    goto :goto_0

    .line 504
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/l;->a(Z)V

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->a:Lcom/android/datetimepicker/time/s;

    if-eqz v0, :cond_6

    .line 507
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->a:Lcom/android/datetimepicker/time/s;

    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v3

    iget-object v4, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/datetimepicker/time/s;->a(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V

    .line 510
    :cond_6
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/l;->dismiss()V

    move v0, v1

    .line 511
    goto :goto_0

    .line 512
    :cond_7
    const/16 v0, 0x43

    if-ne p1, v0, :cond_b

    .line 513
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    if-eqz v0, :cond_8

    .line 514
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 515
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->d()I

    move-result v0

    .line 517
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v3

    if-ne v0, v3, :cond_9

    .line 518
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->m:Ljava/lang/String;

    .line 524
    :goto_1
    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v4, p0, Lcom/android/datetimepicker/time/l;->v:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 526
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->b(Z)V

    :cond_8
    move v0, v2

    .line 552
    goto :goto_0

    .line 519
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v3

    if-ne v0, v3, :cond_a

    .line 520
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->n:Ljava/lang/String;

    goto :goto_1

    .line 522
    :cond_a
    const-string v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/datetimepicker/time/l;->f(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 529
    :cond_b
    const/4 v0, 0x7

    if-eq p1, v0, :cond_c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    const/16 v0, 0x9

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa

    if-eq p1, v0, :cond_c

    const/16 v0, 0xb

    if-eq p1, v0, :cond_c

    const/16 v0, 0xc

    if-eq p1, v0, :cond_c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_c

    const/16 v0, 0xe

    if-eq p1, v0, :cond_c

    const/16 v0, 0xf

    if-eq p1, v0, :cond_c

    const/16 v0, 0x10

    if-eq p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-nez v0, :cond_8

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v0

    if-eq p1, v0, :cond_c

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 536
    :cond_c
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    if-nez v0, :cond_e

    .line 537
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-nez v0, :cond_d

    .line 539
    const-string v0, "TimePickerDialog"

    const-string v2, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 540
    goto/16 :goto_0

    .line 542
    :cond_d
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/l;->d(I)V

    move v0, v1

    .line 544
    goto/16 :goto_0

    .line 547
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/l;->e(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 548
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/l;->b(Z)V

    :cond_f
    move v0, v1

    .line 550
    goto/16 :goto_0
.end method

.method private d()I
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 633
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 636
    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/RadialPickerLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/l;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    .line 566
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 567
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->b(Z)V

    .line 569
    :cond_1
    return-void
.end method

.method private e()V
    .locals 20

    .prologue
    .line 810
    const/4 v3, 0x7

    .line 811
    const/16 v4, 0x8

    .line 812
    const/16 v5, 0x9

    .line 813
    const/16 v6, 0xa

    .line 814
    const/16 v7, 0xb

    .line 815
    const/16 v8, 0xc

    .line 816
    const/16 v9, 0xd

    .line 817
    const/16 v10, 0xe

    .line 818
    const/16 v11, 0xf

    .line 819
    const/16 v12, 0x10

    .line 822
    new-instance v13, Lcom/android/datetimepicker/time/r;

    const/4 v14, 0x0

    new-array v14, v14, [I

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/datetimepicker/time/l;->y:Lcom/android/datetimepicker/time/r;

    .line 823
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/l;->r:Z

    if-eqz v13, :cond_0

    .line 825
    new-instance v13, Lcom/android/datetimepicker/time/r;

    const/4 v14, 0x6

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v3, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    const/4 v15, 0x2

    aput v5, v14, v15

    const/4 v15, 0x3

    aput v6, v14, v15

    const/4 v15, 0x4

    aput v7, v14, v15

    const/4 v15, 0x5

    aput v8, v14, v15

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 826
    new-instance v14, Lcom/android/datetimepicker/time/r;

    const/16 v15, 0xa

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v3, v15, v16

    const/16 v16, 0x1

    aput v4, v15, v16

    const/16 v16, 0x2

    aput v5, v15, v16

    const/16 v16, 0x3

    aput v6, v15, v16

    const/16 v16, 0x4

    aput v7, v15, v16

    const/16 v16, 0x5

    aput v8, v15, v16

    const/16 v16, 0x6

    aput v9, v15, v16

    const/16 v16, 0x7

    aput v10, v15, v16

    const/16 v16, 0x8

    aput v11, v15, v16

    const/16 v16, 0x9

    aput v12, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 828
    invoke-virtual {v13, v14}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 831
    new-instance v15, Lcom/android/datetimepicker/time/r;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/16 v17, 0x1

    aput v4, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/l;->y:Lcom/android/datetimepicker/time/r;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 835
    new-instance v16, Lcom/android/datetimepicker/time/r;

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v3, v17, v18

    const/16 v18, 0x1

    aput v4, v17, v18

    const/16 v18, 0x2

    aput v5, v17, v18

    const/16 v18, 0x3

    aput v6, v17, v18

    const/16 v18, 0x4

    aput v7, v17, v18

    const/16 v18, 0x5

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 836
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 838
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 841
    new-instance v17, Lcom/android/datetimepicker/time/r;

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v9, v18, v19

    const/16 v19, 0x1

    aput v10, v18, v19

    const/16 v19, 0x2

    aput v11, v18, v19

    const/16 v19, 0x3

    aput v12, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 843
    invoke-virtual/range {v16 .. v17}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 846
    new-instance v16, Lcom/android/datetimepicker/time/r;

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v9, v17, v18

    const/16 v18, 0x1

    aput v10, v17, v18

    const/16 v18, 0x2

    aput v11, v17, v18

    const/16 v18, 0x3

    aput v12, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 847
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 849
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 852
    new-instance v15, Lcom/android/datetimepicker/time/r;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v5, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/l;->y:Lcom/android/datetimepicker/time/r;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 856
    new-instance v16, Lcom/android/datetimepicker/time/r;

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v3, v17, v18

    const/4 v3, 0x1

    aput v4, v17, v3

    const/4 v3, 0x2

    aput v5, v17, v3

    const/4 v3, 0x3

    aput v6, v17, v3

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 857
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 859
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 862
    new-instance v3, Lcom/android/datetimepicker/time/r;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v7, v4, v5

    const/4 v5, 0x1

    aput v8, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 863
    invoke-virtual {v15, v3}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 865
    invoke-virtual {v3, v14}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 868
    new-instance v3, Lcom/android/datetimepicker/time/r;

    const/4 v4, 0x7

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x2

    aput v8, v4, v5

    const/4 v5, 0x3

    aput v9, v4, v5

    const/4 v5, 0x4

    aput v10, v4, v5

    const/4 v5, 0x5

    aput v11, v4, v5

    const/4 v5, 0x6

    aput v12, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/datetimepicker/time/l;->y:Lcom/android/datetimepicker/time/r;

    invoke-virtual {v4, v3}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 871
    invoke-virtual {v3, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 934
    :goto_0
    return-void

    .line 875
    :cond_0
    new-instance v13, Lcom/android/datetimepicker/time/r;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/time/l;->g(I)I

    move-result v16

    aput v16, v14, v15

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 878
    new-instance v14, Lcom/android/datetimepicker/time/r;

    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v4, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 879
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/datetimepicker/time/l;->y:Lcom/android/datetimepicker/time/r;

    invoke-virtual {v15, v14}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 881
    invoke-virtual {v14, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 884
    new-instance v15, Lcom/android/datetimepicker/time/r;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/16 v17, 0x1

    aput v4, v16, v17

    const/16 v17, 0x2

    aput v5, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 885
    invoke-virtual {v14, v15}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 887
    invoke-virtual {v15, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 890
    new-instance v16, Lcom/android/datetimepicker/time/r;

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v3, v17, v18

    const/16 v18, 0x1

    aput v4, v17, v18

    const/16 v18, 0x2

    aput v5, v17, v18

    const/16 v18, 0x3

    aput v6, v17, v18

    const/16 v18, 0x4

    aput v7, v17, v18

    const/16 v18, 0x5

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 891
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 893
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 897
    new-instance v17, Lcom/android/datetimepicker/time/r;

    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v3, v18, v19

    const/16 v19, 0x1

    aput v4, v18, v19

    const/16 v19, 0x2

    aput v5, v18, v19

    const/16 v19, 0x3

    aput v6, v18, v19

    const/16 v19, 0x4

    aput v7, v18, v19

    const/16 v19, 0x5

    aput v8, v18, v19

    const/16 v19, 0x6

    aput v9, v18, v19

    const/16 v19, 0x7

    aput v10, v18, v19

    const/16 v19, 0x8

    aput v11, v18, v19

    const/16 v19, 0x9

    aput v12, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 898
    invoke-virtual/range {v16 .. v17}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 900
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 903
    new-instance v16, Lcom/android/datetimepicker/time/r;

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v9, v17, v18

    const/16 v18, 0x1

    aput v10, v17, v18

    const/16 v18, 0x2

    aput v11, v17, v18

    const/16 v18, 0x3

    aput v12, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 904
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 906
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 909
    new-instance v15, Lcom/android/datetimepicker/time/r;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v6, v16, v17

    const/16 v17, 0x1

    aput v7, v16, v17

    const/16 v17, 0x2

    aput v8, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 910
    invoke-virtual {v14, v15}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 913
    new-instance v14, Lcom/android/datetimepicker/time/r;

    const/16 v16, 0xa

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/16 v17, 0x1

    aput v4, v16, v17

    const/16 v17, 0x2

    aput v5, v16, v17

    const/16 v17, 0x3

    aput v6, v16, v17

    const/16 v17, 0x4

    aput v7, v16, v17

    const/16 v17, 0x5

    aput v8, v16, v17

    const/16 v17, 0x6

    aput v9, v16, v17

    const/16 v17, 0x7

    aput v10, v16, v17

    const/16 v17, 0x8

    aput v11, v16, v17

    const/16 v17, 0x9

    aput v12, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 914
    invoke-virtual {v15, v14}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 916
    invoke-virtual {v14, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 919
    new-instance v14, Lcom/android/datetimepicker/time/r;

    const/16 v15, 0x8

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v5, v15, v16

    const/16 v16, 0x1

    aput v6, v15, v16

    const/16 v16, 0x2

    aput v7, v15, v16

    const/16 v16, 0x3

    aput v8, v15, v16

    const/16 v16, 0x4

    aput v9, v15, v16

    const/16 v16, 0x5

    aput v10, v15, v16

    const/16 v16, 0x6

    aput v11, v15, v16

    const/16 v16, 0x7

    aput v12, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 920
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/datetimepicker/time/l;->y:Lcom/android/datetimepicker/time/r;

    invoke-virtual {v15, v14}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 922
    invoke-virtual {v14, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 925
    new-instance v15, Lcom/android/datetimepicker/time/r;

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/16 v17, 0x1

    aput v4, v16, v17

    const/16 v17, 0x2

    aput v5, v16, v17

    const/16 v17, 0x3

    aput v6, v16, v17

    const/16 v17, 0x4

    aput v7, v16, v17

    const/16 v17, 0x5

    aput v8, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 926
    invoke-virtual {v14, v15}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 929
    new-instance v14, Lcom/android/datetimepicker/time/r;

    const/16 v16, 0xa

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/4 v3, 0x1

    aput v4, v16, v3

    const/4 v3, 0x2

    aput v5, v16, v3

    const/4 v3, 0x3

    aput v6, v16, v3

    const/4 v3, 0x4

    aput v7, v16, v3

    const/4 v3, 0x5

    aput v8, v16, v3

    const/4 v3, 0x6

    aput v9, v16, v3

    const/4 v3, 0x7

    aput v10, v16, v3

    const/16 v3, 0x8

    aput v11, v16, v3

    const/16 v3, 0x9

    aput v12, v16, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Lcom/android/datetimepicker/time/r;-><init>(Lcom/android/datetimepicker/time/l;[I)V

    .line 930
    invoke-virtual {v15, v14}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    .line 932
    invoke-virtual {v14, v13}, Lcom/android/datetimepicker/time/r;->a(Lcom/android/datetimepicker/time/r;)V

    goto/16 :goto_0
.end method

.method private e(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 574
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    :cond_1
    :goto_0
    return v0

    .line 579
    :cond_2
    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 581
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->d()I

    goto :goto_0

    .line 585
    :cond_3
    invoke-static {p1}, Lcom/android/datetimepicker/time/l;->f(I)I

    move-result v2

    .line 586
    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 588
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 589
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_4

    .line 590
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    move v0, v1

    .line 596
    goto :goto_0
.end method

.method private static f(I)I
    .locals 1

    .prologue
    .line 699
    packed-switch p0, :pswitch_data_0

    .line 721
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 701
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 703
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 705
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 707
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 709
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 711
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 713
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 715
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 717
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 719
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private g(I)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 775
    iget v0, p0, Lcom/android/datetimepicker/time/l;->z:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/time/l;->A:I

    if-ne v0, v2, :cond_1

    .line 777
    :cond_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    move v0, v1

    .line 780
    :goto_0
    iget-object v4, p0, Lcom/android/datetimepicker/time/l;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/datetimepicker/time/l;->n:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 781
    iget-object v4, p0, Lcom/android/datetimepicker/time/l;->m:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 782
    iget-object v5, p0, Lcom/android/datetimepicker/time/l;->n:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 783
    if-eq v4, v5, :cond_3

    .line 784
    new-array v0, v8, [C

    aput-char v4, v0, v1

    aput-char v5, v0, v7

    invoke-virtual {v3, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_2

    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 787
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/l;->z:I

    .line 788
    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/l;->A:I

    .line 796
    :cond_1
    :goto_1
    if-nez p1, :cond_4

    .line 797
    iget v0, p0, Lcom/android/datetimepicker/time/l;->z:I

    .line 802
    :goto_2
    return v0

    .line 790
    :cond_2
    const-string v0, "TimePickerDialog"

    const-string v1, "Unable to find keycodes for AM and PM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 780
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_4
    if-ne p1, v7, :cond_5

    .line 799
    iget v0, p0, Lcom/android/datetimepicker/time/l;->A:I

    goto :goto_2

    :cond_5
    move v0, v2

    .line 802
    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->b:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->c()V

    .line 356
    return-void
.end method

.method public a(IIZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 392
    if-nez p1, :cond_2

    .line 393
    invoke-direct {p0, p2, v4}, Lcom/android/datetimepicker/time/l;->a(IZ)V

    .line 394
    const-string v0, "%d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 395
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->o:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 396
    invoke-direct {p0, v3, v3, v3, v4}, Lcom/android/datetimepicker/time/l;->a(IZZZ)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 414
    :cond_0
    :goto_1
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :cond_2
    if-ne p1, v3, :cond_3

    .line 404
    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/l;->b(I)V

    .line 405
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 406
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 407
    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/l;->a(I)V

    goto :goto_1

    .line 408
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 410
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 412
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/l;->a(Z)V

    goto :goto_1
.end method

.method public b(Lcom/android/datetimepicker/time/s;IIZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    iput-object p1, p0, Lcom/android/datetimepicker/time/l;->a:Lcom/android/datetimepicker/time/s;

    .line 147
    iput p2, p0, Lcom/android/datetimepicker/time/l;->p:I

    .line 148
    iput p3, p0, Lcom/android/datetimepicker/time/l;->q:I

    .line 149
    iput-boolean p4, p0, Lcom/android/datetimepicker/time/l;->r:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/datetimepicker/time/l;->s:Z

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/support/v4/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 178
    if-eqz p1, :cond_0

    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/l;->p:I

    .line 182
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/l;->q:I

    .line 183
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/l;->r:Z

    .line 184
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    .line 185
    const-string v0, "dark_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/l;->s:Z

    .line 187
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/l;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 194
    sget v1, Lcom/android/datetimepicker/h;->time_picker_dialog:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 195
    new-instance v7, Lcom/android/datetimepicker/time/q;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, Lcom/android/datetimepicker/time/q;-><init>(Lcom/android/datetimepicker/time/l;Lcom/android/datetimepicker/time/m;)V

    .line 196
    sget v1, Lcom/android/datetimepicker/g;->time_picker_dialog:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/l;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 199
    sget v1, Lcom/android/datetimepicker/i;->hour_picker_description:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->B:Ljava/lang/String;

    .line 200
    sget v1, Lcom/android/datetimepicker/i;->select_hours:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->C:Ljava/lang/String;

    .line 201
    sget v1, Lcom/android/datetimepicker/i;->minute_picker_description:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->D:Ljava/lang/String;

    .line 202
    sget v1, Lcom/android/datetimepicker/i;->select_minutes:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->E:Ljava/lang/String;

    .line 203
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/datetimepicker/d;->red:I

    :goto_0
    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/l;->k:I

    .line 204
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/android/datetimepicker/d;->white:I

    :goto_1
    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/l;->l:I

    .line 206
    sget v1, Lcom/android/datetimepicker/g;->hours:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    .line 207
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 208
    sget v1, Lcom/android/datetimepicker/g;->hour_space:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->e:Landroid/widget/TextView;

    .line 209
    sget v1, Lcom/android/datetimepicker/g;->minutes_space:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->g:Landroid/widget/TextView;

    .line 210
    sget v1, Lcom/android/datetimepicker/g;->minutes:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->f:Landroid/widget/TextView;

    .line 211
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 212
    sget v1, Lcom/android/datetimepicker/g;->ampm_label:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->h:Landroid/widget/TextView;

    .line 213
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 215
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/datetimepicker/time/l;->m:Ljava/lang/String;

    .line 216
    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->n:Ljava/lang/String;

    .line 218
    new-instance v1, Lcom/android/datetimepicker/a;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/datetimepicker/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->b:Lcom/android/datetimepicker/a;

    .line 220
    sget v1, Lcom/android/datetimepicker/g;->time_picker:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/datetimepicker/time/RadialPickerLayout;

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    .line 221
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/android/datetimepicker/time/e;)V

    .line 222
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, v7}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 223
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/l;->b:Lcom/android/datetimepicker/a;

    iget v4, p0, Lcom/android/datetimepicker/time/l;->p:I

    iget v5, p0, Lcom/android/datetimepicker/time/l;->q:I

    iget-boolean v6, p0, Lcom/android/datetimepicker/time/l;->r:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(Landroid/content/Context;Lcom/android/datetimepicker/a;IIZ)V

    .line 226
    const/4 v1, 0x0

    .line 227
    if-eqz p3, :cond_0

    const-string v2, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    const-string v1, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 231
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/datetimepicker/time/l;->a(IZZZ)V

    .line 232
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->invalidate()V

    .line 234
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/android/datetimepicker/time/m;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/m;-><init>(Lcom/android/datetimepicker/time/l;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/android/datetimepicker/time/n;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/n;-><init>(Lcom/android/datetimepicker/time/l;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    sget v1, Lcom/android/datetimepicker/g;->done_button:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    .line 250
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/android/datetimepicker/time/o;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/o;-><init>(Lcom/android/datetimepicker/time/l;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 268
    sget v1, Lcom/android/datetimepicker/g;->ampm_hitspace:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->i:Landroid/view/View;

    .line 269
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->r:Z

    if-eqz v1, :cond_4

    .line 270
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->h:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    sget v1, Lcom/android/datetimepicker/g;->separator:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 276
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/datetimepicker/time/l;->o:Z

    .line 297
    iget v1, p0, Lcom/android/datetimepicker/time/l;->p:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/datetimepicker/time/l;->a(IZ)V

    .line 298
    iget v1, p0, Lcom/android/datetimepicker/time/l;->q:I

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->b(I)V

    .line 301
    sget v1, Lcom/android/datetimepicker/i;->time_placeholder:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->u:Ljava/lang/String;

    .line 302
    sget v1, Lcom/android/datetimepicker/i;->deleted_key:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->v:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->u:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/android/datetimepicker/time/l;->t:C

    .line 304
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/datetimepicker/time/l;->A:I

    iput v1, p0, Lcom/android/datetimepicker/time/l;->z:I

    .line 305
    invoke-direct {p0}, Lcom/android/datetimepicker/time/l;->e()V

    .line 306
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->w:Z

    if-eqz v1, :cond_6

    .line 307
    const-string v1, "typed_times"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    .line 308
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->d(I)V

    .line 309
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 315
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/datetimepicker/time/l;->s:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(Landroid/content/Context;Z)V

    .line 317
    sget v1, Lcom/android/datetimepicker/d;->white:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 318
    sget v1, Lcom/android/datetimepicker/d;->circle_background:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 319
    sget v1, Lcom/android/datetimepicker/d;->line_background:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 320
    sget v1, Lcom/android/datetimepicker/d;->numbers_text_color:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 321
    sget v1, Lcom/android/datetimepicker/d;->done_text_color:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 322
    sget v12, Lcom/android/datetimepicker/f;->done_background_color:I

    .line 324
    sget v1, Lcom/android/datetimepicker/d;->dark_gray:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 325
    sget v1, Lcom/android/datetimepicker/d;->light_gray:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 326
    sget v1, Lcom/android/datetimepicker/d;->line_dark:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 327
    sget v1, Lcom/android/datetimepicker/d;->done_text_color_dark:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 328
    sget v11, Lcom/android/datetimepicker/f;->done_background_color_dark:I

    .line 331
    sget v1, Lcom/android/datetimepicker/g;->time_display_background:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v14, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 332
    sget v1, Lcom/android/datetimepicker/g;->time_display:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v14, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v14, :cond_8

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    sget v1, Lcom/android/datetimepicker/g;->separator:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    sget v1, Lcom/android/datetimepicker/g;->ampm_label:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v2, :cond_a

    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    sget v1, Lcom/android/datetimepicker/g;->line:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v1, :cond_b

    move v1, v5

    :goto_8
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 336
    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v1, :cond_c

    move-object v1, v7

    :goto_9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 337
    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v1, :cond_d

    move v1, v9

    :goto_a
    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setBackgroundColor(I)V

    .line 338
    iget-object v2, p0, Lcom/android/datetimepicker/time/l;->c:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->s:Z

    if-eqz v1, :cond_e

    move v1, v11

    :goto_b
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 339
    return-object v13

    .line 203
    :cond_2
    sget v1, Lcom/android/datetimepicker/d;->blue:I

    goto/16 :goto_0

    .line 204
    :cond_3
    sget v1, Lcom/android/datetimepicker/d;->numbers_text_color:I

    goto/16 :goto_1

    .line 278
    :cond_4
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget v1, p0, Lcom/android/datetimepicker/time/l;->p:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_5

    const/4 v1, 0x0

    :goto_c
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/l;->a(I)V

    .line 280
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->i:Landroid/view/View;

    new-instance v2, Lcom/android/datetimepicker/time/p;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/p;-><init>(Lcom/android/datetimepicker/time/l;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 279
    :cond_5
    const/4 v1, 0x1

    goto :goto_c

    .line 310
    :cond_6
    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_7
    move v1, v3

    .line 331
    goto/16 :goto_4

    :cond_8
    move v2, v3

    .line 332
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 333
    goto :goto_6

    :cond_a
    move v3, v4

    .line 334
    goto :goto_7

    :cond_b
    move v1, v6

    .line 335
    goto :goto_8

    :cond_c
    move-object v1, v8

    .line 336
    goto :goto_9

    :cond_d
    move v1, v10

    .line 337
    goto :goto_a

    :cond_e
    move v1, v12

    .line 338
    goto :goto_b
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Landroid/support/v4/app/e;->onPause()V

    .line 351
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->b:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->b()V

    .line 352
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Landroid/support/v4/app/e;->onResume()V

    .line 345
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->b:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->a()V

    .line 346
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "hour_of_day"

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    const-string v0, "minute"

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/l;->w:Z

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/android/datetimepicker/time/l;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 383
    :cond_0
    const-string v0, "dark_theme"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/l;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    :cond_1
    return-void
.end method
