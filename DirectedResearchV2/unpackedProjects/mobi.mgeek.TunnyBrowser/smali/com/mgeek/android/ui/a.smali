.class public Lcom/mgeek/android/ui/a;
.super Landroid/widget/FrameLayout;
.source "AidControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/ui/aa;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mgeek/android/ui/ab;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Landroid/graphics/PointF;

.field private e:Landroid/graphics/Point;

.field private f:Lcom/mgeek/android/ui/ab;

.field private g:Z

.field private h:Lcom/mgeek/android/ui/d;

.field private i:Z

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v1, p0, Lcom/mgeek/android/ui/a;->b:Z

    .line 55
    iput-boolean v1, p0, Lcom/mgeek/android/ui/a;->c:Z

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/a;->d:Landroid/graphics/PointF;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/a;->e:Landroid/graphics/Point;

    .line 59
    iput-boolean v1, p0, Lcom/mgeek/android/ui/a;->g:Z

    .line 432
    iput-boolean v1, p0, Lcom/mgeek/android/ui/a;->i:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/a;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4

    .prologue
    .line 347
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 348
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 352
    if-ge v0, v1, :cond_2

    .line 353
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    .line 354
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 360
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    move v1, v0

    .line 365
    :cond_1
    return v1

    .line 356
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    .line 357
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 326
    if-nez p3, :cond_1

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/a;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/a;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 329
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 330
    invoke-virtual {p1, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 343
    :goto_0
    return v0

    .line 333
    :cond_0
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    move v0, v1

    .line 334
    goto :goto_0

    .line 336
    :cond_1
    if-ne p3, v1, :cond_2

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/a;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/a;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Rect;->offset(II)V

    move v0, v1

    .line 341
    goto :goto_0
.end method

.method private a(II)Lcom/mgeek/android/ui/ab;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->a:Ljava/util/List;

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ab;

    .line 144
    invoke-interface {v0}, Lcom/mgeek/android/ui/ab;->b()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/mgeek/android/ui/ab;->c()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v1, Lcom/mgeek/android/ui/y;

    const/4 v2, 0x0

    sget-object v3, Lcom/mgeek/android/ui/ad;->b:Lcom/mgeek/android/ui/ad;

    invoke-direct {v1, p1, v2, v3}, Lcom/mgeek/android/ui/y;-><init>(Landroid/content/Context;ILcom/mgeek/android/ui/ad;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/a;->addView(Landroid/view/View;)V

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mgeek/android/ui/y;->setVisibility(I)V

    .line 133
    sget-object v2, Lcom/mgeek/android/ui/ac;->a:Lcom/mgeek/android/ui/ac;

    invoke-virtual {v1, v2}, Lcom/mgeek/android/ui/y;->a(Lcom/mgeek/android/ui/ac;)V

    .line 134
    invoke-virtual {v1, p0}, Lcom/mgeek/android/ui/y;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v0, p0, Lcom/mgeek/android/ui/a;->a:Ljava/util/List;

    .line 138
    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->updateTheme()V

    .line 139
    return-void
.end method

.method private a(Landroid/view/View;ZLcom/mgeek/android/ui/ac;)V
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 74
    sget-object v1, Lcom/mgeek/android/ui/c;->a:[I

    invoke-virtual {p3}, Lcom/mgeek/android/ui/ac;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 76
    :pswitch_0
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/mgeek/android/ui/a;Lcom/mgeek/android/ui/ab;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/a;->a(Lcom/mgeek/android/ui/ab;Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(Lcom/mgeek/android/ui/ab;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 248
    if-nez p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->a:Ljava/util/List;

    .line 255
    new-instance v3, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/mgeek/android/ui/ab;->c()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ab;

    .line 258
    if-eq p1, v0, :cond_1

    .line 261
    invoke-interface {v0}, Lcom/mgeek/android/ui/ab;->c()Landroid/graphics/Rect;

    move-result-object v0

    .line 262
    invoke-static {v3, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 263
    invoke-direct {p0, v3, v0, v1}, Lcom/mgeek/android/ui/a;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v0

    :goto_2
    move v1, v0

    .line 265
    goto :goto_1

    .line 266
    :cond_2
    invoke-interface {p1}, Lcom/mgeek/android/ui/ab;->c()Landroid/graphics/Rect;

    move-result-object v0

    .line 267
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    invoke-interface {p1, v2}, Lcom/mgeek/android/ui/ab;->setPressed(Z)V

    .line 269
    invoke-interface {p1}, Lcom/mgeek/android/ui/ab;->e()V

    .line 270
    instance-of v0, p1, Lcom/mgeek/android/ui/y;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 271
    check-cast v0, Lcom/mgeek/android/ui/y;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/y;->f()V

    .line 273
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    .line 277
    :goto_3
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/a;->b(Lcom/mgeek/android/ui/ab;)V

    goto :goto_0

    .line 275
    :cond_4
    invoke-direct {p0, p1, v3, v0}, Lcom/mgeek/android/ui/a;->a(Lcom/mgeek/android/ui/ab;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private a(Lcom/mgeek/android/ui/ab;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 314
    invoke-interface {p1}, Lcom/mgeek/android/ui/ab;->g()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    :goto_0
    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lcom/mgeek/android/ui/ab;->a(II)V

    .line 315
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mgeek/android/ui/ab;->setPressed(Z)V

    .line 316
    invoke-interface {p1}, Lcom/mgeek/android/ui/ab;->e()V

    .line 317
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    .line 320
    :cond_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Lcom/mgeek/android/ui/ab;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v9, 0x4000000000000000L

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 282
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 283
    const-string v2, "translationX"

    new-array v3, v8, [F

    aput v5, v3, v6

    int-to-float v4, v0

    aput v4, v3, v7

    invoke-static {p1, v2, v3}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v2

    .line 284
    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v5, v4, v6

    int-to-float v5, v1

    aput v5, v4, v7

    invoke-static {p1, v3, v4}, Lcom/g/a/s;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/g/a/s;

    move-result-object v3

    .line 285
    new-instance v4, Lcom/g/a/d;

    invoke-direct {v4}, Lcom/g/a/d;-><init>()V

    .line 286
    new-array v5, v8, [Lcom/g/a/a;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-virtual {v4, v5}, Lcom/g/a/d;->a([Lcom/g/a/a;)V

    .line 287
    int-to-double v2, v0

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v0, v1

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L

    div-double/2addr v0, v2

    const-wide v2, 0x4072c00000000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 288
    invoke-virtual {v4, v0, v1}, Lcom/g/a/d;->b(J)Lcom/g/a/d;

    .line 289
    new-instance v0, Lcom/mgeek/android/ui/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/mgeek/android/ui/b;-><init>(Lcom/mgeek/android/ui/a;Lcom/mgeek/android/ui/ab;Landroid/graphics/Rect;)V

    invoke-virtual {v4, v0}, Lcom/g/a/d;->a(Lcom/g/a/b;)V

    .line 310
    invoke-virtual {v4}, Lcom/g/a/d;->a()V

    .line 311
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->a:Ljava/util/List;

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ab;

    move-object v1, v0

    .line 69
    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Lcom/mgeek/android/ui/ab;->h()Lcom/mgeek/android/ui/ac;

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/mgeek/android/ui/a;->a(Landroid/view/View;ZLcom/mgeek/android/ui/ac;)V

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4

    .prologue
    .line 369
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 370
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 375
    if-ge v0, v1, :cond_2

    .line 377
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    .line 378
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    .line 385
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    move v1, v0

    .line 390
    :cond_1
    return v1

    .line 381
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, v1

    .line 382
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private b(Lcom/mgeek/android/ui/ab;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/ui/a;->g:Z

    .line 88
    iget-boolean v0, p0, Lcom/mgeek/android/ui/a;->g:Z

    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/a;->a(Z)V

    .line 89
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/d;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/mgeek/android/ui/a;->h:Lcom/mgeek/android/ui/d;

    .line 420
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/ui/a;->g:Z

    .line 93
    iget-boolean v0, p0, Lcom/mgeek/android/ui/a;->g:Z

    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/a;->a(Z)V

    .line 94
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/mgeek/android/ui/a;->c:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->h:Lcom/mgeek/android/ui/d;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->h:Lcom/mgeek/android/ui/d;

    check-cast p1, Lcom/mgeek/android/ui/ab;

    invoke-interface {v0, p1}, Lcom/mgeek/android/ui/d;->onClick(Lcom/mgeek/android/ui/ab;)V

    .line 398
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x41a00000

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 158
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-boolean v3, p0, Lcom/mgeek/android/ui/a;->b:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 163
    packed-switch v1, :pswitch_data_0

    .line 194
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/mgeek/android/ui/a;->b:Z

    goto :goto_0

    .line 165
    :pswitch_0
    iget-boolean v1, p0, Lcom/mgeek/android/ui/a;->c:Z

    if-eqz v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/mgeek/android/ui/a;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 170
    :cond_3
    iput-boolean v2, p0, Lcom/mgeek/android/ui/a;->b:Z

    goto :goto_1

    .line 174
    :pswitch_1
    float-to-int v1, v3

    float-to-int v5, v4

    invoke-direct {p0, v1, v5}, Lcom/mgeek/android/ui/a;->a(II)Lcom/mgeek/android/ui/ab;

    move-result-object v1

    .line 175
    if-nez v1, :cond_4

    .line 176
    iput-boolean v0, p0, Lcom/mgeek/android/ui/a;->c:Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 179
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 180
    iput-object v1, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    .line 181
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->d:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 182
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    invoke-interface {v0}, Lcom/mgeek/android/ui/ab;->d()Landroid/graphics/Point;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/mgeek/android/ui/a;->e:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Point;->set(II)V

    .line 184
    iput-boolean v2, p0, Lcom/mgeek/android/ui/a;->c:Z

    goto :goto_1

    .line 188
    :pswitch_2
    iput-boolean v0, p0, Lcom/mgeek/android/ui/a;->c:Z

    .line 189
    iput-boolean v0, p0, Lcom/mgeek/android/ui/a;->b:Z

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 444
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 446
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mgeek/android/ui/a;->j:Landroid/graphics/Rect;

    .line 448
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/mgeek/android/ui/a;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, p2, :cond_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 456
    iget-boolean v0, p0, Lcom/mgeek/android/ui/a;->i:Z

    if-eqz v0, :cond_3

    .line 458
    iput-boolean v1, p0, Lcom/mgeek/android/ui/a;->i:Z

    goto :goto_0

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->a:Ljava/util/List;

    .line 462
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ab;

    .line 463
    invoke-interface {v0}, Lcom/mgeek/android/ui/ab;->h()Lcom/mgeek/android/ui/ac;

    move-result-object v2

    sget-object v3, Lcom/mgeek/android/ui/ac;->c:Lcom/mgeek/android/ui/ac;

    if-ne v2, v3, :cond_4

    .line 466
    invoke-interface {v0, p1, p2}, Lcom/mgeek/android/ui/ab;->b(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 199
    iget-boolean v1, p0, Lcom/mgeek/android/ui/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    if-nez v1, :cond_1

    .line 200
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 205
    packed-switch v1, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 239
    goto :goto_0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->d:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    invoke-interface {v1}, Lcom/mgeek/android/ui/ab;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    invoke-interface {v1, v2}, Lcom/mgeek/android/ui/ab;->setPressed(Z)V

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    invoke-interface {v1}, Lcom/mgeek/android/ui/ab;->g()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/mgeek/android/ui/a;->d:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 214
    iget-object v3, p0, Lcom/mgeek/android/ui/a;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    float-to-int v4, v3

    .line 215
    iget-object v3, p0, Lcom/mgeek/android/ui/a;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    .line 216
    iget-object v1, p0, Lcom/mgeek/android/ui/a;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v4

    .line 217
    iget-object v4, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    invoke-interface {v4}, Lcom/mgeek/android/ui/ab;->c()Landroid/graphics/Rect;

    move-result-object v4

    .line 218
    if-gez v3, :cond_4

    move v3, v0

    .line 223
    :cond_3
    :goto_2
    if-gez v1, :cond_5

    .line 228
    :goto_3
    iget-object v1, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    invoke-interface {v1, v3, v0}, Lcom/mgeek/android/ui/ab;->a(II)V

    goto :goto_1

    .line 220
    :cond_4
    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    goto :goto_2

    .line 225
    :cond_5
    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getHeight()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v0, v5

    if-le v1, v0, :cond_6

    .line 226
    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getHeight()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_3

    .line 232
    :pswitch_2
    iput-boolean v0, p0, Lcom/mgeek/android/ui/a;->c:Z

    .line 233
    iput-boolean v0, p0, Lcom/mgeek/android/ui/a;->b:Z

    .line 234
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->f:Lcom/mgeek/android/ui/ab;

    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/a;->a(Lcom/mgeek/android/ui/ab;)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateTheme()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mgeek/android/ui/a;->a:Ljava/util/List;

    .line 405
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ab;

    .line 406
    instance-of v1, v0, Lcom/dolphin/browser/ui/aa;

    if-eqz v1, :cond_1

    .line 407
    check-cast v0, Lcom/dolphin/browser/ui/aa;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/aa;->updateTheme()V

    goto :goto_0

    .line 408
    :cond_1
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 409
    check-cast v1, Landroid/widget/ImageView;

    .line 410
    invoke-interface {v0}, Lcom/mgeek/android/ui/ab;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/mgeek/android/ui/y;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    invoke-virtual {p0}, Lcom/mgeek/android/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0094

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 412
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0

    .line 415
    :cond_2
    return-void
.end method
