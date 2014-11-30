.class public Lcom/dolphin/browser/share/a/k;
.super Landroid/widget/LinearLayout;
.source "EvernoteShareViewContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/share/n;


# instance fields
.field private A:Lcom/dolphin/browser/q/b/bg;

.field private B:Lcom/dolphin/browser/share/a/f;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/dolphin/browser/q/b/ag;

.field private e:Lcom/dolphin/browser/share/VerticalFreeScrollView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/EditText;

.field private p:Lcom/dolphin/browser/share/Spacer;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Lcom/dolphin/browser/share/a/g;

.field private v:Landroid/app/AlertDialog;

.field private w:Lcom/dolphin/browser/share/a/a;

.field private x:Landroid/app/ProgressDialog;

.field private y:Lcom/dolphin/browser/share/a/h;

.field private z:Lcom/dolphin/browser/q/b/bf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 335
    new-instance v0, Lcom/dolphin/browser/share/a/p;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/a/p;-><init>(Lcom/dolphin/browser/share/a/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->z:Lcom/dolphin/browser/q/b/bf;

    .line 394
    new-instance v0, Lcom/dolphin/browser/share/a/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/a/q;-><init>(Lcom/dolphin/browser/share/a/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->A:Lcom/dolphin/browser/q/b/bg;

    .line 421
    new-instance v0, Lcom/dolphin/browser/share/a/r;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/a/r;-><init>(Lcom/dolphin/browser/share/a/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->B:Lcom/dolphin/browser/share/a/f;

    .line 86
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->a:Ljava/lang/String;

    .line 87
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->c:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    .line 90
    new-instance v0, Lcom/dolphin/browser/share/a/h;

    invoke-direct {v0}, Lcom/dolphin/browser/share/a/h;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->y:Lcom/dolphin/browser/share/a/h;

    .line 92
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->f()V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->c:Ljava/lang/String;

    const-string v1, "page"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/share/a/l;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/share/a/l;-><init>(Lcom/dolphin/browser/share/a/k;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/dolphin/browser/share/a/g;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 309
    const/4 v1, 0x0

    new-instance v2, Lcom/dolphin/browser/share/a/n;

    invoke-direct {v2, p0, p2}, Lcom/dolphin/browser/share/a/n;-><init>(Lcom/dolphin/browser/share/a/k;Lcom/dolphin/browser/share/a/g;)V

    invoke-virtual {v0, p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0591

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 320
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lcom/dolphin/browser/share/a/o;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/share/a/o;-><init>(Lcom/dolphin/browser/share/a/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/a/k;)Lcom/dolphin/browser/q/b/ag;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/q/b/n;)V
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/dolphin/browser/q/b/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const-string v0, "evernote share"

    const-string v1, "edit"

    const-string v2, "title"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Lcom/c/b/c/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->c()Lcom/c/b/c/l;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/c/b/c/l;->c()Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    invoke-virtual {v1}, Lcom/c/b/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    const-string v0, "evernote share"

    const-string v1, "edit"

    const-string v2, "notebook"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    const-string v0, "evernote share"

    const-string v1, "edit"

    const-string v2, "tag"

    iget-object v3, p1, Lcom/dolphin/browser/q/b/n;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 514
    :cond_2
    iget-object v0, p1, Lcom/dolphin/browser/q/b/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 515
    const-string v0, "evernote share"

    const-string v1, "edit"

    const-string v2, "comment"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_3
    return-void

    .line 498
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/share/a;)V
    .locals 3

    .prologue
    .line 458
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 477
    :goto_0
    iget-object v1, p1, Lcom/dolphin/browser/q/b/n;->a:Ljava/lang/String;

    const-string v2, "page"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/q/b/ag;->c(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/bh;)V

    .line 484
    :cond_0
    :goto_1
    return-void

    .line 458
    :cond_1
    new-instance v0, Lcom/dolphin/browser/share/a/s;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/share/a/s;-><init>(Lcom/dolphin/browser/share/a/k;Lcom/dolphin/browser/share/a;)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v1, p1, Lcom/dolphin/browser/q/b/n;->a:Ljava/lang/String;

    const-string v2, "text"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/bh;)V

    goto :goto_1

    .line 481
    :cond_3
    iget-object v1, p1, Lcom/dolphin/browser/q/b/n;->a:Ljava/lang/String;

    const-string v2, "image"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/q/b/ag;->b(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/bh;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/dolphin/browser/share/a/k;)Lcom/dolphin/browser/share/a/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->y:Lcom/dolphin/browser/share/a/h;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->h()V

    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->m()V

    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->k()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/a/k;->setOrientation(I)V

    .line 110
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300ea

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/share/a/k;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08032c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/VerticalFreeScrollView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->e:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->e:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a(Z)V

    .line 115
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08032d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->f:Landroid/widget/EditText;

    .line 117
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08032f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->g:Landroid/view/ViewGroup;

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080330

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->h:Landroid/widget/ImageView;

    .line 122
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080331

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    .line 123
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080332

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->k:Landroid/widget/ImageView;

    .line 125
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080320

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->l:Landroid/view/ViewGroup;

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080334

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->m:Landroid/widget/TextView;

    .line 130
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080335

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->n:Landroid/widget/ImageView;

    .line 132
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080337

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->o:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->o:Landroid/widget/EditText;

    new-instance v1, Lcom/dolphin/browser/share/a/m;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/share/a/m;-><init>(Lcom/dolphin/browser/share/a/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080339

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/Spacer;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->p:Lcom/dolphin/browser/share/Spacer;

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->p:Lcom/dolphin/browser/share/Spacer;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/share/Spacer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08032e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->q:Landroid/widget/ImageView;

    .line 148
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080333

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->r:Landroid/widget/ImageView;

    .line 149
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080336

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->s:Landroid/widget/ImageView;

    .line 150
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080338

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->t:Landroid/widget/ImageView;

    .line 152
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e058d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/k;->c()V

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->z:Lcom/dolphin/browser/q/b/bf;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/bf;)V

    .line 159
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic f(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->l()V

    return-void
.end method

.method static synthetic g(Lcom/dolphin/browser/share/a/k;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->b()Ljava/util/List;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->z:Lcom/dolphin/browser/q/b/bf;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/bf;)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->c()Lcom/c/b/c/l;

    move-result-object v0

    .line 167
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/a/k;->a(Z)V

    .line 168
    if-nez v0, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/l;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/a/k;->a(Lcom/c/b/c/l;)V

    .line 169
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/share/a/k;->a(Z)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->e:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->scrollTo(II)V

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->e:Lcom/dolphin/browser/share/VerticalFreeScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/VerticalFreeScrollView;->a(Z)V

    .line 176
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->i()V

    .line 177
    return-void
.end method

.method static synthetic h(Lcom/dolphin/browser/share/a/k;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->j()V

    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 183
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->o:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 184
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->w:Lcom/dolphin/browser/share/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 364
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->w:Lcom/dolphin/browser/share/a/a;

    if-nez v1, :cond_1

    .line 370
    new-instance v1, Lcom/dolphin/browser/share/a/a;

    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/share/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dolphin/browser/share/a/k;->w:Lcom/dolphin/browser/share/a/a;

    .line 371
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->w:Lcom/dolphin/browser/share/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->B:Lcom/dolphin/browser/share/a/f;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/a/a;->a(Lcom/dolphin/browser/share/a/f;)V

    .line 376
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->w:Lcom/dolphin/browser/share/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 377
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->w:Lcom/dolphin/browser/share/a/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/a/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private l()V
    .locals 3

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->x:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 382
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/share/a/k;->x:Landroid/app/ProgressDialog;

    .line 383
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->x:Landroid/app/ProgressDialog;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0595

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->x:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 388
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->x:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 392
    return-void
.end method

.method private n()Lcom/dolphin/browser/q/b/n;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 432
    new-instance v2, Lcom/dolphin/browser/q/b/n;

    invoke-direct {v2}, Lcom/dolphin/browser/q/b/n;-><init>()V

    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/dolphin/browser/q/b/n;->d:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/dolphin/browser/q/b/n;->a:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/dolphin/browser/q/b/n;->b:Ljava/lang/String;

    .line 438
    iget-object v0, v2, Lcom/dolphin/browser/q/b/n;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "Untitled"

    iput-object v0, v2, Lcom/dolphin/browser/q/b/n;->b:Ljava/lang/String;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_3

    check-cast v0, Lcom/c/b/c/l;

    :goto_1
    iput-object v0, v2, Lcom/dolphin/browser/q/b/n;->f:Lcom/c/b/c/l;

    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\n"

    const-string v4, "<br/>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/dolphin/browser/q/b/n;->c:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Lcom/dolphin/browser/share/a/v;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/dolphin/browser/q/b/n;->g:Ljava/util/List;

    .line 452
    invoke-direct {p0, v2}, Lcom/dolphin/browser/share/a/k;->a(Lcom/dolphin/browser/q/b/n;)V

    .line 454
    return-object v2

    .line 437
    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 443
    goto :goto_1

    .line 446
    :cond_4
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public a(Lcom/c/b/c/l;)V
    .locals 2

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/c/b/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/share/a;)V
    .locals 2

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->n()Lcom/dolphin/browser/q/b/n;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/share/a/k;->a(Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/share/a;)V

    .line 279
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 280
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e059c

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 281
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 284
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    if-eqz p1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->i:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 205
    :goto_1
    return-void

    .line 197
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->i:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const v6, 0x7f0a0101

    const v5, 0x7f02027b

    const v4, 0x7f0a00fe

    const v3, 0x7f0a0100

    .line 208
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/share/a/k;->i:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/share/a/k;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->f:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 213
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->k:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->m:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->m:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 219
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->n:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->o:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 223
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->o:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 224
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->q:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 225
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->r:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 226
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->s:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 227
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->t:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0102

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 228
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/l;

    .line 293
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    .line 295
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->v:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->u:Lcom/dolphin/browser/share/a/g;

    if-nez v1, :cond_3

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/k;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 297
    new-instance v2, Lcom/dolphin/browser/share/a/g;

    invoke-direct {v2, v1, v0}, Lcom/dolphin/browser/share/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dolphin/browser/share/a/k;->u:Lcom/dolphin/browser/share/a/g;

    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->u:Lcom/dolphin/browser/share/a/g;

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/share/a/k;->a(Landroid/content/Context;Lcom/dolphin/browser/share/a/g;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/k;->v:Landroid/app/AlertDialog;

    .line 303
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->v:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 304
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {v0}, Lcom/c/b/c/l;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->u:Lcom/dolphin/browser/share/a/g;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/a/g;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public e()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->v:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 333
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 233
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08032d

    if-ne v0, v1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 260
    :cond_0
    :goto_1
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08032f

    if-ne v0, v1, :cond_5

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->b()Ljava/util/List;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 240
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->g()V

    goto :goto_1

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/dolphin/browser/share/a/k;->d()V

    .line 244
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->c()Lcom/c/b/c/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/be;)V

    goto :goto_1

    .line 248
    :cond_5
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080320

    if-ne v0, v1, :cond_8

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->d()Ljava/util/List;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 252
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/share/a/k;->d:Lcom/dolphin/browser/q/b/ag;

    iget-object v1, p0, Lcom/dolphin/browser/share/a/k;->A:Lcom/dolphin/browser/q/b/bg;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/bg;)V

    goto :goto_1

    .line 254
    :cond_7
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->k()V

    goto :goto_1

    .line 256
    :cond_8
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080337

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080339

    if-ne v0, v1, :cond_0

    .line 258
    :cond_9
    invoke-direct {p0}, Lcom/dolphin/browser/share/a/k;->h()V

    goto :goto_1
.end method
