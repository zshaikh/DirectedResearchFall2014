.class Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;
.super Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;
.source "WebSettingsV8_Sense.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# direct methods
.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7_Sense;-><init>(Landroid/webkit/WebSettings;)V

    .line 36
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->b()V

    .line 37
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->b(Z)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public canQuickSelection()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getPluginState()Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->a:Landroid/webkit/WebSettings;

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
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->a:Landroid/webkit/WebSettings;

    invoke-static {v0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->a(Landroid/webkit/WebSettings;I)V

    .line 56
    return-void
.end method

.method public setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->a:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 61
    return-void
.end method
