.class public Lcom/dolphin/browser/m/b;
.super Lcom/dolphin/browser/m/a;
.source "CommunityFansPopup.java"


# instance fields
.field private a:Lcom/dolphin/browser/m/c;

.field private b:Lcom/dolphin/browser/m/a/d;


# direct methods
.method private e()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/c;->f()V

    .line 65
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "community_fans"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "promotion dialog"

    const-string v1, "community_dialog"

    const-string v2, "showdialog"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    new-instance v0, Lcom/dolphin/browser/m/a/d;

    new-instance v3, Lcom/dolphin/browser/m/a/b;

    invoke-direct {v3, p1}, Lcom/dolphin/browser/m/a/b;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/m/a/d;-><init>(Landroid/content/Context;Lcom/dolphin/browser/m/a;Lcom/dolphin/browser/m/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/m/b;->b:Lcom/dolphin/browser/m/a/d;

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->b:Lcom/dolphin/browser/m/a/d;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    invoke-virtual {p0}, Lcom/dolphin/browser/m/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/c;->b(Ljava/lang/String;)V

    .line 82
    const-string v0, "CommunityFansPopup"

    const-string v1, "showPopup"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 87
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    const-string v0, "promotion dialog"

    const-string v1, "community_dialog"

    const-string v2, "ok"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "http://www.dolphin-browser.com/facebook/LikeUs.html"

    invoke-static {v0, v1, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/m/b;->a(Z)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "promotion dialog"

    const-string v1, "community_dialog"

    const-string v2, "later"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/dolphin/browser/m/b;->e()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/m/c;->a(Z)V

    .line 61
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/dolphin/browser/m/b;->d()V

    .line 115
    return-void
.end method

.method public b()Z
    .locals 6

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    invoke-virtual {p0}, Lcom/dolphin/browser/m/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/c;->c()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    invoke-virtual {v2}, Lcom/dolphin/browser/m/c;->e()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->b:Lcom/dolphin/browser/m/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/m/b;->b:Lcom/dolphin/browser/m/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->b:Lcom/dolphin/browser/m/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/a/d;->a()V

    .line 110
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/c;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/m/b;->a:Lcom/dolphin/browser/m/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/c;->a(I)V

    .line 103
    :cond_0
    return-void
.end method
