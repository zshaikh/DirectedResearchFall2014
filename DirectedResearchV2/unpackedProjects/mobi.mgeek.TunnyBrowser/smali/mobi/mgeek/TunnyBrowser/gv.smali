.class public Lmobi/mgeek/TunnyBrowser/gv;
.super Ljava/lang/Object;
.source "SlidingMenuHelper.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/k;
.implements Lmobi/mgeek/TunnyBrowser/fl;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field private c:Lmobi/mgeek/TunnyBrowser/gx;

.field private d:Lcom/jeremyfeinstein/slidingmenu/lib/k;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gv;->a:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/gv;)Lmobi/mgeek/TunnyBrowser/gx;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gv;->c:Lmobi/mgeek/TunnyBrowser/gx;

    return-object v0
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/gv;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lmobi/mgeek/TunnyBrowser/gv;->e:Z

    return p1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gv;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 223
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gv;->a:Landroid/content/Context;

    check-cast v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 224
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    const-string v1, "rightsidebar"

    .line 240
    :goto_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isFullScreen()Z

    move-result v2

    .line 241
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    if-eqz v2, :cond_3

    const-string v0, "homefullscreen"

    .line 247
    :goto_2
    const-string v2, "swipe"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "bookmark bar"

    goto :goto_1

    .line 243
    :cond_3
    const-string v0, "fromhome"

    goto :goto_2

    .line 245
    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "webfullscreen"

    goto :goto_2

    :cond_5
    const-string v0, "fromweb"

    goto :goto_2
.end method


# virtual methods
.method public a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gv;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "SlidingMenuHelper init method should be called first."

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gv;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gv;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    .line 61
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gv;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/gv;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 63
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(I)V

    .line 64
    invoke-virtual {v0, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Landroid/view/View;)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/view/View;)V

    .line 66
    invoke-virtual {v0, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Landroid/view/View;)V

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmobi/mgeek/TunnyBrowser/gv;->d(Z)V

    .line 68
    invoke-virtual {v0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->h(I)V

    .line 69
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->g(I)V

    .line 70
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0053

    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->f(I)V

    .line 71
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 72
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Landroid/graphics/drawable/Drawable;)V

    .line 75
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->k(I)V

    .line 76
    invoke-virtual {v0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e(Z)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(F)V

    .line 78
    invoke-virtual {v0, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Lcom/jeremyfeinstein/slidingmenu/lib/k;)V

    .line 80
    new-instance v1, Lmobi/mgeek/TunnyBrowser/gw;

    invoke-direct {v1, p0, v0}, Lmobi/mgeek/TunnyBrowser/gw;-><init>(Lmobi/mgeek/TunnyBrowser/gv;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Lcom/jeremyfeinstein/slidingmenu/lib/f;)V

    .line 99
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/k;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gv;->d:Lcom/jeremyfeinstein/slidingmenu/lib/k;

    .line 43
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/l;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gv;->b:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Lcom/jeremyfeinstein/slidingmenu/lib/l;)V

    .line 47
    return-void
.end method

.method public a(Lmobi/mgeek/TunnyBrowser/gx;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gv;->c:Lmobi/mgeek/TunnyBrowser/gx;

    .line 39
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/gv;->h()V

    .line 256
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gv;->d:Lcom/jeremyfeinstein/slidingmenu/lib/k;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gv;->d:Lcom/jeremyfeinstein/slidingmenu/lib/k;

    invoke-interface {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/k;->a(Z)V

    .line 260
    :cond_1
    return-void
.end method

.method public a_(Z)V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d(Z)V

    .line 148
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/gv;->e(Z)V

    .line 197
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/gv;->f(Z)V

    .line 202
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Z)V

    .line 112
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->f(I)V

    .line 184
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Z)V

    .line 160
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/gv;->a_(Z)V

    .line 143
    return-void
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 165
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/gv;->a()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e()Z

    move-result v0

    return v0
.end method
