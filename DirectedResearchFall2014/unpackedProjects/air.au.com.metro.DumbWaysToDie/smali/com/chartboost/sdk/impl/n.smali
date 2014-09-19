.class public Lcom/chartboost/sdk/impl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/n$a;,
        Lcom/chartboost/sdk/impl/n$b;
    }
.end annotation


# static fields
.field private static synthetic a:[I

.field private static synthetic b:[I


# direct methods
.method public static a(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/chartboost/sdk/impl/n;->a(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;)V

    .line 40
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/n;->b(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;Ljava/lang/Boolean;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/n;->c(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/chartboost/sdk/impl/n;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->values()[Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/chartboost/sdk/impl/n;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static b(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/chartboost/sdk/impl/n;->c(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;Ljava/lang/Boolean;)V

    .line 53
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;Ljava/lang/Boolean;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/s;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->c()Landroid/view/View;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/chartboost/sdk/impl/n$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/n$1;-><init>(Landroid/view/View;Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;Ljava/lang/Boolean;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/chartboost/sdk/impl/n;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/n$b;->values()[Lcom/chartboost/sdk/impl/n$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/n$b;->c:Lcom/chartboost/sdk/impl/n$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/n$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/impl/n$b;->a:Lcom/chartboost/sdk/impl/n$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/n$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/chartboost/sdk/impl/n$b;->b:Lcom/chartboost/sdk/impl/n$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/n$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/impl/n$b;->d:Lcom/chartboost/sdk/impl/n$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/n$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/chartboost/sdk/impl/n$b;->e:Lcom/chartboost/sdk/impl/n$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/n$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/chartboost/sdk/impl/n$b;->f:Lcom/chartboost/sdk/impl/n$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/n$b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/chartboost/sdk/impl/n;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private static c(Lcom/chartboost/sdk/impl/n$b;Lcom/chartboost/sdk/impl/a;Lcom/chartboost/sdk/impl/n$a;Ljava/lang/Boolean;)V
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const-wide/16 v14, 0x258

    .line 85
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 86
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 89
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/s;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->h:Lcom/chartboost/sdk/impl/s;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/s;->c()Landroid/view/View;

    move-result-object v17

    .line 95
    if-eqz v17, :cond_0

    .line 101
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v12, v5

    .line 102
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v13, v5

    .line 103
    const/high16 v7, 0x4270

    .line 104
    const v18, 0x3ecccccd

    .line 105
    const/high16 v5, 0x3f80

    sub-float v5, v5, v18

    const/high16 v6, 0x4000

    div-float v19, v5, v6

    .line 112
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v20

    .line 114
    invoke-static {}, Lcom/chartboost/sdk/impl/n;->b()[I

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/impl/n$b;->ordinal()I

    move-result p0

    aget p0, v5, p0

    packed-switch p0, :pswitch_data_0

    .line 313
    :goto_1
    new-instance p0, Lcom/chartboost/sdk/impl/n$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/n$2;-><init>(Lcom/chartboost/sdk/impl/n$a;Lcom/chartboost/sdk/impl/a;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 326
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-static {}, Lcom/chartboost/sdk/impl/n;->a()[I

    move-result-object p0

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v5

    aget p0, p0, v5

    packed-switch p0, :pswitch_data_1

    .line 131
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance v5, Lcom/chartboost/sdk/impl/p;

    neg-float v6, v7

    const/4 v7, 0x0

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    .line 135
    :goto_2
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 137
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v5

    move/from16 v3, v18

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 141
    :goto_3
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 142
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 143
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    invoke-static {}, Lcom/chartboost/sdk/impl/n;->a()[I

    move-result-object p0

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v5

    aget p0, p0, v5

    packed-switch p0, :pswitch_data_2

    .line 160
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    mul-float p3, v12, v19

    const/4 v5, 0x0

    neg-float v6, v13

    mul-float v6, v6, v18

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 164
    :goto_4
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 165
    const/16 p3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 166
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 118
    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance v5, Lcom/chartboost/sdk/impl/p;

    neg-float v6, v7

    const/4 v7, 0x0

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    goto/16 :goto_2

    .line 119
    :cond_2
    new-instance v5, Lcom/chartboost/sdk/impl/p;

    const/4 v6, 0x0

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    .line 120
    goto/16 :goto_2

    .line 122
    :pswitch_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance v6, Lcom/chartboost/sdk/impl/p;

    const/4 v8, 0x0

    const/high16 p0, 0x4000

    div-float v9, v12, p0

    const/high16 p0, 0x4000

    div-float v10, v13, p0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v6

    goto/16 :goto_2

    .line 123
    :cond_3
    new-instance v5, Lcom/chartboost/sdk/impl/p;

    const/4 v6, 0x0

    neg-float v7, v7

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    .line 124
    goto/16 :goto_2

    .line 126
    :pswitch_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance v6, Lcom/chartboost/sdk/impl/p;

    const/4 v8, 0x0

    const/high16 p0, 0x4000

    div-float v9, v12, p0

    const/high16 p0, 0x4000

    div-float v10, v13, p0

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v6

    goto/16 :goto_2

    .line 127
    :cond_4
    new-instance v5, Lcom/chartboost/sdk/impl/p;

    const/4 v6, 0x0

    neg-float v7, v7

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    .line 128
    goto/16 :goto_2

    .line 132
    :cond_5
    new-instance v5, Lcom/chartboost/sdk/impl/p;

    const/4 v6, 0x0

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    goto/16 :goto_2

    .line 140
    :cond_6
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v18

    move v3, v6

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto/16 :goto_3

    .line 147
    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    mul-float v5, v13, v19

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, p3

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 148
    :cond_7
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    neg-float v5, v12

    mul-float v5, v5, v18

    const/4 v6, 0x0

    mul-float v7, v13, v19

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 151
    :pswitch_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    mul-float p3, v12, v19

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v13

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 152
    :cond_8
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    mul-float v5, v12, v19

    const/4 v6, 0x0

    neg-float v7, v13

    mul-float v7, v7, v18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 155
    :pswitch_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    move v0, v12

    neg-float v0, v0

    move/from16 p3, v0

    mul-float p3, p3, v18

    const/4 v5, 0x0

    mul-float v6, v13, v19

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 156
    :cond_9
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    const/4 v5, 0x0

    mul-float v6, v13, v19

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v12

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 161
    :cond_a
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    mul-float v5, v12, v19

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_4

    .line 171
    :pswitch_7
    invoke-static {}, Lcom/chartboost/sdk/impl/n;->a()[I

    move-result-object p0

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v5

    aget p0, p0, v5

    packed-switch p0, :pswitch_data_3

    .line 186
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e

    new-instance v5, Lcom/chartboost/sdk/impl/p;

    neg-float v6, v7

    const/4 v7, 0x0

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    .line 190
    :goto_5
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 191
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_f

    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v5

    move/from16 v3, v18

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 196
    :goto_6
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 197
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 198
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 200
    invoke-static {}, Lcom/chartboost/sdk/impl/n;->a()[I

    move-result-object p0

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v5

    aget p0, p0, v5

    packed-switch p0, :pswitch_data_4

    .line 215
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    move v0, v12

    neg-float v0, v0

    move/from16 p3, v0

    mul-float p3, p3, v18

    const/4 v5, 0x0

    mul-float v6, v13, v19

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 219
    :goto_7
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 220
    const/16 p3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 221
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 173
    :pswitch_8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance v6, Lcom/chartboost/sdk/impl/p;

    const/4 v8, 0x0

    const/high16 p0, 0x4000

    div-float v9, v12, p0

    const/high16 p0, 0x4000

    div-float v10, v13, p0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v6

    goto/16 :goto_5

    .line 174
    :cond_b
    new-instance v5, Lcom/chartboost/sdk/impl/p;

    const/4 v6, 0x0

    neg-float v7, v7

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    .line 175
    goto/16 :goto_5

    .line 177
    :pswitch_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance v6, Lcom/chartboost/sdk/impl/p;

    const/4 v8, 0x0

    const/high16 p0, 0x4000

    div-float v9, v12, p0

    const/high16 p0, 0x4000

    div-float v10, v13, p0

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v6

    goto/16 :goto_5

    .line 178
    :cond_c
    new-instance v5, Lcom/chartboost/sdk/impl/p;

    const/4 v6, 0x0

    neg-float v7, v7

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    .line 179
    goto/16 :goto_5

    .line 181
    :pswitch_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance v5, Lcom/chartboost/sdk/impl/p;

    neg-float v6, v7

    const/4 v7, 0x0

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    goto/16 :goto_5

    .line 182
    :cond_d
    new-instance v5, Lcom/chartboost/sdk/impl/p;

    const/4 v6, 0x0

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    .line 183
    goto/16 :goto_5

    .line 187
    :cond_e
    new-instance v5, Lcom/chartboost/sdk/impl/p;

    const/4 v6, 0x0

    const/high16 p0, 0x4000

    div-float v8, v12, p0

    const/high16 p0, 0x4000

    div-float v9, v13, p0

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/chartboost/sdk/impl/p;-><init>(FFFFZ)V

    move-object/from16 p0, v5

    goto/16 :goto_5

    .line 195
    :cond_f
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v18

    move v3, v6

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    goto/16 :goto_6

    .line 202
    :pswitch_b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    mul-float p3, v12, v19

    const/4 v5, 0x0

    neg-float v6, v13

    mul-float v6, v6, v18

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 203
    :cond_10
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    mul-float v5, v12, v19

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 206
    :pswitch_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_11

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    mul-float v5, v13, v19

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, p3

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 207
    :cond_11
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    neg-float v5, v12

    mul-float v5, v5, v18

    const/4 v6, 0x0

    mul-float v7, v13, v19

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 210
    :pswitch_d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_12

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    mul-float p3, v12, v19

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v13

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 211
    :cond_12
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    mul-float v5, v12, v19

    const/4 v6, 0x0

    neg-float v7, v13

    mul-float v7, v7, v18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 216
    :cond_13
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/16 p3, 0x0

    const/4 v5, 0x0

    mul-float v6, v13, v19

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v12

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_7

    .line 226
    :pswitch_e
    const/16 p0, 0x0

    const/4 v5, 0x0

    .line 227
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 228
    invoke-static {}, Lcom/chartboost/sdk/impl/n;->a()[I

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_5

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v7

    .line 246
    :goto_8
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    move-object v0, v7

    move v1, v6

    move v2, v5

    move/from16 v3, p3

    move/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 247
    invoke-virtual {v7, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 248
    const/16 p0, 0x1

    move-object v0, v7

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 249
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 230
    :pswitch_f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14

    move v6, v13

    .line 231
    :goto_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_15

    const/16 p3, 0x0

    :goto_a
    move/from16 v21, p3

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v21

    .line 232
    goto :goto_8

    .line 230
    :cond_14
    const/4 v6, 0x0

    goto :goto_9

    :cond_15
    move/from16 p3, v13

    .line 231
    goto :goto_a

    .line 234
    :pswitch_10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_16

    move v0, v12

    neg-float v0, v0

    move/from16 p0, v0

    .line 235
    :goto_b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_17

    const/16 p3, 0x0

    :goto_c
    move/from16 v5, p3

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v7

    .line 236
    goto :goto_8

    .line 234
    :cond_16
    const/16 p0, 0x0

    goto :goto_b

    .line 235
    :cond_17
    move v0, v12

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_c

    .line 238
    :pswitch_11
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_18

    neg-float v6, v13

    .line 239
    :goto_d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_19

    const/16 p3, 0x0

    :goto_e
    move/from16 v21, p3

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v21

    .line 240
    goto :goto_8

    .line 238
    :cond_18
    const/4 v6, 0x0

    goto :goto_d

    .line 239
    :cond_19
    move v0, v13

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_e

    .line 242
    :pswitch_12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1a

    move/from16 p0, v12

    .line 243
    :goto_f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1b

    const/16 p3, 0x0

    :goto_10
    move/from16 v5, p3

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v7

    goto/16 :goto_8

    .line 242
    :cond_1a
    const/16 p0, 0x0

    goto :goto_f

    :cond_1b
    move/from16 p3, v12

    .line 243
    goto :goto_10

    .line 254
    :pswitch_13
    const/16 p0, 0x0

    const/4 v5, 0x0

    .line 255
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 256
    invoke-static {}, Lcom/chartboost/sdk/impl/n;->a()[I

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_6

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v7

    .line 274
    :goto_11
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    move-object v0, v7

    move v1, v6

    move v2, v5

    move/from16 v3, p3

    move/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 275
    invoke-virtual {v7, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 276
    const/16 p0, 0x1

    move-object v0, v7

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 277
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 258
    :pswitch_14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1c

    neg-float v6, v13

    .line 259
    :goto_12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1d

    const/16 p3, 0x0

    :goto_13
    move/from16 v21, p3

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v21

    .line 260
    goto :goto_11

    .line 258
    :cond_1c
    const/4 v6, 0x0

    goto :goto_12

    .line 259
    :cond_1d
    move v0, v13

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_13

    .line 262
    :pswitch_15
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1e

    move/from16 p0, v12

    .line 263
    :goto_14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1f

    const/16 p3, 0x0

    :goto_15
    move/from16 v5, p3

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v7

    .line 264
    goto :goto_11

    .line 262
    :cond_1e
    const/16 p0, 0x0

    goto :goto_14

    :cond_1f
    move/from16 p3, v12

    .line 263
    goto :goto_15

    .line 266
    :pswitch_16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_20

    move v6, v13

    .line 267
    :goto_16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_21

    const/16 p3, 0x0

    :goto_17
    move/from16 v21, p3

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v21

    .line 268
    goto :goto_11

    .line 266
    :cond_20
    const/4 v6, 0x0

    goto :goto_16

    :cond_21
    move/from16 p3, v13

    .line 267
    goto :goto_17

    .line 270
    :pswitch_17
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_22

    move v0, v12

    neg-float v0, v0

    move/from16 p0, v0

    .line 271
    :goto_18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_23

    const/16 p3, 0x0

    :goto_19
    move/from16 v5, p3

    move/from16 p3, v6

    move/from16 v6, p0

    move/from16 p0, v7

    goto/16 :goto_11

    .line 270
    :cond_22
    const/16 p0, 0x0

    goto :goto_18

    .line 271
    :cond_23
    move v0, v12

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_19

    .line 281
    :pswitch_18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_24

    .line 282
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const v6, 0x3f19999a

    const v7, 0x3f8ccccd

    const v8, 0x3f19999a

    const v9, 0x3f8ccccd

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 283
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p0, v0

    const p3, 0x3f19999a

    mul-float p0, p0, p3

    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 285
    const/16 p0, 0x1

    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 286
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 288
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const v7, 0x3f51745c

    const/high16 v8, 0x3f80

    const v9, 0x3f51745c

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 289
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p0, v0

    const p3, 0x3e4ccccc

    mul-float p0, p0, p3

    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 291
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p0, v0

    const p3, 0x3f19999a

    mul-float p0, p0, p3

    .line 290
    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 292
    const/16 p0, 0x1

    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 293
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 295
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const v7, 0x3f8e38e4

    const/high16 v8, 0x3f80

    const v9, 0x3f8e38e4

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 296
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p0, v0

    const p3, 0x3dccccc8

    mul-float p0, p0, p3

    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 297
    move-wide v0, v14

    long-to-float v0, v0

    move/from16 p0, v0

    const p3, 0x3f4ccccd

    mul-float p0, p0, p3

    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 298
    const/16 p0, 0x1

    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 299
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 302
    :cond_24
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 303
    invoke-virtual {v5, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 304
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 305
    const/16 p0, 0x1

    move-object v0, v5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 306
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_18
        :pswitch_0
        :pswitch_e
        :pswitch_13
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 145
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 171
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 200
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 228
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 256
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
