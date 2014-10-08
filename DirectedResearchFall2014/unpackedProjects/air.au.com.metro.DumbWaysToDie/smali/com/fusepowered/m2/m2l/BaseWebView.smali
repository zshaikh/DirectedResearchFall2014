.class public Lcom/fusepowered/m2/m2l/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/BaseWebView;->enablePlugins(Z)V

    .line 53
    invoke-static {p0}, Lcom/fusepowered/m2/m2l/util/WebViews;->setDisableJSChromeClient(Landroid/webkit/WebView;)V

    .line 54
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 88
    invoke-static {p0}, Lcom/fusepowered/m2/m2l/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 89
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 90
    return-void
.end method

.method protected enablePlugins(Z)V
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    const-string v10, "MoPub"

    .line 58
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/VersionCode;->currentApiLevel()Lcom/fusepowered/m2/m2l/util/VersionCode;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/m2/m2l/util/VersionCode;->JELLY_BEAN_MR2:Lcom/fusepowered/m2/m2l/util/VersionCode;

    invoke-virtual {v5, v6}, Lcom/fusepowered/m2/m2l/util/VersionCode;->isAtLeast(Lcom/fusepowered/m2/m2l/util/VersionCode;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/VersionCode;->currentApiLevel()Lcom/fusepowered/m2/m2l/util/VersionCode;

    move-result-object v5

    sget-object v6, Lcom/fusepowered/m2/m2l/util/VersionCode;->FROYO:Lcom/fusepowered/m2/m2l/util/VersionCode;

    invoke-virtual {v5, v6}, Lcom/fusepowered/m2/m2l/util/VersionCode;->isBelow(Lcom/fusepowered/m2/m2l/util/VersionCode;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    :try_start_0
    const-string v5, "android.webkit.WebSettings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setPluginsEnabled"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MoPub"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v6, "enable"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "WebSettings plugins for BaseWebView."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "disable"

    goto :goto_1

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v5, "android.webkit.WebSettings$PluginState"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 75
    .local v4, "pluginStateClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 76
    .local v2, "parameters":[Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setPluginState"

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 78
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_3

    const-string v5, "ON"

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    .line 79
    .local v3, "pluginState":Ljava/lang/Enum;
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 80
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "parameters":[Ljava/lang/Class;
    .end local v3    # "pluginState":Ljava/lang/Enum;
    .end local v4    # "pluginStateClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 81
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "MoPub"

    const-string v5, "Unable to modify WebView plugin state."

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "parameters":[Ljava/lang/Class;
    .restart local v4    # "pluginStateClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    :cond_3
    :try_start_2
    const-string v5, "OFF"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method
