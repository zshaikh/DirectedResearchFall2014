.class public Lcom/dolphin/browser/promoted/PromotionView;
.super Landroid/widget/LinearLayout;
.source "PromotionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/ui/OrientationChangedListener;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:J

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 386
    new-instance v0, Lcom/dolphin/browser/promoted/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/promoted/o;-><init>(Lcom/dolphin/browser/promoted/PromotionView;)V

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->l:Ljava/lang/Runnable;

    .line 71
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/PromotionView;->a(Landroid/content/Context;)V

    .line 72
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->setVisibility(I)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/promoted/PromotionView;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->e:J

    return-wide v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 463
    const-string v1, ""

    .line 464
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 478
    :goto_0
    return-object v0

    .line 467
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 469
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/m;

    .line 470
    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    const-string v2, "Promotion"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 474
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 637
    if-nez v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 640
    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-ne v1, v2, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 647
    :goto_1
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 645
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300cb

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/promoted/PromotionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802d9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->f:Landroid/widget/TextView;

    .line 128
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802da

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->g:Landroid/widget/ImageView;

    .line 129
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802dc

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->h:Landroid/widget/ImageView;

    .line 130
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802dd

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->i:Landroid/widget/ImageView;

    .line 131
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802de

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->j:Landroid/widget/ImageView;

    .line 132
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802db

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->k:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-static {p1}, Lcom/dolphin/browser/promoted/j;->c(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->e:J

    .line 141
    invoke-static {p1}, Lcom/dolphin/browser/promoted/j;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->b:Ljava/util/ArrayList;

    .line 142
    invoke-static {p1}, Lcom/dolphin/browser/promoted/j;->h(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->b()V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/promoted/PromotionView;I)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/promoted/PromotionView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/PromotionView;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/promoted/PromotionView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/promoted/PromotionView;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/promoted/PromotionView;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 432
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/m;

    .line 433
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 439
    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_1

    .line 440
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/promoted/s;

    if-eqz v0, :cond_0

    .line 213
    if-eqz p1, :cond_1

    const-string v0, "ok"

    .line 214
    :goto_0
    const-string v1, "promotion link"

    const-string v2, "rate_dialog"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void

    .line 213
    :cond_1
    const-string v0, "no"

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/promoted/m;)Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    :cond_1
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/promoted/PromotionView;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->k()V

    return-void
.end method

.method private b(Lcom/dolphin/browser/promoted/m;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/promoted/j;->d(Landroid/content/Context;)I

    move-result v0

    .line 402
    if-eqz v0, :cond_2

    .line 405
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v0

    if-nez v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    :goto_1
    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/PromotionView;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 501
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    .line 514
    :goto_0
    return-void

    .line 505
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/m;

    .line 507
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->d()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 508
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 511
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 513
    iput-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/promoted/PromotionView;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/promoted/PromotionView;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/promoted/m;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 448
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/promoted/PromotionView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/promoted/PromotionView;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->l()V

    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/promoted/PromotionView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 244
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->setVisibility(I)V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->e:J

    .line 246
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->e:J

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;J)V

    .line 247
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;I)V

    .line 248
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->m()V

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    .line 251
    const-string v0, "promotion link"

    const-string v1, "click"

    const-string v2, "remove"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 257
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->setVisibility(I)V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->e:J

    .line 259
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->e:J

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;J)V

    .line 260
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;I)V

    .line 261
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->m()V

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    .line 264
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->h()V

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v0}, Lcom/dolphin/browser/promoted/t;->e()V

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->h()V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v3

    .line 285
    const-string v4, "PromotionView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acceptClick, prom null ? "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez v3, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->h()V

    .line 298
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 285
    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v3}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v0

    .line 292
    const-string v3, "PromotionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acceptClick, responsePromp null ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v0, :cond_2

    .line 294
    invoke-interface {v0}, Lcom/dolphin/browser/promoted/t;->d()V

    .line 297
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->h()V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 292
    goto :goto_2
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 349
    iget v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    .line 350
    iget v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 351
    :cond_0
    iput v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v0

    .line 354
    if-nez v0, :cond_3

    .line 384
    :cond_2
    :goto_0
    return-void

    .line 357
    :cond_3
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/promoted/PromotionView;->setVisibility(I)V

    .line 358
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/promoted/PromotionView;->b(Lcom/dolphin/browser/promoted/m;)V

    .line 359
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->d()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 360
    const-string v0, "whistle"

    const-string v1, "default_browser"

    const-string v2, "display"

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 363
    :cond_4
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->d()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 364
    const-string v0, "whistle"

    const-string v1, "add_shorcut"

    const-string v2, "display"

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 366
    :cond_5
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->d()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 367
    const-string v1, "whistle"

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "display"

    invoke-static {v1, v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 369
    :cond_6
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->d()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 370
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/dolphin/browser/DolphinService/k;

    if-eqz v1, :cond_2

    .line 372
    check-cast v0, Lcom/dolphin/browser/DolphinService/k;

    .line 373
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/k;->f()Lcom/dolphin/browser/update/model/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 374
    const-string v1, "whistle"

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/k;->f()Lcom/dolphin/browser/update/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->a()Lcom/dolphin/browser/update/model/UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "display"

    invoke-static {v1, v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 379
    :cond_7
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->d()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 380
    const-string v0, "whistle"

    const-string v1, "share_dolphin"

    const-string v2, "display"

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/promoted/PromotionView;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/promoted/PromotionView;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/j;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v0

    .line 487
    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->l()V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v1

    if-nez v1, :cond_1

    .line 538
    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v2

    .line 541
    if-eqz v2, :cond_0

    .line 542
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/f/e/b;->a(Ljava/lang/String;)V

    .line 543
    const-string v2, "promotion link"

    const-string v3, "click"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackUrlEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->g()V

    .line 549
    const-string v1, "whistle"

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "confirm"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 552
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 520
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 521
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 523
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a0062

    invoke-static {v5}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 526
    array-length v5, v1

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 527
    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/16 v8, 0x22

    invoke-virtual {v3, v4, v7, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    :cond_0
    return-object v3
.end method

.method public a()V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method public a(Lcom/dolphin/browser/promoted/m;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/PromotionView;->a(Lcom/dolphin/browser/promoted/m;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 121
    :cond_1
    :goto_0
    return v0

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/promoted/m;->a()Lcom/dolphin/browser/promoted/t;

    move-result-object v2

    instance-of v2, v2, Lcom/dolphin/browser/promoted/s;

    if-eqz v2, :cond_3

    .line 99
    const-string v2, "promotion link"

    const-string v3, "rate_dialog"

    const-string v4, "showdialog"

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->l()V

    .line 105
    iget-object v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 106
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/promoted/PromotionView;->l:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/promoted/PromotionView;->l:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_4
    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/dolphin/browser/promoted/PromotionView;->e:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    .line 112
    iget v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    if-gez v2, :cond_5

    .line 113
    iput v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    .line 115
    :cond_5
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->k()V

    .line 116
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->l:Ljava/lang/Runnable;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020242

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00ca

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a00cb

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020241

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0062

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a00c8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/dolphin/browser/promoted/PromotionView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v3, p0, Lcom/dolphin/browser/promoted/PromotionView;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->i:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00cc

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 162
    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0198

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 164
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/promoted/PromotionView;->b(Lcom/dolphin/browser/promoted/m;)V

    .line 165
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->setBackgroundColor(I)V

    .line 166
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 316
    iget-wide v2, p0, Lcom/dolphin/browser/promoted/PromotionView;->d:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 322
    :goto_0
    return-void

    .line 319
    :cond_0
    iput-wide v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->d:J

    .line 321
    new-instance v0, Lcom/dolphin/browser/promoted/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/promoted/p;-><init>(Lcom/dolphin/browser/promoted/PromotionView;Lcom/dolphin/browser/promoted/n;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public d()Lcom/dolphin/browser/promoted/m;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 339
    iget v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    iget-object v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dolphin/browser/promoted/PromotionView;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/m;

    .line 343
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->setVisibility(I)V

    .line 618
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->setVisibility(I)V

    .line 625
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->d()Lcom/dolphin/browser/promoted/m;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    const-string v1, "whistle"

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/m;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cancel"

    invoke-static {v1, v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->g()V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->a(Z)V

    .line 199
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->i()V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 201
    invoke-direct {p0, v3}, Lcom/dolphin/browser/promoted/PromotionView;->a(Z)V

    .line 202
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->j()V

    goto :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/promoted/PromotionView;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/PromotionView;->n()V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/PromotionView;->a(I)V

    .line 632
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/promoted/PromotionView;->a(I)V

    .line 226
    new-instance v1, Lcom/dolphin/browser/promoted/n;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/promoted/n;-><init>(Lcom/dolphin/browser/promoted/PromotionView;I)V

    .line 234
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/promoted/c;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/PromotionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/c;

    invoke-interface {v0, p1, p0, v1}, Lcom/dolphin/browser/promoted/c;->a(ILandroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
