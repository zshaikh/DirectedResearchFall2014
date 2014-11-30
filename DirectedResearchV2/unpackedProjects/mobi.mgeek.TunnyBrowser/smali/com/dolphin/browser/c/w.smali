.class public Lcom/dolphin/browser/c/w;
.super Lcom/dolphin/browser/c/a;
.source "TabForwardCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 18
    const-string v2, "Click Forward Button"

    sget-object v3, Lcom/dolphin/browser/util/cx;->a:Ljava/lang/Object;

    invoke-static {v2, v1, v0, v3}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZLjava/lang/Object;)Lcom/dolphin/browser/util/cw;

    .line 20
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    .line 21
    if-nez v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->cancelFindOnPage()V

    .line 25
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 29
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->goForward()V

    .line 30
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->isLoadingReceivedError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-static {v2}, Lcom/dolphin/browser/t/k;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 33
    :cond_2
    invoke-interface {v2, v1}, Lcom/dolphin/browser/core/ITab;->setIsBackOrForward(Z)V

    .line 34
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/dolphin/browser/c/x;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/c/x;-><init>(Lcom/dolphin/browser/c/w;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 41
    goto :goto_0
.end method
