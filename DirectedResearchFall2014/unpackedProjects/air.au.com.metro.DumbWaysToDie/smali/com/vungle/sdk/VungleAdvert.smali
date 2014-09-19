.class public Lcom/vungle/sdk/VungleAdvert;
.super Landroid/app/Activity;
.source "vungle"


# instance fields
.field a:Lcom/vungle/sdk/net/http/HttpGateway;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleCache;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/sdk/VungleUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/sdk/g;

.field e:Lcom/vungle/sdk/g;

.field private f:Z

.field private g:Landroid/widget/ViewFlipper;

.field private h:I

.field private i:[Ljava/lang/Boolean;

.field private j:I

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-boolean v3, p0, Lcom/vungle/sdk/VungleAdvert;->f:Z

    .line 60
    iput-object v4, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    .line 61
    iput v3, p0, Lcom/vungle/sdk/VungleAdvert;->h:I

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->i:[Ljava/lang/Boolean;

    .line 67
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/vungle/sdk/VungleAdvert;->k:J

    .line 73
    iput-boolean v3, p0, Lcom/vungle/sdk/VungleAdvert;->l:Z

    iput-boolean v3, p0, Lcom/vungle/sdk/VungleAdvert;->m:Z

    .line 75
    iput-object v4, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    .line 76
    iput-object v4, p0, Lcom/vungle/sdk/VungleAdvert;->e:Lcom/vungle/sdk/g;

    return-void
.end method

.method private a(I)Lcom/vungle/sdk/g;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 174
    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/sdk/VungleCache;

    .line 177
    packed-switch p1, :pswitch_data_0

    move-object v1, v7

    .line 510
    :goto_0
    return-object v1

    :pswitch_0
    move-object v1, v7

    .line 179
    goto :goto_0

    .line 185
    :pswitch_1
    if-nez v1, :cond_0

    move-object v1, v7

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, v1, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    invoke-virtual {v1}, Lcom/vungle/sdk/VungleCache$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/sdk/VungleAdvert;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    :try_start_0
    new-instance v2, Lcom/vungle/sdk/i;

    new-instance v3, Lcom/vungle/sdk/VungleAdvert$2;

    invoke-direct {v3, p0}, Lcom/vungle/sdk/VungleAdvert$2;-><init>(Lcom/vungle/sdk/VungleAdvert;)V

    invoke-direct {v2, p0, v1, v3}, Lcom/vungle/sdk/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/sdk/g$a; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    move-object v1, v7

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v1, v1, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    invoke-virtual {v1}, Lcom/vungle/sdk/VungleCache$b;->b()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/sdk/model/RequestAd;->a()Lcom/vungle/sdk/z;

    move-result-object v1

    iget v4, v1, Lcom/vungle/sdk/z;->m:I

    .line 241
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/sdk/model/RequestAd;->a()Lcom/vungle/sdk/z;

    move-result-object v1

    iget v5, v1, Lcom/vungle/sdk/z;->l:I

    .line 243
    :try_start_1
    new-instance v1, Lcom/vungle/sdk/j;

    new-instance v6, Lcom/vungle/sdk/VungleAdvert$3;

    invoke-direct {v6, p0}, Lcom/vungle/sdk/VungleAdvert$3;-><init>(Lcom/vungle/sdk/VungleAdvert;)V

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/vungle/sdk/j;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/vungle/sdk/j$g;)V
    :try_end_1
    .catch Lcom/vungle/sdk/g$a; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    move-object v0, v1

    check-cast v0, Lcom/vungle/sdk/j;

    move-object v2, v0

    sget-boolean v3, Lcom/vungle/sdk/n;->F:Z

    invoke-virtual {v2, v3}, Lcom/vungle/sdk/j;->a(Z)V

    goto :goto_0

    .line 392
    :catch_1
    move-exception v1

    move-object v1, v7

    goto :goto_0

    .line 402
    :pswitch_3
    iget-object v1, v1, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    invoke-virtual {v1}, Lcom/vungle/sdk/VungleCache$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/sdk/VungleAdvert;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    :try_start_2
    new-instance v2, Lcom/vungle/sdk/h;

    new-instance v3, Lcom/vungle/sdk/VungleAdvert$4;

    invoke-direct {v3, p0}, Lcom/vungle/sdk/VungleAdvert$4;-><init>(Lcom/vungle/sdk/VungleAdvert;)V

    invoke-direct {v2, p0, v1, v3}, Lcom/vungle/sdk/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/vungle/sdk/g$a; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 504
    goto :goto_0

    .line 502
    :catch_2
    move-exception v1

    move-object v1, v7

    goto :goto_0

    :pswitch_4
    move-object v1, v7

    .line 506
    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 91
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 517
    const-string v2, "%timestamp%"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-object v0
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleAdvert;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->c()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleAdvert;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 33
    move v0, p1

    move-object v1, p0

    :goto_0
    :try_start_0
    iput v0, v1, Lcom/vungle/sdk/VungleAdvert;->j:I

    invoke-direct {v1}, Lcom/vungle/sdk/VungleAdvert;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "VungleAd"

    invoke-static {v3, v2}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleAdvert;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/model/RequestAd;->a()Lcom/vungle/sdk/z;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/vungle/sdk/z;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/vungle/sdk/z;->d:Ljava/lang/String;

    :goto_0
    new-instance v1, Lcom/vungle/sdk/VungleAdvert$1;

    invoke-direct {v1, p0}, Lcom/vungle/sdk/VungleAdvert$1;-><init>(Lcom/vungle/sdk/VungleAdvert;)V

    invoke-virtual {v1, v0}, Lcom/vungle/sdk/VungleAdvert$1;->a(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/sdk/VungleAdvert;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/vungle/sdk/z;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/sdk/VungleAdvert;->a:Lcom/vungle/sdk/net/http/HttpGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/vungle/sdk/net/http/HttpGateway;->a(Ljava/util/Map;[Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic b()Lcom/vungle/sdk/y;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/vungle/sdk/y;

    invoke-direct {v0}, Lcom/vungle/sdk/y;-><init>()V

    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v1

    iget-wide v1, v1, Lcom/vungle/sdk/y;->a:J

    iput-wide v1, v0, Lcom/vungle/sdk/y;->a:J

    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v1

    iget-wide v1, v1, Lcom/vungle/sdk/y;->b:J

    iput-wide v1, v0, Lcom/vungle/sdk/y;->b:J

    invoke-static {}, Lcom/vungle/sdk/ab;->d()Lcom/vungle/sdk/y;

    move-result-object v1

    iget-wide v1, v1, Lcom/vungle/sdk/y;->c:J

    iput-wide v1, v0, Lcom/vungle/sdk/y;->c:J

    new-instance v1, Lcom/vungle/sdk/y;

    invoke-direct {v1}, Lcom/vungle/sdk/y;-><init>()V

    invoke-static {v1}, Lcom/vungle/sdk/ab;->a(Lcom/vungle/sdk/y;)V

    return-object v0
.end method

.method static synthetic b(Lcom/vungle/sdk/VungleAdvert;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->e()V

    return-void
.end method

.method static synthetic c(Lcom/vungle/sdk/VungleAdvert;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget v0, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/vungle/sdk/VungleAdvert;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->m:Z

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 536
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Showing stage for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    .line 538
    iget v1, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    invoke-direct {p0, v1}, Lcom/vungle/sdk/VungleAdvert;->a(I)Lcom/vungle/sdk/g;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    .line 539
    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    if-nez v1, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->f()V

    .line 543
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleAdvert;->finish()V

    .line 567
    :goto_1
    return-void

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->c()V

    goto :goto_0

    .line 549
    :cond_1
    iput-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->e:Lcom/vungle/sdk/g;

    .line 555
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->i:[Ljava/lang/Boolean;

    iget v1, p0, Lcom/vungle/sdk/VungleAdvert;->h:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/vungle/sdk/VungleAdvert;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->i:[Ljava/lang/Boolean;

    iget v1, p0, Lcom/vungle/sdk/VungleAdvert;->h:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 562
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    invoke-virtual {v1}, Lcom/vungle/sdk/g;->a()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/vungle/sdk/VungleAdvert;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    .line 563
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/vungle/sdk/VungleAdvert;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 566
    iget v0, p0, Lcom/vungle/sdk/VungleAdvert;->h:I

    sub-int v0, v3, v0

    iput v0, p0, Lcom/vungle/sdk/VungleAdvert;->h:I

    goto :goto_1
.end method

.method static synthetic e(Lcom/vungle/sdk/VungleAdvert;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/vungle/sdk/VungleAdvert;)J
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/vungle/sdk/VungleAdvert;->k:J

    return-wide v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->f:Z

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Lcom/vungle/sdk/VungleAdvert$6;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/VungleAdvert$6;-><init>(Lcom/vungle/sdk/VungleAdvert;)V

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleAdvert$6;->start()V

    .line 672
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/vungle/sdk/VungleAdvert;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->f:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->f()V

    .line 646
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 647
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x4

    .line 572
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 574
    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/u;->a()Lcom/vungle/sdk/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vungle/sdk/ap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleAdvert;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 581
    if-eqz p1, :cond_1

    .line 582
    const-string v0, "stage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    .line 583
    const-string v0, "start"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/VungleAdvert;->k:J

    .line 591
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vungle/sdk/n;->a(Z)V

    .line 594
    new-instance v0, Lcom/vungle/sdk/c;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    .line 595
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    const v1, 0x10a0002

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 596
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    const v1, 0x10a0001

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 597
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setAnimateFirstView(Z)V

    .line 600
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/vungle/sdk/VungleAdvert$5;

    invoke-direct {v1, p0}, Lcom/vungle/sdk/VungleAdvert$5;-><init>(Lcom/vungle/sdk/VungleAdvert;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/sdk/VungleAdvert;->requestWindowFeature(I)Z

    .line 616
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0}, Lcom/vungle/sdk/VungleAdvert;->setContentView(Landroid/view/View;)V

    .line 620
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->c:Lcom/vungle/sdk/VungleUtil;

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/VungleUtil;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    const/4 v0, 0x4

    iput v0, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->e()V

    .line 633
    :goto_1
    return-void

    .line 585
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/VungleAdvert;->k:J

    .line 587
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 627
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 628
    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/lang/Throwable;)V

    .line 629
    iput v2, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    .line 630
    invoke-direct {p0}, Lcom/vungle/sdk/VungleAdvert;->f()V

    .line 631
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleAdvert;->finish()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 716
    iget v0, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 717
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 732
    .end local p0
    :goto_0
    return v0

    .line 720
    .restart local p0
    :cond_0
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_2

    .line 721
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 724
    :cond_2
    sget-boolean v0, Lcom/vungle/sdk/n;->t:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/vungle/sdk/n;->D:Z

    if-eqz v0, :cond_4

    :cond_3
    sget-boolean v0, Lcom/vungle/sdk/n;->u:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/vungle/sdk/n;->D:Z

    if-eqz v0, :cond_6

    :cond_4
    move v0, v2

    .line 726
    :goto_1
    if-eqz v0, :cond_5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 727
    iget-object p0, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    .end local p0
    check-cast p0, Lcom/vungle/sdk/j;

    .line 728
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    const-string v1, "back"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/vungle/sdk/j;->d()V

    :cond_5
    move v0, v2

    .line 732
    goto :goto_0

    .line 724
    .restart local p0
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 702
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 703
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    invoke-virtual {v0}, Lcom/vungle/sdk/g;->c()V

    .line 708
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->l:Z

    .line 709
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->onPause()V

    .line 710
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 676
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 677
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->m:Z

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    invoke-virtual {v0}, Lcom/vungle/sdk/g;->b()V

    .line 682
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->l:Z

    .line 683
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->onResume()V

    .line 684
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 637
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 638
    const-string v0, "stage"

    iget v1, p0, Lcom/vungle/sdk/VungleAdvert;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    const-string v0, "start"

    iget-wide v1, p0, Lcom/vungle/sdk/VungleAdvert;->k:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 640
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vungle/sdk/VungleAdvert;->m:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 693
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    invoke-virtual {v0}, Lcom/vungle/sdk/g;->b()V

    .line 696
    :cond_0
    iput-boolean p1, p0, Lcom/vungle/sdk/VungleAdvert;->m:Z

    .line 698
    return-void
.end method
