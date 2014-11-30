.class public Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;
.super Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;
.source "WebSettingsV15_Sense.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;-><init>(Landroid/webkit/WebSettings;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic canQuickSelection()Z
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->canQuickSelection()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getAdBlockEnabled()Z
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->getAdBlockEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getAdBlockOption()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->getAdBlockOption()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPluginState()Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->getPluginState()Lcom/dolphin/browser/core/IWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPluginsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->getPluginsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPrivateBrowsing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 20
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 22
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v2, "isPrivateBrowsingEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->b:Ljava/lang/reflect/Method;

    .line 23
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->a:Landroid/webkit/WebSettings;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 31
    :goto_1
    return v0

    .line 29
    :catch_0
    move-exception v0

    move v0, v1

    .line 31
    goto :goto_1

    .line 24
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic setAdBlockEnabled(Z)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->setAdBlockEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setAdBlockOption(I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->setAdBlockOption(I)V

    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 57
    return-void
.end method

.method public bridge synthetic setBrowserModeInNight(Z)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->setBrowserModeInNight(Z)V

    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 52
    return-void
.end method

.method public bridge synthetic setPageCacheCapacity(I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->setPageCacheCapacity(I)V

    return-void
.end method

.method public bridge synthetic setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V

    return-void
.end method

.method public bridge synthetic setPluginsPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->setPluginsPath(Ljava/lang/String;)V

    return-void
.end method

.method public setPrivateBrowsing(Z)V
    .locals 5

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 38
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setPrivateBrowsingEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->c:Ljava/lang/reflect/Method;

    .line 39
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV15_Sense;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic setUserAgentString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebSettingsV8_Sense;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method
