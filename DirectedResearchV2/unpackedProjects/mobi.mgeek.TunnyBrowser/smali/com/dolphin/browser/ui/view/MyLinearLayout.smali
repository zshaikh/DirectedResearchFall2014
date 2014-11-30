.class public Lcom/dolphin/browser/ui/view/MyLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MyLinearLayout.java"


# instance fields
.field private a:[I

.field private b:[I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->d:Z

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->e:I

    .line 46
    const/16 v0, 0x33

    iput v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->d:Z

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->e:I

    .line 46
    const/16 v0, 0x33

    iput v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    .line 62
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 409
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 410
    return-void
.end method

.method private c(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    .line 679
    :goto_0
    if-ge v7, p1, :cond_1

    .line 680
    invoke-virtual {p0, v7}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v1

    .line 681
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 682
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 684
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 687
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 688
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 691
    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 692
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 679
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 696
    :cond_1
    return-void
.end method

.method private d(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    .line 1056
    :goto_0
    if-ge v7, p1, :cond_1

    .line 1057
    invoke-virtual {p0, v7}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1058
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1059
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1061
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1064
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1065
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1068
    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1069
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1056
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1073
    :cond_1
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method a(II)V
    .locals 25

    .prologue
    .line 424
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 425
    const/16 v17, 0x0

    .line 426
    const/4 v13, 0x0

    .line 427
    const/4 v12, 0x0

    .line 428
    const/16 v16, 0x1

    .line 429
    const/4 v6, 0x0

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a()I

    move-result v19

    .line 433
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 434
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 436
    const/4 v11, 0x0

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getBaselineAlignedChildIndex()I

    move-result v22

    .line 439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->d:Z

    move/from16 v23, v0

    .line 441
    const/high16 v14, -0x80000000

    .line 444
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v5, v0, :cond_d

    .line 445
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v4

    .line 447
    if-nez v4, :cond_0

    .line 448
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v14

    move v4, v6

    move/from16 v7, v16

    move/from16 v6, v17

    .line 444
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v14, v3

    move/from16 v16, v7

    move/from16 v17, v6

    move v6, v4

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v14

    move v4, v6

    move/from16 v7, v16

    move/from16 v6, v17

    .line 454
    goto :goto_1

    .line 457
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 459
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v15, v6, v3

    .line 461
    const/high16 v3, 0x40000000

    move/from16 v0, v21

    if-ne v0, v3, :cond_4

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_4

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 465
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 466
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 505
    :cond_2
    :goto_2
    if-ltz v22, :cond_3

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_3

    .line 506
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->e:I

    .line 512
    :cond_3
    move/from16 v0, v22

    if-ge v5, v0, :cond_8

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    .line 513
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_4
    const/high16 v3, -0x80000000

    .line 470
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v6, :cond_5

    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 475
    const/4 v3, 0x0

    .line 476
    const/4 v6, -0x2

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_5
    move/from16 v18, v3

    .line 483
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;IIIII)V

    .line 487
    const/high16 v3, -0x80000000

    move/from16 v0, v18

    if-eq v0, v3, :cond_6

    .line 488
    move/from16 v0, v18

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 491
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 492
    move-object/from16 v0, p0

    iget v6, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 493
    add-int v7, v6, v3

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 496
    if-eqz v23, :cond_2

    .line 497
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    .line 483
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 519
    :cond_8
    const/4 v3, 0x0

    .line 520
    const/high16 v6, 0x40000000

    move/from16 v0, v20

    if-eq v0, v6, :cond_1f

    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1f

    .line 525
    const/4 v6, 0x1

    .line 526
    const/4 v3, 0x1

    .line 529
    :goto_4
    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    .line 530
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v9, v7, v8

    .line 531
    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 533
    if-eqz v16, :cond_9

    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_9

    const/4 v7, 0x1

    .line 534
    :goto_5
    iget v10, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v16, 0x0

    cmpl-float v10, v10, v16

    if-lez v10, :cond_b

    .line 539
    if-eqz v3, :cond_a

    move v3, v8

    :goto_6
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v13

    .line 546
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v4, v15

    move v12, v3

    move v13, v8

    move v3, v14

    move/from16 v24, v6

    move v6, v11

    move/from16 v11, v24

    goto/16 :goto_1

    .line 533
    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    move v3, v9

    .line 539
    goto :goto_6

    .line 542
    :cond_b
    if-eqz v3, :cond_c

    :goto_8
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v12

    goto :goto_7

    :cond_c
    move v8, v9

    goto :goto_8

    .line 549
    :cond_d
    if-eqz v23, :cond_10

    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-ne v0, v3, :cond_10

    .line 550
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 552
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v19

    if-ge v4, v0, :cond_10

    .line 553
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v5

    .line 555
    if-nez v5, :cond_e

    .line 556
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(I)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v4

    .line 552
    :goto_a
    add-int/lit8 v4, v3, 0x1

    goto :goto_9

    .line 560
    :cond_e
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_f

    .line 561
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 562
    goto :goto_a

    .line 565
    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 568
    move-object/from16 v0, p0

    iget v7, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 569
    add-int v8, v7, v14

    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v4

    goto :goto_a

    .line 575
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 577
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 583
    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->resolveSize(II)I

    move-result v14

    .line 587
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    sub-int v4, v14, v3

    .line 588
    if-eqz v4, :cond_1d

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_1d

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getWeightSum()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getWeightSum()F

    move-result v6

    .line 591
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 593
    const/4 v3, 0x0

    move v5, v6

    move/from16 v8, v16

    move v9, v13

    move/from16 v10, v17

    move v6, v4

    move v13, v3

    :goto_b
    move/from16 v0, v19

    if-ge v13, v0, :cond_1b

    .line 594
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v15

    .line 596
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_12

    move v3, v8

    move v4, v9

    move v7, v10

    .line 593
    :goto_c
    add-int/lit8 v8, v13, 0x1

    move v13, v8

    move v9, v4

    move v10, v7

    move v8, v3

    goto :goto_b

    .line 600
    :cond_12
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 602
    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 603
    const/4 v4, 0x0

    cmpl-float v4, v7, v4

    if-lez v4, :cond_16

    .line 605
    int-to-float v4, v6

    mul-float/2addr v4, v7

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 606
    sub-float/2addr v5, v7

    .line 607
    sub-int/2addr v6, v4

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingRight()I

    move-result v12

    add-int/2addr v7, v12

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v12

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v7, v12}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getChildMeasureSpec(III)I

    move-result v7

    .line 615
    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v12, :cond_13

    const/high16 v12, 0x40000000

    move/from16 v0, v21

    if-eq v0, v12, :cond_15

    .line 618
    :cond_13
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v4, v12

    .line 619
    if-gez v4, :cond_14

    .line 620
    const/4 v4, 0x0

    .line 623
    :cond_14
    const/high16 v12, 0x40000000

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v15, v7, v4}, Landroid/view/View;->measure(II)V

    move v4, v5

    move v5, v6

    .line 634
    :goto_d
    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 635
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 636
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 638
    const/high16 v12, 0x40000000

    move/from16 v0, v20

    if-eq v0, v12, :cond_18

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_18

    const/4 v12, 0x1

    .line 641
    :goto_e
    if-eqz v12, :cond_19

    :goto_f
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 644
    if-eqz v8, :cond_1a

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_1a

    const/4 v6, 0x1

    .line 646
    :goto_10
    move-object/from16 v0, p0

    iget v8, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 647
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v12

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v9

    add-int/2addr v3, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v6

    move v6, v5

    move v5, v4

    move v4, v7

    move v7, v10

    goto/16 :goto_c

    .line 628
    :cond_15
    if-lez v4, :cond_17

    :goto_11
    const/high16 v12, 0x40000000

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v15, v7, v4}, Landroid/view/View;->measure(II)V

    :cond_16
    move v4, v5

    move v5, v6

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    goto :goto_11

    .line 638
    :cond_18
    const/4 v12, 0x0

    goto :goto_e

    :cond_19
    move v6, v7

    .line 641
    goto :goto_f

    .line 644
    :cond_1a
    const/4 v6, 0x0

    goto :goto_10

    .line 652
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v9

    move v4, v10

    .line 659
    :goto_12
    if-nez v8, :cond_1e

    const/high16 v5, 0x40000000

    move/from16 v0, v20

    if-eq v0, v5, :cond_1e

    .line 663
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 668
    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->setMeasuredDimension(II)V

    .line 670
    if-eqz v11, :cond_1c

    .line 671
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c(II)V

    .line 673
    :cond_1c
    return-void

    .line 655
    :cond_1d
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v8, v16

    move/from16 v4, v17

    goto :goto_12

    :cond_1e
    move v3, v4

    goto :goto_13

    :cond_1f
    move v6, v11

    goto/16 :goto_4
.end method

.method a(Landroid/view/View;IIIII)V
    .locals 6

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 177
    return-void
.end method

.method b(I)I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method b()V
    .locals 14

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingLeft()I

    move-result v7

    .line 219
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingTop()I

    move-result v0

    .line 223
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getWidth()I

    move-result v1

    .line 224
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingRight()I

    move-result v2

    sub-int v10, v1, v2

    .line 227
    sub-int/2addr v1, v7

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingRight()I

    move-result v2

    sub-int v11, v1, v2

    .line 229
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a()I

    move-result v12

    .line 231
    iget v1, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    and-int/lit8 v1, v1, 0x70

    .line 232
    iget v2, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    and-int/lit8 v9, v2, 0x7

    .line 234
    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 235
    sparse-switch v1, :sswitch_data_0

    .line 249
    :cond_0
    :goto_0
    const/4 v8, 0x0

    move v3, v0

    :goto_1
    if-ge v8, v12, :cond_3

    .line 250
    invoke-virtual {p0, v8}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v1

    .line 251
    if-nez v1, :cond_1

    .line 252
    invoke-virtual {p0, v8}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(I)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v8

    .line 249
    :goto_2
    add-int/lit8 v8, v0, 0x1

    move v3, v1

    goto :goto_1

    .line 239
    :sswitch_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    sub-int/2addr v0, v1

    .line 240
    goto :goto_0

    .line 243
    :sswitch_1
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 255
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 261
    if-gez v0, :cond_2

    move v0, v9

    .line 265
    :cond_2
    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v2, v7

    .line 284
    :goto_3
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v13, v3, v0

    .line 285
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(Landroid/view/View;)I

    move-result v0

    add-int v3, v13, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;IIII)V

    .line 287
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    add-int v2, v13, v0

    .line 289
    invoke-virtual {p0, v1, v8}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v8

    move v1, v2

    goto :goto_2

    .line 267
    :pswitch_1
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v2, v7, v0

    .line 268
    goto :goto_3

    .line 271
    :pswitch_2
    sub-int v0, v11, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v2, v0, v2

    .line 273
    goto :goto_3

    .line 276
    :pswitch_3
    sub-int v0, v10, v4

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v2, v0, v2

    .line 277
    goto :goto_3

    .line 292
    :cond_3
    return-void

    :cond_4
    move v0, v8

    move v1, v3

    goto :goto_2

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method b(II)V
    .locals 28

    .prologue
    .line 710
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 711
    const/16 v18, 0x0

    .line 712
    const/4 v14, 0x0

    .line 713
    const/4 v13, 0x0

    .line 714
    const/16 v17, 0x1

    .line 715
    const/4 v6, 0x0

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a()I

    move-result v20

    .line 719
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 720
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 722
    const/4 v12, 0x0

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b:[I

    if-nez v3, :cond_1

    .line 725
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a:[I

    .line 726
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b:[I

    .line 729
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a:[I

    move-object/from16 v23, v0

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b:[I

    move-object/from16 v24, v0

    .line 732
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v23, v7

    aput v8, v23, v5

    aput v8, v23, v4

    aput v8, v23, v3

    .line 733
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v24, v7

    aput v8, v24, v5

    aput v8, v24, v4

    aput v8, v24, v3

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->isBaselineAligned()Z

    move-result v25

    .line 736
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->d:Z

    move/from16 v26, v0

    .line 738
    const/high16 v3, 0x40000000

    move/from16 v0, v21

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    move v11, v3

    .line 740
    :goto_0
    const/high16 v15, -0x80000000

    .line 743
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_12

    .line 744
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v4

    .line 746
    if-nez v4, :cond_3

    .line 747
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v15

    move v4, v6

    move/from16 v7, v17

    move/from16 v6, v18

    .line 743
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v15, v3

    move/from16 v17, v7

    move/from16 v18, v6

    move v6, v4

    goto :goto_1

    .line 738
    :cond_2
    const/4 v3, 0x0

    move v11, v3

    goto :goto_0

    .line 751
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_4

    .line 752
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v15

    move v4, v6

    move/from16 v7, v17

    move/from16 v6, v18

    .line 753
    goto :goto_2

    .line 756
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 759
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v16, v6, v3

    .line 761
    const/high16 v3, 0x40000000

    move/from16 v0, v21

    if-ne v0, v3, :cond_8

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_8

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    .line 765
    if-eqz v11, :cond_7

    .line 766
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 778
    :goto_3
    if-eqz v25, :cond_5

    .line 779
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 780
    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    .line 821
    :cond_5
    :goto_4
    const/4 v3, 0x0

    .line 822
    const/high16 v6, 0x40000000

    move/from16 v0, v22

    if-eq v0, v6, :cond_2d

    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2d

    .line 826
    const/4 v6, 0x1

    .line 827
    const/4 v3, 0x1

    .line 830
    :goto_5
    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    .line 831
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v7, v8

    .line 833
    if-eqz v25, :cond_6

    .line 834
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 835
    const/4 v7, -0x1

    if-eq v12, v7, :cond_6

    .line 838
    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v7, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    :goto_6
    and-int/lit8 v7, v7, 0x70

    .line 840
    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    .line 843
    aget v19, v23, v7

    move/from16 v0, v19

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v19

    aput v19, v23, v7

    .line 844
    aget v19, v24, v7

    sub-int v12, v9, v12

    move/from16 v0, v19

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v24, v7

    .line 848
    :cond_6
    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 850
    if-eqz v17, :cond_e

    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_e

    const/4 v7, 0x1

    .line 851
    :goto_7
    iget v10, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v17, 0x0

    cmpl-float v10, v10, v17

    if-lez v10, :cond_10

    .line 856
    if-eqz v3, :cond_f

    move v3, v8

    :goto_8
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v14

    .line 863
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move/from16 v4, v16

    move v13, v3

    move v14, v8

    move v3, v15

    move/from16 v27, v6

    move v6, v12

    move/from16 v12, v27

    goto/16 :goto_2

    .line 768
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 769
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    goto/16 :goto_3

    .line 783
    :cond_8
    const/high16 v3, -0x80000000

    .line 785
    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v6, :cond_9

    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    .line 790
    const/4 v3, 0x0

    .line 791
    const/4 v6, -0x2

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_9
    move/from16 v19, v3

    .line 798
    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    :goto_a
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;IIIII)V

    .line 802
    const/high16 v3, -0x80000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_a

    .line 803
    move/from16 v0, v19

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 806
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 807
    if-eqz v11, :cond_c

    .line 808
    move-object/from16 v0, p0

    iget v6, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v3

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 816
    :goto_b
    if-eqz v26, :cond_5

    .line 817
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto/16 :goto_4

    .line 798
    :cond_b
    const/4 v7, 0x0

    goto :goto_a

    .line 811
    :cond_c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 812
    add-int v7, v6, v3

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    goto :goto_b

    .line 838
    :cond_d
    iget v7, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_6

    .line 850
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_f
    move v3, v9

    .line 856
    goto/16 :goto_8

    .line 859
    :cond_10
    if-eqz v3, :cond_11

    :goto_c
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v13

    goto/16 :goto_9

    :cond_11
    move v8, v9

    goto :goto_c

    .line 868
    :cond_12
    const/4 v3, 0x1

    aget v3, v23, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    const/4 v3, 0x0

    aget v3, v23, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    const/4 v3, 0x2

    aget v3, v23, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    const/4 v3, 0x3

    aget v3, v23, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    .line 872
    :cond_13
    const/4 v3, 0x3

    aget v3, v23, v3

    const/4 v4, 0x0

    aget v4, v23, v4

    const/4 v5, 0x1

    aget v5, v23, v5

    const/4 v7, 0x2

    aget v7, v23, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 875
    const/4 v4, 0x3

    aget v4, v24, v4

    const/4 v5, 0x0

    aget v5, v24, v5

    const/4 v7, 0x1

    aget v7, v24, v7

    const/4 v8, 0x2

    aget v8, v24, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 878
    add-int/2addr v3, v4

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 881
    :goto_d
    if-eqz v26, :cond_17

    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-ne v0, v3, :cond_17

    .line 882
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 884
    const/4 v4, 0x0

    :goto_e
    move/from16 v0, v20

    if-ge v4, v0, :cond_17

    .line 885
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v7

    .line 887
    if-nez v7, :cond_14

    .line 888
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(I)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v4

    .line 884
    :goto_f
    add-int/lit8 v4, v3, 0x1

    goto :goto_e

    .line 892
    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_15

    .line 893
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 894
    goto :goto_f

    .line 897
    :cond_15
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 899
    if-eqz v11, :cond_16

    .line 900
    move-object/from16 v0, p0

    iget v8, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    iget v9, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v15

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v4

    goto :goto_f

    .line 903
    :cond_16
    move-object/from16 v0, p0

    iget v8, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 904
    add-int v9, v8, v15

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    move v3, v4

    goto :goto_f

    .line 911
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 913
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 919
    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->resolveSize(II)I

    move-result v15

    .line 923
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    sub-int v4, v15, v3

    .line 924
    if-eqz v4, :cond_28

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_28

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getWeightSum()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getWeightSum()F

    move-result v6

    .line 927
    :cond_18
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v23, v8

    aput v9, v23, v7

    aput v9, v23, v5

    aput v9, v23, v3

    .line 928
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v24, v8

    aput v9, v24, v7

    aput v9, v24, v5

    aput v9, v24, v3

    .line 929
    const/4 v13, -0x1

    .line 931
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 933
    const/4 v3, 0x0

    move v5, v6

    move/from16 v9, v17

    move v10, v14

    move v14, v3

    move v6, v4

    :goto_10
    move/from16 v0, v20

    if-ge v14, v0, :cond_24

    .line 934
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v16

    .line 936
    if-eqz v16, :cond_2b

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_19

    move v3, v5

    move v4, v6

    move v7, v13

    move v6, v10

    move v5, v9

    .line 933
    :goto_11
    add-int/lit8 v8, v14, 0x1

    move v14, v8

    move v9, v5

    move v10, v6

    move v13, v7

    move v6, v4

    move v5, v3

    goto :goto_10

    .line 940
    :cond_19
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 943
    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 944
    const/4 v4, 0x0

    cmpl-float v4, v7, v4

    if-lez v4, :cond_2a

    .line 946
    int-to-float v4, v6

    mul-float/2addr v4, v7

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 947
    sub-float v7, v5, v7

    .line 948
    sub-int v8, v6, v4

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 957
    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v6, :cond_1a

    const/high16 v6, 0x40000000

    move/from16 v0, v21

    if-eq v0, v6, :cond_1d

    .line 960
    :cond_1a
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    .line 961
    if-gez v4, :cond_1b

    .line 962
    const/4 v4, 0x0

    .line 965
    :cond_1b
    const/high16 v6, 0x40000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 976
    :goto_12
    if-eqz v11, :cond_1f

    .line 977
    move-object/from16 v0, p0

    iget v4, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 985
    :goto_13
    const/high16 v4, 0x40000000

    move/from16 v0, v22

    if-eq v0, v4, :cond_20

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    .line 988
    :goto_14
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 989
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 990
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 991
    if-eqz v4, :cond_21

    move v4, v5

    :goto_15
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 994
    if-eqz v9, :cond_22

    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_22

    const/4 v4, 0x1

    .line 996
    :goto_16
    if-eqz v25, :cond_1c

    .line 997
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 998
    const/4 v10, -0x1

    if-eq v9, v10, :cond_1c

    .line 1000
    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v10, :cond_23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    :goto_17
    and-int/lit8 v3, v3, 0x70

    .line 1002
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 1005
    aget v10, v23, v3

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v23, v3

    .line 1006
    aget v10, v24, v3

    sub-int/2addr v6, v9

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v24, v3

    :cond_1c
    move v3, v7

    move v6, v5

    move v5, v4

    move v7, v13

    move v4, v8

    goto/16 :goto_11

    .line 970
    :cond_1d
    if-lez v4, :cond_1e

    :goto_18
    const/high16 v6, 0x40000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_12

    :cond_1e
    const/4 v4, 0x0

    goto :goto_18

    .line 980
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 981
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    goto/16 :goto_13

    .line 985
    :cond_20
    const/4 v4, 0x0

    goto/16 :goto_14

    :cond_21
    move v4, v6

    .line 991
    goto :goto_15

    .line 994
    :cond_22
    const/4 v4, 0x0

    goto :goto_16

    .line 1000
    :cond_23
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_17

    .line 1013
    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    .line 1018
    const/4 v3, 0x1

    aget v3, v23, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_25

    const/4 v3, 0x0

    aget v3, v23, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_25

    const/4 v3, 0x2

    aget v3, v23, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_25

    const/4 v3, 0x3

    aget v3, v23, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    .line 1022
    :cond_25
    const/4 v3, 0x3

    aget v3, v23, v3

    const/4 v4, 0x0

    aget v4, v23, v4

    const/4 v5, 0x1

    aget v5, v23, v5

    const/4 v6, 0x2

    aget v6, v23, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1025
    const/4 v4, 0x3

    aget v4, v24, v4

    const/4 v5, 0x0

    aget v5, v24, v5

    const/4 v6, 0x1

    aget v6, v24, v6

    const/4 v7, 0x2

    aget v7, v24, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1028
    add-int/2addr v3, v4

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_26
    move v3, v10

    move v4, v13

    .line 1034
    :goto_19
    if-nez v9, :cond_29

    const/high16 v5, 0x40000000

    move/from16 v0, v22

    if-eq v0, v5, :cond_29

    .line 1038
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1041
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1043
    move/from16 v0, p2

    invoke-static {v3, v0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->setMeasuredDimension(II)V

    .line 1045
    if-eqz v12, :cond_27

    .line 1046
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->d(II)V

    .line 1048
    :cond_27
    return-void

    .line 1031
    :cond_28
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v9, v17

    move v4, v5

    goto :goto_19

    :cond_29
    move v3, v4

    goto :goto_1a

    :cond_2a
    move v7, v5

    move v8, v6

    goto/16 :goto_12

    :cond_2b
    move v3, v5

    move v4, v6

    move v7, v13

    move v6, v10

    move v5, v9

    goto/16 :goto_11

    :cond_2c
    move/from16 v5, v18

    goto/16 :goto_d

    :cond_2d
    move v6, v12

    goto/16 :goto_5
.end method

.method c()V
    .locals 18

    .prologue
    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingTop()I

    move-result v8

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingLeft()I

    move-result v1

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getHeight()I

    move-result v2

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int v12, v2, v3

    .line 313
    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int v13, v2, v3

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a()I

    move-result v14

    .line 317
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    and-int/lit8 v2, v2, 0x7

    .line 318
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    and-int/lit8 v11, v3, 0x70

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->isBaselineAligned()Z

    move-result v15

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a:[I

    move-object/from16 v16, v0

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b:[I

    move-object/from16 v17, v0

    .line 325
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 326
    sparse-switch v2, :sswitch_data_0

    .line 339
    :cond_0
    :goto_0
    const/4 v9, 0x0

    move v10, v1

    :goto_1
    if-ge v9, v14, :cond_4

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(I)Landroid/view/View;

    move-result-object v2

    .line 342
    if-nez v2, :cond_1

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(I)I

    move-result v1

    add-int/2addr v1, v10

    move v2, v1

    move v1, v9

    .line 339
    :goto_2
    add-int/lit8 v9, v1, 0x1

    move v10, v2

    goto :goto_1

    .line 330
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    sub-int/2addr v1, v2

    .line 331
    goto :goto_0

    .line 334
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_6

    .line 345
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 346
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 347
    const/4 v3, -0x1

    .line 349
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 352
    if-eqz v15, :cond_5

    iget v1, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 353
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 356
    :goto_3
    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 357
    if-gez v3, :cond_2

    move v3, v11

    .line 361
    :cond_2
    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_1

    move v4, v8

    .line 397
    :cond_3
    :goto_4
    iget v1, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(Landroid/view/View;)I

    move-result v1

    add-int v3, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;IIII)V

    .line 400
    iget v1, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    add-int v3, v10, v1

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v9

    move v2, v3

    goto :goto_2

    .line 363
    :sswitch_2
    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v4, v8, v3

    .line 364
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 365
    const/4 v3, 0x1

    aget v3, v16, v3

    sub-int v1, v3, v1

    add-int/2addr v4, v1

    goto :goto_4

    .line 381
    :sswitch_3
    sub-int v1, v13, v6

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v1, v3

    .line 383
    goto :goto_4

    .line 386
    :sswitch_4
    sub-int v3, v12, v6

    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v3, v4

    .line 387
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 388
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v1, v3, v1

    .line 389
    const/4 v3, 0x2

    aget v3, v17, v3

    sub-int v1, v3, v1

    sub-int/2addr v4, v1

    .line 390
    goto :goto_4

    .line 406
    :cond_4
    return-void

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v9

    move v2, v10

    goto/16 :goto_2

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 361
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->c()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->a(II)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/view/MyLinearLayout;->b(II)V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 67
    iget v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    if-eq v0, p1, :cond_1

    .line 68
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_2

    .line 69
    or-int/lit8 v0, p1, 0x3

    .line 72
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 73
    or-int/lit8 v0, v0, 0x30

    .line 76
    :cond_0
    iput v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    .line 78
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 83
    and-int/lit8 v0, p1, 0x7

    .line 84
    iget v1, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v0, :cond_0

    .line 85
    iget v1, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    .line 87
    :cond_0
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 92
    and-int/lit8 v0, p1, 0x70

    .line 93
    iget v1, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 94
    iget v1, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/ui/view/MyLinearLayout;->f:I

    .line 96
    :cond_0
    return-void
.end method
