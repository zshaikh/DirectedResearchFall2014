.class public Lcom/dolphin/browser/androidwebkit/t;
.super Ljava/lang/Object;
.source "MyWebViewHelper.java"


# direct methods
.method public static a(Landroid/webkit/WebView;)V
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

    instance-of v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 31
    check-cast v0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->A()V

    .line 32
    check-cast p0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->z()V

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;Lcom/dolphin/browser/androidwebkit/u;)V
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
    invoke-static {p0, p1}, Lcom/dolphin/browser/androidwebkit/t;->b(Landroid/webkit/WebView;Lcom/dolphin/browser/androidwebkit/u;)V

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    if-eqz v0, :cond_2

    .line 93
    check-cast p0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    .line 94
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/u;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p0, p1}, Lcom/dolphin/browser/androidwebkit/t;->b(Landroid/webkit/WebView;Lcom/dolphin/browser/androidwebkit/u;)V

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/androidwebkit/MyWebView;)V
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

    instance-of v0, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->A()V

    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->z()V

    goto :goto_0
.end method

.method public static b(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    if-eqz v1, :cond_0

    .line 111
    check-cast p0, Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->y()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/webkit/WebView;Lcom/dolphin/browser/androidwebkit/u;)V
    .locals 1

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/dolphin/browser/androidwebkit/u;->a(Landroid/webkit/WebView;Z)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/dolphin/browser/androidwebkit/u;->a(Landroid/webkit/WebView;[Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method
