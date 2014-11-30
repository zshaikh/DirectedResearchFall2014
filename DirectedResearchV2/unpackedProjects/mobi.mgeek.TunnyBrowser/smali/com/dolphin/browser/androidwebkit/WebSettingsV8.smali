.class Lcom/dolphin/browser/androidwebkit/WebSettingsV8;
.super Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;
.source "WebSettingsV8.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# direct methods
.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;-><init>(Landroid/webkit/WebSettings;)V

    .line 38
    return-void
.end method


# virtual methods
.method public canQuickSelection()Z
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isMeizu()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;->canQuickSelection()Z

    move-result v0

    goto :goto_0
.end method

.method public getPluginState()Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV8;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public setPageCacheCapacity(I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV8;->a:Landroid/webkit/WebSettings;

    invoke-static {v0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8;->a(Landroid/webkit/WebSettings;I)V

    .line 51
    return-void
.end method

.method public setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV8;->a:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 56
    return-void
.end method
