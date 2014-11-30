.class public Lcom/dolphin/browser/ui/launcher/g;
.super Lcom/dolphin/browser/launcher/bk;
.source "Launcher.java"

# interfaces
.implements Lcom/dolphin/browser/ui/OrientationChangedListener;
.implements Lmobi/mgeek/TunnyBrowser/ft;


# instance fields
.field private a:Lcom/dolphin/browser/promoted/PromotionView;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Lcom/dolphin/browser/f/e/i;

.field private n:Lmobi/mgeek/TunnyBrowser/hh;

.field private o:Lcom/dolphin/browser/ui/launcher/MyMiddlePage;

.field private p:Ljava/util/Observer;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/launcher/bw;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Observer;

.field private s:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/bk;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v0, Lcom/dolphin/browser/ui/launcher/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/i;-><init>(Lcom/dolphin/browser/ui/launcher/g;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->p:Ljava/util/Observer;

    .line 542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->q:Ljava/util/HashMap;

    .line 543
    new-instance v0, Lcom/dolphin/browser/ui/launcher/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/k;-><init>(Lcom/dolphin/browser/ui/launcher/g;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->r:Ljava/util/Observer;

    .line 559
    new-instance v0, Lcom/dolphin/browser/ui/launcher/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/l;-><init>(Lcom/dolphin/browser/ui/launcher/g;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->s:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 171
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->b(Landroid/content/Context;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->c(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method private a(Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/be;
    .locals 2

    .prologue
    .line 457
    new-instance v0, Lcom/dolphin/browser/launcher/be;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/be;-><init>()V

    .line 458
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->a(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/launcher/a/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 462
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 463
    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/g;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/dolphin/browser/vg/a/a;->b()I

    .line 266
    return-void
.end method

.method private a(ILcom/dolphin/browser/promoted/t;)V
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(ILcom/dolphin/browser/promoted/t;Z)V

    .line 883
    return-void
.end method

.method private a(ILcom/dolphin/browser/promoted/t;Z)V
    .locals 7

    .prologue
    .line 874
    invoke-interface {p2}, Lcom/dolphin/browser/promoted/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    new-instance v0, Lcom/dolphin/browser/promoted/m;

    invoke-interface {p2}, Lcom/dolphin/browser/promoted/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/dolphin/browser/promoted/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/promoted/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/promoted/t;Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/g;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-virtual {v1, v0, p3}, Lcom/dolphin/browser/promoted/PromotionView;->a(Lcom/dolphin/browser/promoted/m;Z)Z

    .line 879
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 310
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03da

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 311
    return-void
.end method

.method private a(Lcom/dolphin/browser/launcher/be;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 640
    new-instance v0, Lcom/dolphin/browser/ui/launcher/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/ui/launcher/n;-><init>(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/be;Ljava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 656
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/d;->a()Lcom/dolphin/browser/ui/launcher/a/d;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/d;->g()Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v0

    .line 413
    if-nez v0, :cond_1

    .line 414
    const/4 v2, 0x0

    .line 452
    :cond_0
    return v2

    .line 416
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/c;->a()Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/4 v0, 0x1

    move v2, v0

    .line 418
    :goto_0
    const/16 v5, -0x64

    .line 419
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/a;

    .line 420
    const/4 v1, 0x0

    .line 421
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/a;->a()Ljava/util/List;

    move-result-object v3

    .line 422
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 423
    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/a/b;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 424
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/be;

    move-result-object v8

    .line 425
    int-to-long v9, v5

    invoke-virtual {v8, v9, v10}, Lcom/dolphin/browser/launcher/be;->a(J)V

    .line 426
    if-eqz v2, :cond_3

    .line 427
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/a;->b()I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/dolphin/browser/launcher/be;->e(I)V

    .line 429
    :cond_3
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v8, v3}, Lcom/dolphin/browser/launcher/be;->d(I)V

    .line 431
    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/a/b;->e()Ljava/util/List;

    move-result-object v3

    .line 432
    const/4 v1, 0x0

    .line 433
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v1

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 434
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/launcher/g;->b(Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v10

    .line 435
    invoke-virtual {v8}, Lcom/dolphin/browser/launcher/be;->g()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/dolphin/browser/launcher/cl;->a(J)V

    .line 436
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v10, v3}, Lcom/dolphin/browser/launcher/cl;->d(I)V

    .line 437
    invoke-virtual {v8, v10}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;)V

    move v3, v1

    .line 438
    goto :goto_2

    .line 417
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 439
    :cond_5
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    :goto_3
    move v3, v1

    .line 449
    goto :goto_1

    .line 442
    :cond_6
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/launcher/g;->b(Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v4

    .line 443
    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Lcom/dolphin/browser/launcher/cl;->a(J)V

    .line 444
    if-eqz v2, :cond_7

    .line 445
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/a;->b()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/dolphin/browser/launcher/cl;->e(I)V

    .line 447
    :cond_7
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/dolphin/browser/launcher/cl;->d(I)V

    .line 448
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private b(Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/cl;
    .locals 4

    .prologue
    .line 468
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/launcher/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 471
    new-instance v2, Lcom/dolphin/browser/launcher/cl;

    invoke-direct {v2}, Lcom/dolphin/browser/launcher/cl;-><init>()V

    .line 472
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/launcher/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/launcher/cl;->c(Ljava/lang/String;)V

    .line 474
    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 476
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/graphics/Bitmap;)V

    .line 478
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 479
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/launcher/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 482
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 483
    return-object v2
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 826
    const-string v0, "http://webapps.dolphin.com/int/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "l"

    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/hf;->a()Lmobi/mgeek/TunnyBrowser/hf;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hf;->b()Lmobi/mgeek/TunnyBrowser/hh;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    .line 178
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->o:Lcom/dolphin/browser/ui/launcher/MyMiddlePage;

    .line 179
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/g;->a()V

    .line 180
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08025b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/PromotionView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->a:Lcom/dolphin/browser/promoted/PromotionView;

    .line 182
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/g;->r:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->addObserver(Ljava/util/Observer;)V

    .line 183
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->E()V

    .line 184
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->o:Lcom/dolphin/browser/ui/launcher/MyMiddlePage;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->a(Landroid/graphics/Canvas;)V

    .line 998
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 371
    new-instance v0, Lcom/dolphin/browser/ui/launcher/j;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/j;-><init>(Lcom/dolphin/browser/ui/launcher/g;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 393
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 394
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 395
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->q()J

    move-result-wide v4

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 396
    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->n()Ljava/lang/String;

    move-result-object v4

    const-string v5, "most_visited_folder"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    .line 401
    :cond_0
    invoke-virtual {v0, v3}, Lcom/dolphin/browser/launcher/bi;->d(I)V

    .line 393
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 404
    :cond_2
    if-eq v2, v3, :cond_3

    .line 405
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 407
    :cond_3
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->n()Lcom/dolphin/browser/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->h()Lcom/dolphin/browser/launcher/CellLayout;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b0172

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/launcher/CellLayout;->setPadding(IIII)V

    .line 1025
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->o:Lcom/dolphin/browser/ui/launcher/MyMiddlePage;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-eq v0, v1, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->o:Lcom/dolphin/browser/ui/launcher/MyMiddlePage;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1014
    invoke-static {p1}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1016
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/g;->o:Lcom/dolphin/browser/ui/launcher/MyMiddlePage;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/launcher/MyMiddlePage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1014
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1
.end method

.method private e(Lcom/dolphin/browser/launcher/cl;)V
    .locals 5

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->d(Lcom/dolphin/browser/launcher/cl;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->e()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    const-string v1, "dolphin home"

    const-string v2, "openicon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    .line 334
    const-string v1, "Visit"

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "speed_dial"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void

    .line 330
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/g;->j:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->a()V

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/g;->i:Z

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    .line 194
    :cond_1
    return-void
.end method

.method public B()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->b()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/v;->b()V

    .line 202
    return-void
.end method

.method public C()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/v;->b()V

    .line 207
    return-void
.end method

.method public D()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/PromotionView;->c()V

    .line 271
    return-void
.end method

.method public E()V
    .locals 1

    .prologue
    .line 283
    invoke-static {p0}, Lcom/dolphin/browser/util/at;->a(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->a:Lcom/dolphin/browser/promoted/PromotionView;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/PromotionView;->b()V

    .line 288
    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/launcher/bk;->k()V

    .line 289
    return-void
.end method

.method public F()V
    .locals 2

    .prologue
    .line 840
    new-instance v0, Lcom/dolphin/browser/promoted/u;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/promoted/u;-><init>(Landroid/content/Context;)V

    .line 841
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(ILcom/dolphin/browser/promoted/t;)V

    .line 842
    return-void
.end method

.method public G()V
    .locals 2

    .prologue
    .line 852
    new-instance v0, Lcom/dolphin/browser/promoted/d;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/promoted/d;-><init>(Landroid/content/Context;)V

    .line 853
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(ILcom/dolphin/browser/promoted/t;)V

    .line 854
    return-void
.end method

.method public H()V
    .locals 2

    .prologue
    .line 857
    new-instance v0, Lcom/dolphin/browser/promoted/b;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/promoted/b;-><init>(Landroid/content/Context;)V

    .line 858
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(ILcom/dolphin/browser/promoted/t;)V

    .line 859
    return-void
.end method

.method public I()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 914
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->t()Ljava/util/List;

    move-result-object v0

    .line 915
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 916
    instance-of v3, v0, Lcom/dolphin/browser/launcher/cl;

    if-eqz v3, :cond_1

    .line 917
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 918
    :cond_1
    instance-of v3, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v3, :cond_0

    .line 919
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->c()Ljava/util/List;

    move-result-object v0

    .line 920
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 921
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 925
    :cond_2
    return-object v1
.end method

.method public J()Lcom/dolphin/browser/promoted/PromotionView;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->a:Lcom/dolphin/browser/promoted/PromotionView;

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 357
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->b(Ljava/util/List;)V

    .line 365
    :cond_0
    :goto_0
    return-object p1

    .line 360
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/ui/launcher/g;->a(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Lcom/dolphin/browser/launcher/bw;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 528
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    const-string v0, "Launcher"

    const-string v1, "requestIcon, type=%d, url=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 532
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 533
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/f/a/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_2
    if-ne v5, p1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->getInstance(Landroid/content/Context;)Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/g;->s:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    invoke-virtual {v0, p2, v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->loadImage(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)Z

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 979
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getChildCount()I

    move-result v2

    move v0, v1

    .line 980
    :goto_0
    if-ge v0, v2, :cond_2

    .line 981
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 982
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 983
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 984
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 985
    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 986
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 987
    iget-object v4, p0, Lcom/dolphin/browser/ui/launcher/g;->g:Lcom/dolphin/browser/launcher/DropTargetBar;

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/dolphin/browser/ui/launcher/g;->h:Lcom/dolphin/browser/launcher/DropTargetBar;

    if-ne v3, v4, :cond_1

    .line 992
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    :cond_1
    iget-object v4, p0, Lcom/dolphin/browser/ui/launcher/g;->o:Lcom/dolphin/browser/ui/launcher/MyMiddlePage;

    if-ne v3, v4, :cond_0

    .line 990
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->b(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 994
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/f/e/i;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/g;->m:Lcom/dolphin/browser/f/e/i;

    .line 836
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V
    .locals 1

    .prologue
    .line 506
    const-string v0, "Fps Of Open Folder Animation"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 507
    const-string v0, "Open"

    invoke-direct {p0, p2, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/be;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/ShortcutIcon;Lcom/dolphin/browser/launcher/cl;)V
    .locals 5

    .prologue
    .line 316
    invoke-virtual {p2}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v1

    const-string v2, "speed_dial"

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/search/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click ShortCut To Load Url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/dolphin/browser/util/cx;->b:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZLjava/lang/Object;)Lcom/dolphin/browser/util/cw;

    .line 320
    check-cast p1, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->d()V

    .line 321
    invoke-direct {p0, p2}, Lcom/dolphin/browser/ui/launcher/g;->e(Lcom/dolphin/browser/launcher/cl;)V

    .line 322
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/dk;->h()V

    .line 323
    invoke-virtual {p0, v0, p2}, Lcom/dolphin/browser/ui/launcher/g;->a(Ljava/lang/String;Lcom/dolphin/browser/launcher/cl;)V

    .line 324
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->o()V

    .line 325
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/af;Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 742
    invoke-super {p0, p1, p2, p3}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/af;Ljava/lang/Object;I)V

    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->c(Z)V

    .line 744
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/PromotionView;->e()V

    .line 745
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/g;->t:Z

    .line 747
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->p()V

    .line 749
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/be;)V
    .locals 2

    .prologue
    .line 592
    if-nez p2, :cond_0

    .line 593
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 595
    :cond_0
    if-eqz p1, :cond_1

    .line 596
    const-string v0, "Remove"

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/launcher/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/s/q;Z)V
    .locals 2

    .prologue
    .line 868
    new-instance v0, Lcom/dolphin/browser/s/a;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dolphin/browser/s/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/s/q;)V

    .line 869
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0, p2}, Lcom/dolphin/browser/ui/launcher/g;->a(ILcom/dolphin/browser/promoted/t;Z)V

    .line 870
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->m:Lcom/dolphin/browser/f/e/i;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->m:Lcom/dolphin/browser/f/e/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/f/e/i;->a(Ljava/lang/String;)V

    .line 769
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Lcom/dolphin/browser/launcher/cl;)V
    .locals 3

    .prologue
    .line 780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    const-string v0, "dolphin://reader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    const-string p1, "http://reader.dolphin-browser.com/"

    .line 821
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_3
    const-string v0, "dolphin://news"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    const-string p1, "http://news.dolphin-browser.com/"

    goto :goto_1

    .line 788
    :cond_4
    const-string v0, "dolphin://hostnews"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 789
    const-string p1, ""

    goto :goto_1

    .line 790
    :cond_5
    const-string v0, "dolphin://downloads"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 791
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionDownload2()Z

    goto :goto_0

    .line 793
    :cond_6
    const-string v0, "dolphin://bookmarks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 794
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionShowLeftBar()Z

    goto :goto_0

    .line 796
    :cond_7
    const-string v0, "dolphin://datas"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 797
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 798
    const-string v1, "dolphin:pref_res"

    const-string v2, "clear_data_preference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 801
    :cond_8
    const-string v0, "dolphin://cloud"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 802
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->I()V

    goto :goto_0

    .line 804
    :cond_9
    const-string v0, "dolphin://security"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 805
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 806
    const-string v1, "dolphin:pref_res"

    const-string v2, "security_option_preference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 809
    :cond_a
    const-string v0, "dolphin://qrcode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const-string v0, "dolphin://addbookmarks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 813
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/g;->b()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 814
    :cond_b
    const-string v0, "dolphin://settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 815
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSettings2()Z

    goto/16 :goto_0

    .line 817
    :cond_c
    const-string v0, "dolphin://theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionSwitchTheme()Z

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 602
    new-instance v0, Lcom/dolphin/browser/ui/launcher/m;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/ui/launcher/m;-><init>(Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 629
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 906
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v0

    .line 907
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 908
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/dolphin/browser/launcher/Folder;Lcom/dolphin/browser/launcher/be;)V
    .locals 1

    .prologue
    .line 513
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/launcher/q;->b(Lcom/dolphin/browser/launcher/be;)V

    .line 514
    return-void
.end method

.method public b(Lcom/dolphin/browser/launcher/be;)V
    .locals 1

    .prologue
    .line 634
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 635
    const-string v0, "Remove"

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/be;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public b(Lcom/dolphin/browser/update/model/b;Lcom/dolphin/browser/DolphinService/m;)V
    .locals 2

    .prologue
    .line 862
    new-instance v0, Lcom/dolphin/browser/DolphinService/k;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/dolphin/browser/DolphinService/k;-><init>(Landroid/content/Context;Lcom/dolphin/browser/DolphinService/m;)V

    .line 863
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/k;->a(Lcom/dolphin/browser/update/model/b;)V

    .line 864
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(ILcom/dolphin/browser/promoted/t;)V

    .line 865
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/launcher/g;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 930
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v0

    .line 931
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 932
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    new-instance v0, Lcom/dolphin/browser/ui/launcher/o;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/ui/launcher/o;-><init>(Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bv;)Ljava/util/List;

    move-result-object v0

    .line 955
    return-object v0
.end method

.method public c(Lcom/dolphin/browser/launcher/bi;)V
    .locals 1

    .prologue
    .line 661
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/launcher/q;->c(Lcom/dolphin/browser/launcher/bi;)V

    .line 662
    return-void
.end method

.method public c(Lcom/dolphin/browser/launcher/cl;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 667
    const-string v0, "dolphin home"

    const-string v1, "sendtolauncher"

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 672
    const-string v1, "dolphin://reader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    const-string v2, "http://reader.dolphin-browser.com/"

    .line 680
    :cond_0
    :goto_0
    const-string v1, "dolphin://addbookmarks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dolphin://webapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00dc

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 709
    :goto_1
    return-void

    .line 674
    :cond_2
    const-string v1, "dolphin://news"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    const-string v2, "http://news.dolphin-browser.com/"

    goto :goto_0

    .line 676
    :cond_3
    const-string v1, "dolphin://sitenav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    const-string v2, "http://nav.dolphin-browser.com/"

    goto :goto_0

    .line 685
    :cond_4
    if-nez v2, :cond_6

    .line 686
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    const-class v3, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 694
    :goto_2
    const/4 v3, 0x0

    .line 696
    :try_start_0
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/ui/launcher/x;->b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 700
    :goto_3
    if-nez v3, :cond_5

    .line 701
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020178

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 705
    :cond_5
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    goto :goto_1

    .line 689
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 690
    const-class v3, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 691
    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const-string v3, "new_tab"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 697
    :catch_0
    move-exception v1

    .line 698
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->m:Lcom/dolphin/browser/f/e/i;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->m:Lcom/dolphin/browser/f/e/i;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/f/e/i;->a(Z)V

    .line 776
    :cond_0
    return-void
.end method

.method d(Lcom/dolphin/browser/launcher/cl;)Lcom/dolphin/browser/launcher/be;
    .locals 4

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->q()J

    move-result-wide v0

    .line 344
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 345
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/launcher/g;->a(J)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    .line 346
    instance-of v1, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/dolphin/browser/launcher/cl;
    .locals 1

    .prologue
    .line 960
    new-instance v0, Lcom/dolphin/browser/ui/launcher/p;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/ui/launcher/p;-><init>(Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->b(Lcom/dolphin/browser/launcher/bv;)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    return-object v0
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Lcom/dolphin/browser/launcher/bk;->d()V

    .line 223
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/ui/launcher/g;)V

    .line 225
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/q;->d()V

    .line 227
    invoke-static {}, Lcom/dolphin/browser/f/b/d;->a()Lcom/dolphin/browser/f/b/d;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/g;->p:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/b/d;->addObserver(Ljava/util/Observer;)V

    .line 229
    new-instance v1, Lcom/dolphin/browser/ui/launcher/h;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/ui/launcher/h;-><init>(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/f/b/d;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 235
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 754
    invoke-super {p0}, Lcom/dolphin/browser/launcher/bk;->g()V

    .line 755
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->c(Z)V

    .line 756
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->a:Lcom/dolphin/browser/promoted/PromotionView;

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/PromotionView;->f()V

    .line 757
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/q;->f()V

    .line 758
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/g;->t:Z

    if-eqz v0, :cond_0

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/g;->t:Z

    .line 760
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->q()V

    .line 762
    :cond_0
    return-void
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/dolphin/browser/launcher/bk;->j()V

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->b()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->n:Lmobi/mgeek/TunnyBrowser/hh;

    .line 217
    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Landroid/content/Context;)V

    .line 306
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lcom/dolphin/browser/launcher/bk;->onAttachedToWindow()V

    .line 294
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->A()V

    .line 295
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 299
    invoke-super {p0}, Lcom/dolphin/browser/launcher/bk;->onDetachedFromWindow()V

    .line 300
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->B()V

    .line 301
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 1002
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->c(Landroid/content/Context;)V

    .line 1003
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/g;->c()V

    .line 1004
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->e:Lcom/dolphin/browser/launcher/Workspace;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Workspace;->f()V

    .line 1005
    return-void
.end method

.method public v()I
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public w()V
    .locals 3

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Ljava/lang/String;)V

    .line 520
    const-string v0, "dolphin home"

    const-string v1, "openicon"

    const-string v2, "add"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method protected x()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020324

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected y()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 722
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020156

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 725
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020155

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public z()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 731
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02015a

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0160

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->l:Landroid/graphics/drawable/Drawable;

    .line 734
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/g;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
