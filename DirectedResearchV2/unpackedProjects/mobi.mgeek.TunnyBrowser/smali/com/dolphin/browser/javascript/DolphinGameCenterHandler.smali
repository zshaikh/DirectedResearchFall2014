.class Lcom/dolphin/browser/javascript/DolphinGameCenterHandler;
.super Lcom/dolphin/browser/javascript/DolphinWebAppHandler;
.source "DolphinGameCenterHandler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dolphin/browser/javascript/DolphinWebAppHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "dolphinGameCenter"

    return-object v0
.end method

.method public createGameShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinGameCenterHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/javascript/DolphinGameCenterHandler;->createGameShortcutImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public createGameShortcutImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "createGameShortcut"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "name"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "gameUrl"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "iconUrl"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "timeout"
                b = 0x2
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 34
    const/4 v1, 0x1

    .line 38
    :try_start_0
    const-string v2, "shortcut"

    invoke-static {p3, p4, v2}, Lcom/dolphin/browser/util/at;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 39
    if-nez v2, :cond_0

    .line 45
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, p1, p2, v2, v3}, Lcom/dolphin/browser/util/BrowserUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 49
    :goto_1
    return v0

    .line 42
    :catch_0
    move-exception v1

    .line 45
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, p1, p2, v3, v3}, Lcom/dolphin/browser/util/BrowserUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, p1, p2, v3, v3}, Lcom/dolphin/browser/util/BrowserUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public removeGameShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ldolphin/webkit/annotation/JavascriptInterface;
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/dolphin/browser/javascript/DolphinGameCenterHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/javascript/DolphinGameCenterHandler;->removeGameShortcutImpl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeGameShortcutImpl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;
        a = "removeGameShortcut"
        b = {
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "name"
            .end subannotation,
            .subannotation Lcom/dolphin/browser/javascript/JavaScriptRequestParameter;
                a = "gameUrl"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
