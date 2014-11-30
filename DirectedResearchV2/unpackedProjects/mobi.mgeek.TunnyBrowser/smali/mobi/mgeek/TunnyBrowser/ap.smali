.class Lmobi/mgeek/TunnyBrowser/ap;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/tabbar/i;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 4752
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 4756
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->t(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4757
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->u(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/menu/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->c()V

    .line 4759
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4764
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ap;->b()V

    .line 4765
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;I)I

    .line 4766
    invoke-static {v2}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 4767
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionNewTab2()Z

    .line 4768
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->v(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 4769
    invoke-static {v2}, Lcom/dolphin/browser/test/c;->b(I)V

    .line 4770
    const-string v0, "tab bar"

    const-string v1, "click"

    const-string v2, "newtab"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4772
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x3

    .line 4777
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/ap;->b()V

    .line 4778
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w()V

    .line 4779
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;I)I

    .line 4780
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 4781
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4782
    invoke-static {v2}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 4783
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 4784
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->v(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 4785
    invoke-static {v2}, Lcom/dolphin/browser/test/c;->b(I)V

    .line 4786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closetab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4789
    const-string v1, "tab bar"

    const-string v2, "click"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4807
    :cond_0
    :goto_1
    return-void

    .line 4786
    :cond_1
    const-string v0, "2"

    goto :goto_0

    .line 4792
    :cond_2
    invoke-static {v4}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 4793
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->switchToTab(Lcom/dolphin/browser/core/ITab;)Z

    .line 4794
    invoke-static {v4}, Lcom/dolphin/browser/test/c;->b(I)V

    .line 4795
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v0

    .line 4796
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ap;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v1

    .line 4797
    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    .line 4800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchtab"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v1, v0, :cond_3

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4803
    const-string v1, "tab bar"

    const-string v2, "click"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4800
    :cond_3
    const-string v0, "2"

    goto :goto_2
.end method
