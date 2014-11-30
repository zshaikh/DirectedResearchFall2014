.class public Lcom/dolphin/browser/dolphinwebkit/i;
.super Ljava/lang/Object;
.source "MyWebViewHelper.java"


# direct methods
.method public static a(Lcom/dolphin/browser/dolphinwebkit/MyWebView;)V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isRememberPasswords()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->fillUsernamePasswordIfNeededAsync()V

    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->saveLastUrl()V

    goto :goto_0
.end method

.method public static a(Ldolphin/webkit/WebView;)V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isRememberPasswords()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 31
    check-cast v0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->fillUsernamePasswordIfNeededAsync()V

    .line 32
    check-cast p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->saveLastUrl()V

    goto :goto_0
.end method

.method public static a(Ldolphin/webkit/WebView;Lcom/dolphin/browser/dolphinwebkit/j;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isRememberPasswords()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :cond_0
    invoke-static {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/i;->b(Ldolphin/webkit/WebView;Lcom/dolphin/browser/dolphinwebkit/j;)V

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    if-eqz v0, :cond_2

    .line 93
    check-cast p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    .line 94
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getUsernamePasswordIfNeededAsync(Lcom/dolphin/browser/dolphinwebkit/j;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p0, p1}, Lcom/dolphin/browser/dolphinwebkit/i;->b(Ldolphin/webkit/WebView;Lcom/dolphin/browser/dolphinwebkit/j;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->p()Z

    move-result v2

    invoke-virtual {v1}, Lcom/dolphin/browser/core/DolphinWebkitManager;->i()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int/2addr v0, v2

    .line 123
    :goto_0
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ldolphin/webkit/WebView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    if-eqz v1, :cond_0

    .line 110
    check-cast p0, Lcom/dolphin/browser/dolphinwebkit/MyWebView;

    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/MyWebView;->getLastUrl()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_0
    return-object v0
.end method

.method public static b(Ldolphin/webkit/WebView;Lcom/dolphin/browser/dolphinwebkit/j;)V
    .locals 1

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/dolphin/browser/dolphinwebkit/j;->a(Ldolphin/webkit/WebView;Z)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/dolphin/browser/dolphinwebkit/j;->a(Ldolphin/webkit/WebView;[Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method
