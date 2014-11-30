.class Lmobi/mgeek/TunnyBrowser/aw;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/util/ci;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 5737
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/aw;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 5742
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aw;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-boolean v0, v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5752
    :cond_0
    :goto_0
    return-void

    .line 5745
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aw;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/tablist/TabListView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aw;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/tablist/TabListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/TabListView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aw;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->A(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aw;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->A(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5747
    :cond_3
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aw;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->B(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 5748
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aw;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v1, 0x7f040016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->overridePendingTransition(II)V

    .line 5749
    const-string v0, "Sonar"

    const-string v1, "launchby"

    const-string v2, "shake"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
