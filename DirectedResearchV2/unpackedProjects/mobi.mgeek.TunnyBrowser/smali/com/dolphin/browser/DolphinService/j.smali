.class public Lcom/dolphin/browser/DolphinService/j;
.super Ljava/lang/Object;
.source "PromotionClientImpl.java"

# interfaces
.implements Lcom/dolphin/browser/promoted/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;ZZ)V

    .line 74
    if-eqz p3, :cond_0

    .line 75
    const-string v0, "whistle"

    const-string v1, "default_browser"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "whistle"

    const-string v1, "default_browser"

    const-string v2, "confirm"

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->n(Landroid/content/Context;Z)V

    .line 22
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->o(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 49
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/Browser;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->Y()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p1}, Lmobi/mgeek/TunnyBrowser/Browser;->b(Landroid/content/Context;)Z

    .line 68
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->w()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
