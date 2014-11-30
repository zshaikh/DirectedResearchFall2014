.class public Lcom/dolphin/browser/util/b/b;
.super Ljava/lang/Object;
.source "SearchTrackUtil.java"


# direct methods
.method public static a()V
    .locals 3

    .prologue
    .line 20
    const-string v0, "search_new"

    const-string v1, "entry"

    const-string v2, "search"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "search_new"

    const-string v1, "switch_search_engine"

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/util/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 151
    if-eqz p0, :cond_0

    .line 152
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->j()V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->k()V

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "go"

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->b(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    const-string v0, "search_new"

    const-string v1, "click"

    invoke-static {v0, v1, p0}, Lcom/dolphin/browser/util/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "cancel"

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->b(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "keyboard_enter"

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->b(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "history"

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->b(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "bookmarks"

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->b(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "most_visited"

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->b(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "clear_browsing_data"

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->b(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static i()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "manage"

    invoke-static {v0}, Lcom/dolphin/browser/util/b/b;->b(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private static j()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "search_new"

    const-string v1, "input"

    const-string v2, "URL"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private static k()V
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v1

    .line 63
    const/4 v0, 0x0

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v1}, Lcom/dolphin/browser/search/g;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    const-string v1, "search_new"

    const-string v2, "input"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "suggested_keyword||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
