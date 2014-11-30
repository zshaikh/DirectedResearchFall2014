.class public Lcom/dolphin/browser/promoted/impl/AddShortcutPromotionImpl;
.super Lcom/dolphin/browser/promoted/a;
.source "AddShortcutPromotionImpl.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/a;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {}, Lcom/dolphin/browser/search/j;->a()Lcom/dolphin/browser/search/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/j;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/dolphin/browser/promoted/impl/AddShortcutPromotionImpl;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->q(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ae()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/promoted/impl/AddShortcutPromotionImpl;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 61
    const-string v0, "search"

    const-string v1, "add_shortcut"

    const-string v2, "%Yes%"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 64
    const-string v0, "whistle"

    const-string v1, "add_shorcut"

    const-string v2, "confirm"

    invoke-static {v0, v1, v2, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    invoke-static {}, Lcom/dolphin/browser/search/j;->a()Lcom/dolphin/browser/search/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/j;->a(Z)V

    .line 69
    new-instance v0, Lcom/dolphin/browser/promoted/impl/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/promoted/impl/a;-><init>(Lcom/dolphin/browser/promoted/impl/AddShortcutPromotionImpl;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 111
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 117
    const-string v0, "search"

    const-string v1, "add_shortcut"

    const-string v2, "%No%"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 119
    const-string v0, "whistle"

    const-string v1, "add_shorcut"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    invoke-static {}, Lcom/dolphin/browser/search/j;->a()Lcom/dolphin/browser/search/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/j;->a(Z)V

    .line 123
    return-void
.end method
