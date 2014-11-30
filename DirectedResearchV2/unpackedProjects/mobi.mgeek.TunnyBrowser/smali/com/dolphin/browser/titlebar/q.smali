.class public Lcom/dolphin/browser/titlebar/q;
.super Ljava/lang/Object;
.source "TitleBarManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

.field private c:Lcom/dolphin/browser/core/TabManager;

.field private d:Lcom/dolphin/browser/titlebar/k;

.field private e:Lcom/dolphin/browser/titlebar/g;

.field private f:Lcom/dolphin/browser/titlebar/a;

.field private g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

.field private h:I

.field private i:Z

.field private j:Lcom/dolphin/browser/titlebar/b;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/dolphin/browser/titlebar/q;->i:Z

    .line 76
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 77
    iput-object p2, p0, Lcom/dolphin/browser/titlebar/q;->c:Lcom/dolphin/browser/core/TabManager;

    .line 78
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    .line 80
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/a/a;->addObserver(Ljava/util/Observer;)V

    .line 81
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 84
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 85
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 86
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 87
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 88
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 90
    new-instance v0, Lcom/dolphin/browser/titlebar/k;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/titlebar/k;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/k;->c(Z)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    new-instance v1, Lcom/dolphin/browser/titlebar/r;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/titlebar/r;-><init>(Lcom/dolphin/browser/titlebar/q;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/k;->a(Lcom/dolphin/browser/titlebar/p;)V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/k;->d(Z)V

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    new-instance v1, Lcom/dolphin/browser/titlebar/s;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/titlebar/s;-><init>(Lcom/dolphin/browser/titlebar/q;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/k;->a(Lcom/dolphin/browser/titlebar/o;)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/titlebar/q;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/dolphin/browser/titlebar/q;->h:I

    return v0
.end method

.method public static a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)Lcom/dolphin/browser/titlebar/q;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/dolphin/browser/titlebar/q;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/titlebar/q;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)V

    .line 69
    const-string v1, "TitleBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object v0
.end method

.method private a(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/titlebar/a;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/titlebar/g;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 640
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/titlebar/q;)Lcom/dolphin/browser/titlebar/TinyTitleBar;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/q;->i:Z

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->r()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->f()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->setVisibility(I)V

    .line 275
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/k;->a(I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/a;->a(I)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/g;->a(I)V

    .line 270
    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->a(Landroid/graphics/Bitmap;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->a(Landroid/graphics/Bitmap;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->a(Landroid/graphics/Bitmap;)V

    .line 288
    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->a(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->a(Landroid/graphics/drawable/Drawable;)V

    .line 355
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->f(Lcom/dolphin/browser/core/ITab;)V

    .line 162
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->a(Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V

    .line 474
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/titlebar/b;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/q;->j:Lcom/dolphin/browser/titlebar/b;

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->b(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->b(Ljava/lang/String;)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->b(Ljava/lang/String;)V

    .line 314
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/dolphin/browser/titlebar/q;->i:Z

    .line 114
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/dolphin/browser/titlebar/q;->i:Z

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->r()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->f()V

    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->e()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/dolphin/browser/titlebar/q;->h:I

    if-eq v0, p1, :cond_3

    .line 328
    iput p1, p0, Lcom/dolphin/browser/titlebar/q;->h:I

    .line 329
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->b(I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->b(I)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->b(I)V

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->a(I)V

    .line 342
    :cond_3
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/ITab;->setTitleBar(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->c(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method public c()Lcom/dolphin/browser/titlebar/k;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->c(I)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->c(I)V

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->c(I)V

    .line 653
    :cond_2
    return-void
.end method

.method public c(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 180
    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->o()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->o()V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/g;->o()V

    .line 193
    :cond_2
    return-void
.end method

.method public d(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/k;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/a;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/titlebar/g;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 301
    :cond_2
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->h()Lcom/dolphin/browser/titlebar/TinyTitleBar;

    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->c:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/titlebar/k;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getVisibleTitleHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 209
    :cond_2
    new-instance v0, Lcom/dolphin/browser/titlebar/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/titlebar/t;-><init>(Lcom/dolphin/browser/titlebar/q;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->setVisibility(I)V

    .line 229
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/dolphin/browser/titlebar/TinyTitleBar;
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/dolphin/browser/titlebar/TinyTitleBar;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->setVisibility(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Landroid/view/View;)Z

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->closeOptionsMenu()V

    goto :goto_0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->getHeight()I

    move-result v0

    .line 319
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    invoke-virtual {v1}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_0
    return v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->m_()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->m_()V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/g;->m_()V

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->g:Lcom/dolphin/browser/titlebar/TinyTitleBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/TinyTitleBar;->n_()V

    .line 371
    :cond_3
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->b()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 396
    :cond_1
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->b()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 404
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->p()Lcom/dolphin/browser/titlebar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->l_()V

    .line 409
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 410
    return-void
.end method

.method public p()Lcom/dolphin/browser/titlebar/a;
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Lcom/dolphin/browser/titlebar/a;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v2, p0, Lcom/dolphin/browser/titlebar/q;->c:Lcom/dolphin/browser/core/TabManager;

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/titlebar/a;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)V

    .line 416
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/a;->a(Lcom/dolphin/browser/titlebar/k;)V

    .line 417
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->j:Lcom/dolphin/browser/titlebar/b;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/a;->a(Lcom/dolphin/browser/titlebar/b;)V

    .line 418
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/a;->b(Lcom/dolphin/browser/titlebar/k;)V

    .line 419
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/a;->setVisibility(I)V

    .line 420
    iput-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    .line 421
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->c:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/a;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 424
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/a;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 426
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    return-object v0
.end method

.method public q()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 488
    .line 489
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 490
    if-nez v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v1, v0, v0}, Lcom/dolphin/browser/titlebar/a;->measure(II)V

    .line 502
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    .line 505
    :cond_2
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getType()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_3

    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getType()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->r()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 520
    if-nez v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_0

    .line 527
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getVisibleTitleHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->g()V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->g()V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/g;->g()V

    .line 542
    :cond_2
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->i()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->i()V

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/g;->i()V

    .line 555
    :cond_2
    return-void
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 565
    instance-of v0, p1, Lcom/dolphin/browser/ui/a/a;

    if-eqz v0, :cond_8

    .line 566
    check-cast p1, Lcom/dolphin/browser/ui/a/a;

    .line 567
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/a/a;->c()I

    move-result v0

    .line 568
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 569
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 570
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->a()V

    .line 572
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/k;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->a()V

    .line 576
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/a;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/g;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->E()V

    .line 626
    :cond_3
    :goto_0
    return-void

    .line 584
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 585
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/q;->d(Lcom/dolphin/browser/core/ITab;)V

    .line 586
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_5

    .line 587
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->f()Landroid/view/View;

    .line 588
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/k;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 590
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_6

    .line 591
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->f()Landroid/view/View;

    .line 592
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/a;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 594
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_7

    .line 595
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/g;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 597
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->E()V

    goto :goto_0

    .line 601
    :cond_8
    instance-of v0, p1, Lcom/dolphin/browser/k/c;

    if-eqz v0, :cond_9

    .line 602
    check-cast p1, Lcom/dolphin/browser/k/c;

    .line 603
    invoke-virtual {p1}, Lcom/dolphin/browser/k/c;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 604
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->n()V

    goto :goto_0

    .line 606
    :cond_9
    instance-of v0, p1, Lcom/dolphin/browser/k/e;

    if-eqz v0, :cond_a

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/titlebar/q;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/dolphin/browser/k/e;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 611
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/q;->o()V

    goto :goto_0

    .line 613
    :cond_a
    instance-of v0, p1, Lcom/dolphin/browser/k/a;

    if-eqz v0, :cond_d

    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    if-eqz v0, :cond_b

    .line 615
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->d:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/k;->e()V

    .line 617
    :cond_b
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    if-eqz v0, :cond_c

    .line 618
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->f:Lcom/dolphin/browser/titlebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/a;->e()V

    .line 620
    :cond_c
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    if-eqz v0, :cond_3

    .line 621
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/q;->e:Lcom/dolphin/browser/titlebar/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/g;->e()V

    goto/16 :goto_0

    .line 624
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/titlebar/q;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
