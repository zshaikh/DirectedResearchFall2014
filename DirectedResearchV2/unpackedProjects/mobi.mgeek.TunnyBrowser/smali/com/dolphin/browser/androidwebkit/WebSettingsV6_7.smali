.class Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;
.super Lcom/dolphin/browser/androidwebkit/d;
.source "WebSettingsV6_7.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebSettings;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static b:Ljava/lang/reflect/Field;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v0, "WebSettingsV6_7 cinit..."

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 49
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.mot.hw.uaprof"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "android.webkit.FrameLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    const-string v2, "sUAProf"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    sput-object v1, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;->b:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :cond_0
    :goto_0
    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;->c:Ljava/lang/String;

    .line 64
    const-string v0, "WebSettingsV6_7 cinit end"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 65
    return-void

    .line 59
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 60
    :goto_1
    const-string v2, "WebSettingsV6_7"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/d;-><init>(Landroid/webkit/WebSettings;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;->d:Z

    .line 69
    return-void
.end method


# virtual methods
.method public canQuickSelection()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBlockEnabled()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBlockOption()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getPluginState()Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginsEnabled()Z

    move-result v0

    .line 119
    if-eqz v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->ON:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->OFF:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    goto :goto_0
.end method

.method public getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    const-string v0, ""

    return-object v0
.end method

.method public isPrivateBrowsing()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public setAdBlockEnabled(Z)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public setAdBlockOption(I)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public setBrowserModeInNight(Z)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/WebSettingsV6_7;->a:Landroid/webkit/WebSettings;

    sget-object v0, Lcom/dolphin/browser/core/IWebSettings$PluginState;->OFF:Lcom/dolphin/browser/core/IWebSettings$PluginState;

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 125
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public setPrivateBrowsing(Z)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
