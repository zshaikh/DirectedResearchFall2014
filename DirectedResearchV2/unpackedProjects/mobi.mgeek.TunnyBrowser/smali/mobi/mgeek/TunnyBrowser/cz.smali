.class public Lmobi/mgeek/TunnyBrowser/cz;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"


# static fields
.field private static a:Lmobi/mgeek/TunnyBrowser/cz;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/dolphin/browser/update/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/cz;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/cz;->a:Lmobi/mgeek/TunnyBrowser/cz;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lmobi/mgeek/TunnyBrowser/dr;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/dr;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->c:Lcom/dolphin/browser/update/g;

    .line 72
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method public static a()Lmobi/mgeek/TunnyBrowser/cz;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lmobi/mgeek/TunnyBrowser/cz;->a:Lmobi/mgeek/TunnyBrowser/cz;

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/cz;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/cz;->c()V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/cz;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/cz;->d()V

    return-void
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/cz;)Lcom/dolphin/browser/update/g;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->c:Lcom/dolphin/browser/update/g;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    invoke-static {}, Lcom/dolphin/browser/extensions/a/c;->a()Lcom/dolphin/browser/extensions/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/a/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-static {}, Lcom/dolphin/browser/promoted/f;->a()Lcom/dolphin/browser/promoted/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/promoted/f;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-static {}, Lcom/dolphin/browser/util/be;->a()Lcom/dolphin/browser/util/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/be;->a(Ljava/util/List;)V

    .line 374
    return-void
.end method

.method static synthetic d(Lmobi/mgeek/TunnyBrowser/cz;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 378
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    .line 379
    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/g;->I()Ljava/util/Set;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 385
    if-eqz v0, :cond_3

    .line 387
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/dolphin/browser/f/d/d;->a()Lcom/dolphin/browser/f/d/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/f/d/d;->a(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;

    move-result-object v3

    .line 389
    if-nez v3, :cond_2

    .line 390
    invoke-static {v0}, Lcom/dolphin/browser/f/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 399
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v3}, Lcom/dolphin/browser/f/d/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 403
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->a(Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lcom/dolphin/browser/util/de;->a()V

    .line 80
    invoke-static {}, Lcom/dolphin/browser/util/cy;->a()Lcom/dolphin/browser/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/cy;->c()V

    .line 82
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/da;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/da;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dm;

    invoke-direct {v1, p0, p2}, Lmobi/mgeek/TunnyBrowser/dm;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/du;

    invoke-direct {v1, p0, p2}, Lmobi/mgeek/TunnyBrowser/du;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dv;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/dv;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dx;

    invoke-direct {v1, p0, p2}, Lmobi/mgeek/TunnyBrowser/dx;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dz;

    invoke-direct {v1, p0, p2}, Lmobi/mgeek/TunnyBrowser/dz;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ea;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/ea;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/eb;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/eb;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ec;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/ec;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/db;

    invoke-direct {v1, p0, p2}, Lmobi/mgeek/TunnyBrowser/db;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dc;

    invoke-direct {v1, p0, p1}, Lmobi/mgeek/TunnyBrowser/dc;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Landroid/content/Intent;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dd;

    invoke-direct {v1, p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/dd;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Landroid/content/Intent;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/df;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/df;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dg;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/dg;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dh;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/dh;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/di;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/di;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dj;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/dj;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dk;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/dk;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dl;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/dl;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dn;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/dn;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/do;

    invoke-direct {v1, p0, p2}, Lmobi/mgeek/TunnyBrowser/do;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dp;

    invoke-direct {v1, p0, p2}, Lmobi/mgeek/TunnyBrowser/dp;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cz;->b:Landroid/os/Handler;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/dq;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/dq;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    return-void
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 408
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v1

    .line 411
    invoke-static {}, Lcom/dolphin/browser/core/g;->a()Lcom/dolphin/browser/core/g;

    move-result-object v2

    .line 412
    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z

    move-result v3

    .line 414
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    if-eqz v3, :cond_0

    .line 417
    const-string v1, "market://details?id=mobi.mgeek.TunnyBrowser"

    .line 418
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05b9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02f4

    new-instance v3, Lmobi/mgeek/TunnyBrowser/dt;

    invoke-direct {v3, p0, v0}, Lmobi/mgeek/TunnyBrowser/dt;-><init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03b4

    new-instance v2, Lmobi/mgeek/TunnyBrowser/ds;

    invoke-direct {v2, p0}, Lmobi/mgeek/TunnyBrowser/ds;-><init>(Lmobi/mgeek/TunnyBrowser/cz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->m()Lcom/dolphin/browser/core/f;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/core/f;->a:Lcom/dolphin/browser/core/f;

    if-eq v1, v3, :cond_3

    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {v2}, Lcom/dolphin/browser/core/g;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(Landroid/content/Context;Z)V

    .line 465
    invoke-virtual {v2}, Lcom/dolphin/browser/core/g;->f()V

    goto :goto_0

    .line 468
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2, v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a(ZILandroid/content/Context;)Z

    .line 470
    invoke-static {}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->a()Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->g()V

    goto :goto_0
.end method
