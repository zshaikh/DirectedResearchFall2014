.class public Lcom/dolphin/browser/c/u;
.super Lcom/dolphin/browser/c/a;
.source "TabBackCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 19
    const-string v2, "Click Back Button"

    sget-object v3, Lcom/dolphin/browser/util/cx;->a:Ljava/lang/Object;

    invoke-static {v2, v1, v0, v3}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZLjava/lang/Object;)Lcom/dolphin/browser/util/cw;

    .line 21
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->cancelFindOnPage()V

    .line 26
    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 31
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/extensions/y;->l()Lcom/dolphin/browser/extensions/IKeyEventExtension;

    move-result-object v3

    .line 33
    invoke-interface {v3, v2}, Lcom/dolphin/browser/extensions/IKeyEventExtension;->onBackButton(Lcom/dolphin/browser/core/IWebView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    invoke-interface {v2}, Lcom/dolphin/browser/core/ITab;->goBack()V

    .line 38
    invoke-interface {v2, v1}, Lcom/dolphin/browser/core/ITab;->setIsBackOrForward(Z)V

    .line 39
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/dolphin/browser/c/v;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/c/v;-><init>(Lcom/dolphin/browser/c/u;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 46
    goto :goto_0
.end method
