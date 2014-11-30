.class public Lcom/mgeek/android/util/m;
.super Ljava/lang/Object;
.source "NightModeHelpUtil.java"


# direct methods
.method public static a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/dolphin/browser/util/bu;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;I)V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/mgeek/android/util/m;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 34
    :cond_0
    return-void
.end method
