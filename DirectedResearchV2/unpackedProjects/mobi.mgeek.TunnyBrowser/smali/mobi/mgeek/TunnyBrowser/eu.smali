.class public Lmobi/mgeek/TunnyBrowser/eu;
.super Ljava/lang/Object;
.source "ExtensionLoader.java"


# direct methods
.method public static a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/extensions/ISelectionExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 265
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 271
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v3, "old_addons"

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 273
    if-eqz v1, :cond_2

    .line 275
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 276
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 277
    invoke-interface {v1}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->wantToShowOptionForTextSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 281
    :catch_1
    move-exception v0

    .line 282
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 285
    :cond_2
    return-object v2
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 421
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->k()Lcom/dolphin/browser/extensions/ITitleBarExtension;

    move-result-object v0

    .line 422
    invoke-interface {v0, p0, p1, p2}, Lcom/dolphin/browser/extensions/ITitleBarExtension;->updateTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/core/ITab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    .locals 1

    .prologue
    .line 412
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->k()Lcom/dolphin/browser/extensions/ITitleBarExtension;

    move-result-object v0

    .line 413
    invoke-interface {v0, p0, p1, p2}, Lcom/dolphin/browser/extensions/ITitleBarExtension;->initTitleBarIcons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->c()Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    move-result-object v0

    .line 198
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->postOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "old_addons"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 206
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 207
    invoke-static {p0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v3

    invoke-interface {p1}, Lcom/dolphin/browser/core/IHttpAuthHandler;->getHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HttpAuthHandler;

    invoke-interface {v0, v3, v1, p2, p3}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->postOnReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 213
    :cond_0
    return-void

    .line 199
    :catch_1
    move-exception v0

    .line 200
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->c()Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    move-result-object v0

    .line 159
    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->postPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->c()Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    move-result-object v0

    .line 168
    invoke-interface {v0, p0, p1, p2}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->postReceiveTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/extensions/n;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    .line 398
    instance-of v1, v0, Lcom/dolphin/browser/extensions/ISelectionExtension;

    if-eqz v1, :cond_1

    .line 399
    check-cast v0, Lcom/dolphin/browser/extensions/ISelectionExtension;

    .line 400
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/extensions/ISelectionExtension;->handleText(Landroid/content/Context;Ljava/lang/String;)Z

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    instance-of v1, v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    if-eqz v1, :cond_0

    .line 402
    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 403
    invoke-interface {v0, p2}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->handleTextSelectionOption(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/extensions/n;Lcom/dolphin/browser/core/IWebView;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    .line 380
    instance-of v1, v0, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    if-eqz v1, :cond_1

    .line 381
    check-cast v0, Lcom/dolphin/browser/extensions/IAddonBarExtention;

    .line 382
    invoke-interface {v0, p2}, Lcom/dolphin/browser/extensions/IAddonBarExtention;->onAddonClick(Landroid/content/Context;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    instance-of v1, v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    if-eqz v1, :cond_0

    .line 384
    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 385
    invoke-interface {v0, p2}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onAddonClick(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)I

    move-result v1

    .line 386
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 387
    invoke-static {p1}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onCreateAddonDialog(Landroid/webkit/WebView;Landroid/app/AlertDialog$Builder;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/core/ITab;)Z
    .locals 1

    .prologue
    .line 430
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->k()Lcom/dolphin/browser/extensions/ITitleBarExtension;

    move-result-object v0

    .line 431
    invoke-interface {v0, p0}, Lcom/dolphin/browser/extensions/ITitleBarExtension;->shouldHideFavicon(Lcom/dolphin/browser/core/ITab;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 435
    :goto_0
    return v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 435
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)Z
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/y;->h()Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    move-result-object v1

    .line 70
    invoke-interface {v1, p0, p1}, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;->onPrepareOptionsMenu(Lcom/dolphin/browser/core/IWebView;Landroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    const-string v2, "old_addons"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move v1, v0

    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 78
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 79
    invoke-static {p0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onPrepareOptionsMenu(Landroid/webkit/WebView;Landroid/view/Menu;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    or-int/2addr v1, v0

    .line 80
    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    :goto_2
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 85
    :cond_0
    :goto_3
    return v0

    .line 82
    :catch_2
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_3
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->h()Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    move-result-object v0

    .line 92
    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/extensions/IBrowserMenuExtension;->onOptionsItemSelected(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 97
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    const-string v2, "old_addons"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move v1, v0

    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 100
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 101
    invoke-static {p0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onOptionsItemSelected(Landroid/webkit/WebView;Landroid/view/MenuItem;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    or-int/2addr v1, v0

    .line 102
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v1

    .line 105
    :goto_2
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 107
    :cond_0
    :goto_3
    return v0

    .line 104
    :catch_2
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_3
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebView$HitTestResult;Landroid/view/ContextMenu;)Z
    .locals 6

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/y;->b()Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

    move-result-object v1

    .line 115
    invoke-interface {v1, p0, p1, p2}, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;->onCreateContextMenu(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IWebView$HitTestResult;Landroid/view/ContextMenu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    const-string v2, "old_addons"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move v1, v0

    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 123
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 124
    invoke-static {p0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/webkit/MyWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v4

    invoke-interface {v0, v3, v4, p2}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onCreateContextMenu(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;Landroid/view/ContextMenu;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    or-int/2addr v1, v0

    .line 126
    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    .line 129
    :goto_2
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 131
    :cond_0
    :goto_3
    return v0

    .line 128
    :catch_2
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_3
.end method

.method public static a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    .prologue
    .line 307
    const/4 v8, 0x0

    .line 309
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->f()Lcom/dolphin/browser/extensions/IBrowserExtension;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 310
    invoke-interface/range {v0 .. v7}, Lcom/dolphin/browser/extensions/IBrowserExtension;->onDownloadStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 314
    :goto_0
    if-eqz v8, :cond_1

    .line 315
    const/4 v8, 0x1

    .line 333
    :cond_0
    :goto_1
    return v8

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "old_addons"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    .line 320
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 321
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 322
    invoke-interface/range {v0 .. v7}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onDownloadStart(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 325
    if-nez v8, :cond_2

    :goto_3
    move v8, v0

    .line 328
    goto :goto_2

    .line 329
    :catch_1
    move-exception v0

    .line 330
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_3
.end method

.method public static b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/extensions/IDownloadExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 291
    if-eqz v2, :cond_0

    .line 293
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 295
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 298
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 301
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    .line 299
    goto :goto_2

    .line 297
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->c()Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    move-result-object v0

    .line 177
    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->postOnPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "old_addons"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 185
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 186
    invoke-static {p0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->postOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 192
    :cond_0
    return-void

    .line 178
    :catch_1
    move-exception v0

    .line 179
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->b()Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

    move-result-object v0

    .line 138
    invoke-interface {v0, p0, p1}, Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;->onContextItemSelected(Lcom/dolphin/browser/core/IWebView;Landroid/view/MenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move v1, v0

    .line 143
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v2, "old_addons"

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 146
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 147
    invoke-static {p0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onContextItemSelected(Landroid/webkit/WebView;Landroid/view/MenuItem;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 153
    :cond_0
    return v1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->c()Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    move-result-object v0

    .line 220
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->preOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    const-string v2, "old_addons"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move v2, v0

    :goto_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 228
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 229
    invoke-static {p0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v4

    invoke-interface {p1}, Lcom/dolphin/browser/core/IHttpAuthHandler;->getHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HttpAuthHandler;

    invoke-interface {v0, v4, v1, p2, p3}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->preOnReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    or-int/2addr v2, v0

    .line 230
    goto :goto_1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    .line 232
    :catch_1
    move-exception v1

    .line 233
    :goto_2
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 235
    :cond_0
    :goto_3
    return v0

    .line 232
    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_3
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 338
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->f()Lcom/dolphin/browser/extensions/IBrowserExtension;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBrowserExtension;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "old_addons"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_0

    .line 346
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 347
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 348
    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onResume()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 354
    :cond_0
    return-void

    .line 340
    :catch_1
    move-exception v0

    .line 341
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 358
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->f()Lcom/dolphin/browser/extensions/IBrowserExtension;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBrowserExtension;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 363
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "old_addons"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->f(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 367
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 368
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;

    .line 369
    invoke-interface {v0}, Lmobi/mgeek/TunnyBrowser/extensions/IExtension;->onPause()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 375
    :cond_0
    return-void

    .line 360
    :catch_1
    move-exception v0

    .line 361
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
