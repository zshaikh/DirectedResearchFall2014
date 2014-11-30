.class public Lcom/dolphin/browser/h/h;
.super Lcom/dolphin/browser/h/a;
.source "ShowSonarGesturePopListener.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/h/a;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 18
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/h/h;->q:Lcom/dolphin/browser/c/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    .line 70
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/dolphin/browser/h/a;->a()V

    .line 23
    new-instance v0, Lcom/dolphin/browser/c/m;

    invoke-direct {v0}, Lcom/dolphin/browser/c/m;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/h/h;->q:Lcom/dolphin/browser/c/a;

    .line 24
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0}, Lcom/dolphin/browser/h/a;->b()V

    .line 29
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/a/a;->d()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020147

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/h/h;->i:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202b0

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/dolphin/browser/h/h;->c:Z

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "toolbar"

    const-string v1, "longpress"

    const-string v2, "menu"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/h/h;->f()V

    .line 47
    iget-boolean v0, p0, Lcom/dolphin/browser/h/h;->c:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/a/a;->d()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gesture"

    .line 51
    :goto_0
    const-string v1, "toolbar"

    const-string v2, "longpress"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void

    .line 48
    :cond_1
    const-string v0, "sonar"

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dolphin/browser/h/h;->f()V

    .line 59
    iget-boolean v0, p0, Lcom/dolphin/browser/h/h;->c:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/dolphin/browser/vg/a/a;->a()Lcom/dolphin/browser/vg/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/a/a;->d()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gesture"

    .line 63
    :goto_0
    const-string v1, "toolbar"

    const-string v2, "swipe"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void

    .line 60
    :cond_1
    const-string v0, "sonar"

    goto :goto_0
.end method
