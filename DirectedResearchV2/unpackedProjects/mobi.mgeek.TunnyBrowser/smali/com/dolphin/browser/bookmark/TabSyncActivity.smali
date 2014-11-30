.class public Lcom/dolphin/browser/bookmark/TabSyncActivity;
.super Landroid/view/CustomMenuActivity;
.source "TabSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/u/c;


# instance fields
.field private b:Lcom/dolphin/browser/sync/at;

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/dolphin/browser/u/a;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Lcom/dolphin/browser/sync/o;

.field private u:Lcom/dolphin/browser/sync/d;

.field private v:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 236
    new-instance v0, Lcom/dolphin/browser/bookmark/cr;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/cr;-><init>(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->t:Lcom/dolphin/browser/sync/o;

    .line 262
    new-instance v0, Lcom/dolphin/browser/bookmark/cs;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/cs;-><init>(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->u:Lcom/dolphin/browser/sync/d;

    .line 341
    new-instance v0, Lcom/dolphin/browser/bookmark/cv;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/cv;-><init>(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->v:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/TabSyncActivity;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->c:I

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/TabSyncActivity;J)J
    .locals 0

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/TabSyncActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 363
    const-string v0, "TabSyncActivity"

    const-string v1, "openfolder %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 364
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/bookmark/p;->a(Landroid/content/Context;J)Lcom/dolphin/browser/u/a;

    move-result-object v0

    .line 367
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->k:Lcom/dolphin/browser/u/a;

    .line 368
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/u/a;->a(Lcom/dolphin/browser/u/c;)V

    .line 370
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 375
    invoke-static {p1}, Lcom/dolphin/browser/core/be;->b(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 378
    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 383
    invoke-static {v0, p1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 392
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->finish()V

    goto :goto_0

    .line 386
    :cond_1
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click Bookmark To Load Url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/dolphin/browser/util/cx;->b:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZLjava/lang/Object;)Lcom/dolphin/browser/util/cw;

    .line 390
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/TabSyncActivity;)Lcom/dolphin/browser/u/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->k:Lcom/dolphin/browser/u/a;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/TabSyncActivity;J)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/TabSyncActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    if-eqz p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->i:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 211
    :goto_1
    return-void

    .line 205
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->i:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_1
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 420
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->n:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 421
    return-void

    .line 420
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->h()V

    .line 100
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->n:Landroid/view/View;

    .line 101
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->o:Landroid/widget/ImageView;

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->p:Landroid/widget/TextView;

    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->f:Landroid/view/View;

    .line 105
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g:Landroid/widget/TextView;

    .line 106
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->h:Landroid/widget/ImageView;

    .line 107
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201d2

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->i:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->h:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->l:Landroid/widget/RelativeLayout;

    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->m:Landroid/view/View;

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080388

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->q:Landroid/widget/ImageView;

    .line 114
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->r:Landroid/widget/TextView;

    .line 115
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080389

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->s:Landroid/widget/ImageView;

    .line 118
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 119
    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->j:Landroid/widget/ListView;

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 122
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->v:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->s:Landroid/widget/ImageView;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 128
    return-void

    :cond_0
    move v0, v2

    .line 127
    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->i()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0a0120

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 178
    iget-object v4, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->f:Landroid/view/View;

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->c:I

    if-ne v0, v2, :cond_3

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g:Landroid/widget/TextView;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e05fa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 201
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b(Z)V

    .line 202
    return-void

    .line 178
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e05f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move v1, v2

    goto :goto_1

    .line 191
    :cond_3
    iget v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05fb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iput-object v6, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->e:Ljava/lang/String;

    goto :goto_1

    .line 195
    :cond_4
    iget v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->c:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a011e

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05f8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iput-object v6, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b:Lcom/dolphin/browser/sync/at;

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b:Lcom/dolphin/browser/sync/at;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->t:Lcom/dolphin/browser/sync/o;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/at;->a(Lcom/dolphin/browser/sync/o;)V

    .line 218
    new-instance v0, Lcom/dolphin/browser/sync/an;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/an;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->u:Lcom/dolphin/browser/sync/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/an;->a(Lcom/dolphin/browser/sync/d;)V

    .line 220
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/at;->a(Lcom/dolphin/browser/sync/b;)V

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->c:I

    .line 225
    :cond_0
    return-void
.end method

.method private i()Lcom/dolphin/browser/sync/at;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b:Lcom/dolphin/browser/sync/at;

    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->h()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b:Lcom/dolphin/browser/sync/at;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/u/a;Z)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->k:Lcom/dolphin/browser/u/a;

    if-eq p1, v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->c(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 132
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->l:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->j:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 136
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201b8

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->j:Landroid/widget/ListView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v0

    .line 141
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->q:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020020

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->s:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020068

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->m:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->m:Landroid/view/View;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->r:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->r:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0607

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->p:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->o:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201f2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a011f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g()V

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->k:Lcom/dolphin/browser/u/a;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->k:Lcom/dolphin/browser/u/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/u/a;->notifyDataSetInvalidated()V

    .line 159
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 277
    const-string v0, "TabSyncActivity"

    const-string v1, "start sync"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->i()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/dolphin/browser/bookmark/ct;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/bookmark/ct;-><init>(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/at;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 318
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->g()V

    .line 319
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 326
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 328
    :pswitch_0
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 329
    const-wide/16 v0, -0x9

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(J)V

    .line 330
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->d()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->finish()V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 398
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080388

    if-ne v0, v1, :cond_2

    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/TabSyncActivity;->k:Lcom/dolphin/browser/u/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/u/a;->b()J

    move-result-wide v0

    .line 400
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->finish()V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(J)V

    goto :goto_0

    .line 405
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080389

    if-ne v0, v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->d()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030101

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->e()V

    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->c(Z)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    :cond_0
    const-wide/16 v0, -0x9

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(J)V

    .line 92
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->b()V

    .line 93
    return-void
.end method
