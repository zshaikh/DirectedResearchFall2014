.class public Lcom/dolphin/browser/sidebar/i;
.super Landroid/widget/LinearLayout;
.source "BookmarkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/bookmark/be;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/dolphin/browser/bookmark/j;

.field private e:J

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lcom/dolphin/browser/sidebar/PathBar;

.field private k:Landroid/view/View;

.field private l:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/dolphin/browser/sync/s;

.field private p:Z

.field private q:I

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Landroid/widget/AdapterView$OnItemClickListener;

.field private u:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private v:Lcom/dolphin/browser/bookmark/a;

.field private w:Lcom/dolphin/browser/sync/o;

.field private x:Lcom/dolphin/browser/sync/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/dolphin/browser/sidebar/i;->e:J

    .line 251
    new-instance v0, Lcom/dolphin/browser/sidebar/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sidebar/n;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->t:Landroid/widget/AdapterView$OnItemClickListener;

    .line 270
    new-instance v0, Lcom/dolphin/browser/sidebar/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sidebar/o;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->u:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 366
    new-instance v0, Lcom/dolphin/browser/sidebar/p;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sidebar/p;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->v:Lcom/dolphin/browser/bookmark/a;

    .line 449
    new-instance v0, Lcom/dolphin/browser/sidebar/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sidebar/q;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->w:Lcom/dolphin/browser/sync/o;

    .line 489
    new-instance v0, Lcom/dolphin/browser/sidebar/r;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sidebar/r;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->x:Lcom/dolphin/browser/sync/d;

    .line 112
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sidebar/i;->a(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/sidebar/j;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/sidebar/j;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/bq;->addObserver(Ljava/util/Observer;)V

    .line 126
    return-void
.end method

.method private a(Lcom/dolphin/browser/bookmark/j;)I
    .locals 1

    .prologue
    .line 383
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/o;

    if-eqz v0, :cond_2

    .line 384
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/bv;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01f9

    .line 399
    :goto_0
    return v0

    .line 386
    :cond_0
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/ca;

    if-eqz v0, :cond_1

    .line 387
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01fd

    goto :goto_0

    .line 389
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01f8

    goto :goto_0

    .line 391
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/cc;

    if-eqz v0, :cond_3

    .line 392
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01fe

    goto :goto_0

    .line 393
    :cond_3
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/co;

    if-eqz v0, :cond_4

    .line 394
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0201

    goto :goto_0

    .line 396
    :cond_4
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00fe

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/i;)Lcom/dolphin/browser/bookmark/j;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/i;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 576
    iget v0, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    if-ne v0, p1, :cond_0

    .line 593
    :goto_0
    return-void

    .line 580
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/sidebar/i;->p:Z

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/sidebar/i;->r:J

    .line 583
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->k()V

    .line 585
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/sidebar/k;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/sidebar/k;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(JZ)V
    .locals 3

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/dolphin/browser/sidebar/i;->e:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/dolphin/browser/bookmark/p;->b(Landroid/content/Context;J)Lcom/dolphin/browser/bookmark/j;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/bookmark/j;->a(Lcom/dolphin/browser/bookmark/a;)V

    .line 346
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->s()V

    .line 349
    :cond_2
    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    .line 350
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->v:Lcom/dolphin/browser/bookmark/a;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/j;->a(Lcom/dolphin/browser/bookmark/a;)V

    .line 351
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->r()V

    .line 353
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 354
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/bookmark/j;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 356
    iput-wide p1, p0, Lcom/dolphin/browser/sidebar/i;->e:J

    .line 358
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->k()V

    .line 360
    if-eqz p3, :cond_0

    .line 361
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->setOrientation(I)V

    .line 131
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030017

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/sidebar/i;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 133
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->setSoftwareRendering(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->g()V

    .line 138
    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(Z)V

    .line 142
    :cond_0
    new-instance v1, Lcom/dolphin/browser/bookmark/be;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/bookmark/be;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/dolphin/browser/sidebar/i;->b:Lcom/dolphin/browser/bookmark/be;

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->b:Lcom/dolphin/browser/bookmark/be;

    new-instance v1, Lcom/dolphin/browser/sidebar/l;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/sidebar/l;-><init>(Lcom/dolphin/browser/sidebar/i;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/be;->a(Lcom/dolphin/browser/bookmark/bk;)V

    .line 151
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 152
    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->c:Landroid/widget/ListView;

    .line 153
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->u:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 155
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 157
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->f:Landroid/view/View;

    .line 158
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->g:Landroid/widget/TextView;

    .line 160
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->k:Landroid/view/View;

    .line 161
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->l:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    .line 162
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->m:Landroid/view/View;

    .line 164
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->n:Landroid/widget/ImageView;

    .line 166
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->h:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->l:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sidebar/PathBar;

    .line 172
    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->j:Lcom/dolphin/browser/sidebar/PathBar;

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->j:Lcom/dolphin/browser/sidebar/PathBar;

    new-instance v1, Lcom/dolphin/browser/sidebar/m;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/sidebar/m;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sidebar/PathBar;->a(Lcom/dolphin/browser/sidebar/w;)V

    .line 204
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/sidebar/i;->a(JZ)V

    .line 206
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->d()V

    .line 207
    return-void
.end method

.method private a(Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-direct {p0, v0}, Lcom/dolphin/browser/sidebar/i;->a(Ljava/lang/String;)V

    .line 290
    invoke-static {v0}, Lcom/dolphin/browser/search/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-static {}, Lcom/dolphin/browser/search/e/a;->a()Lcom/dolphin/browser/search/e/a;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/e/a;->a(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/i;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sidebar/i;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/i;JZ)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sidebar/i;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/i;Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/bookmark/a/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 299
    invoke-static {p1}, Lcom/dolphin/browser/core/be;->b(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 302
    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 307
    invoke-static {v0, p1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 314
    :goto_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ab()V

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 311
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 723
    :goto_0
    return-void

    .line 718
    :cond_0
    if-eqz p1, :cond_1

    .line 719
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->i:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->i:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0
.end method

.method private a(ZI)V
    .locals 2

    .prologue
    .line 681
    if-nez p1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->s:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(J)Z
    .locals 2

    .prologue
    .line 222
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/bo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/i;J)Z
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/sidebar/i;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/i;Z)Z
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/dolphin/browser/sidebar/i;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/sidebar/i;I)I
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/sidebar/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 5

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v0

    .line 320
    const-wide/16 v2, -0x2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 322
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/sync/ab;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 325
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/sidebar/i;->a(JZ)V

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/o;

    if-eqz v0, :cond_2

    .line 328
    const-string v0, "bookmark bar"

    const-string v1, "click"

    const-string v2, "bookmarkfolder"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/cc;

    if-eqz v0, :cond_1

    .line 331
    const-string v0, "bookmark bar"

    const-string v1, "click"

    const-string v2, "history"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/sidebar/i;Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sidebar/i;->b(Lcom/dolphin/browser/bookmark/a/a;)V

    return-void
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(J)Z
    .locals 2

    .prologue
    .line 758
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x9

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xa

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xb

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 210
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/bq;->c()J

    move-result-wide v2

    .line 212
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/i;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/sidebar/i;)J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/dolphin/browser/sidebar/i;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/dolphin/browser/sidebar/i;I)Z
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sidebar/i;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/sidebar/i;)Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->f:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const v4, 0x7f0a0035

    .line 227
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->c:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 231
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->c:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->c:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0148

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a009b

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->k()V

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->notifyDataSetInvalidated()V

    .line 249
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/sidebar/i;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 427
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 433
    return-void
.end method

.method static synthetic f(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->k()V

    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/sidebar/i;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->o:Lcom/dolphin/browser/sync/s;

    .line 437
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->o:Lcom/dolphin/browser/sync/s;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->w:Lcom/dolphin/browser/sync/o;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/s;->a(Lcom/dolphin/browser/sync/o;)V

    .line 439
    new-instance v0, Lcom/dolphin/browser/sync/af;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/af;-><init>()V

    .line 440
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->x:Lcom/dolphin/browser/sync/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/af;->a(Lcom/dolphin/browser/sync/d;)V

    .line 441
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->o:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/s;->a(Lcom/dolphin/browser/sync/b;)V

    .line 443
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->o:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->o:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/sidebar/i;->p:Z

    .line 447
    :cond_0
    return-void
.end method

.method private h()Lcom/dolphin/browser/sync/s;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->o:Lcom/dolphin/browser/sync/s;

    if-nez v0, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->g()V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->o:Lcom/dolphin/browser/sync/s;

    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->j()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 511
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->j()V

    .line 524
    :goto_0
    const-string v0, "bookmark"

    const-string v1, "clickdownmenu"

    const-string v2, "sync"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    return-void

    .line 514
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->h()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/i;->b()V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    .line 530
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 531
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 535
    :cond_0
    return-void
.end method

.method private k()V
    .locals 7

    .prologue
    const v6, 0x7f0a009c

    const v5, 0x7f020060

    const v4, 0x7f0a0036

    .line 596
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 597
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/i;->k:Landroid/view/View;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0022

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 601
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->l()V

    .line 603
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->m:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020067

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v2, v4, v6, v4}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5, v4, v6, v4}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/e/a/z;

    if-eqz v1, :cond_0

    .line 613
    new-instance v1, Lcom/dolphin/browser/bookmark/b/e;

    check-cast v0, Lcom/e/a/z;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/bookmark/b/e;-><init>(Lcom/e/a/z;)V

    iput-object v1, p0, Lcom/dolphin/browser/sidebar/i;->i:Landroid/graphics/drawable/Drawable;

    .line 618
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->n()V

    .line 621
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->m()V

    .line 622
    return-void

    .line 615
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/b/e;

    new-instance v1, Lcom/e/a/z;

    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/i;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-direct {v1, v2, v5}, Lcom/e/a/z;-><init>(Landroid/content/res/Resources;I)V

    invoke-direct {v0, v1}, Lcom/dolphin/browser/bookmark/b/e;-><init>(Lcom/e/a/z;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/i;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->l:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->a()V

    .line 627
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->j:Lcom/dolphin/browser/sidebar/PathBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/PathBar;->a()V

    .line 632
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->j:Lcom/dolphin/browser/sidebar/PathBar;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sidebar/PathBar;->setBackgroundColor(I)V

    .line 636
    iget-wide v0, p0, Lcom/dolphin/browser/sidebar/i;->e:J

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0601

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->j:Lcom/dolphin/browser/sidebar/PathBar;

    invoke-virtual {v1}, Lcom/dolphin/browser/sidebar/PathBar;->c()V

    .line 644
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->j:Lcom/dolphin/browser/sidebar/PathBar;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sidebar/PathBar;->a(Ljava/lang/String;)V

    .line 645
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->j:Lcom/dolphin/browser/sidebar/PathBar;

    invoke-virtual {v1}, Lcom/dolphin/browser/sidebar/PathBar;->b()V

    goto :goto_0
.end method

.method private n()V
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 649
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    .line 651
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->o()Z

    move-result v5

    .line 652
    iget-object v6, p0, Lcom/dolphin/browser/sidebar/i;->h:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->h:Landroid/widget/TextView;

    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a0023

    invoke-virtual {v4, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    iget v0, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    if-ne v0, v3, :cond_3

    .line 660
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    .line 676
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Z)V

    .line 677
    return-void

    :cond_1
    move v0, v2

    .line 652
    goto :goto_0

    .line 663
    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05fd

    invoke-direct {p0, v5, v0}, Lcom/dolphin/browser/sidebar/i;->a(ZI)V

    move v1, v3

    goto :goto_1

    .line 665
    :cond_3
    iget v0, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 666
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05fb

    invoke-direct {p0, v5, v0}, Lcom/dolphin/browser/sidebar/i;->a(ZI)V

    goto :goto_1

    .line 667
    :cond_4
    iget v0, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    if-eq v0, v7, :cond_5

    iget v0, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    if-ne v0, v2, :cond_0

    .line 669
    :cond_5
    iget v0, p0, Lcom/dolphin/browser/sidebar/i;->q:I

    if-ne v0, v7, :cond_6

    .line 670
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05f8

    invoke-direct {p0, v5, v0}, Lcom/dolphin/browser/sidebar/i;->a(ZI)V

    goto :goto_1

    .line 672
    :cond_6
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05ba

    invoke-direct {p0, v5, v0}, Lcom/dolphin/browser/sidebar/i;->a(ZI)V

    goto :goto_1
.end method

.method private o()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 691
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/o;

    if-nez v1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->p()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dolphin/browser/sidebar/i;->r:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 697
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->h()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/sidebar/i;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->d()V

    .line 404
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->h()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/dolphin/browser/sidebar/s;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/sidebar/s;-><init>(Lcom/dolphin/browser/sidebar/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/s;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 572
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->k()V

    .line 573
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 410
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800a7

    if-ne v0, v1, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->i()V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800bd

    if-ne v0, v1, :cond_0

    .line 415
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->e()V

    goto :goto_0

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/i;->f()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    .line 729
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 731
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/o;

    if-eqz v1, :cond_3

    .line 732
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v1, v1, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v1, :cond_2

    .line 733
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/dolphin/browser/bookmark/b/i;

    .line 734
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/b/i;->d()J

    move-result-wide v0

    .line 735
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/sidebar/i;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/sidebar/i;->d:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v2}, Lcom/dolphin/browser/bookmark/j;->e()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/dolphin/browser/sidebar/i;->b(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/i;->b:Lcom/dolphin/browser/bookmark/be;

    sget-object v3, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v3, 0x7f100008

    long-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Lcom/dolphin/browser/bookmark/be;->a(II)V

    .line 742
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->b:Lcom/dolphin/browser/bookmark/be;

    invoke-virtual {v0, p1, p3}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->b:Lcom/dolphin/browser/bookmark/be;

    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f100009

    iget-wide v2, p0, Lcom/dolphin/browser/sidebar/i;->e:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/be;->a(II)V

    .line 747
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->b:Lcom/dolphin/browser/bookmark/be;

    invoke-virtual {v0, p1, p3}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 749
    :cond_3
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/b/c;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->b:Lcom/dolphin/browser/bookmark/be;

    sget-object v1, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v1, 0x7f10000a

    iget-wide v2, p0, Lcom/dolphin/browser/sidebar/i;->e:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/bookmark/be;->a(II)V

    .line 752
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/i;->b:Lcom/dolphin/browser/bookmark/be;

    invoke-virtual {v0, p1, p3}, Lcom/dolphin/browser/bookmark/be;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method
