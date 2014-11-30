.class public Lv2/com/playhaven/views/interstitial/PHWebView;
.super Landroid/webkit/WebView;
.source "PHWebView.java"


# instance fields
.field private config:Lv2/com/playhaven/configuration/PHConfiguration;

.field private content:Lv2/com/playhaven/model/PHContent;

.field private doCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLv2/com/playhaven/interstitial/webview/PHWebViewClient;Lv2/com/playhaven/interstitial/webview/PHWebViewChrome;Lv2/com/playhaven/model/PHContent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "doCache"    # Z
    .param p3, "client"    # Lv2/com/playhaven/interstitial/webview/PHWebViewClient;
    .param p4, "chrome"    # Lv2/com/playhaven/interstitial/webview/PHWebViewChrome;
    .param p5, "content"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean p2, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->doCache:Z

    .line 48
    iput-object p5, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->content:Lv2/com/playhaven/model/PHContent;

    .line 50
    new-instance v1, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v1}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    iput-object v1, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    .line 52
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "cachePath":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 84
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 87
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 90
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    invoke-virtual {p0, v5}, Lv2/com/playhaven/views/interstitial/PHWebView;->setInitialScale(I)V

    .line 96
    invoke-virtual {p0, v5}, Lv2/com/playhaven/views/interstitial/PHWebView;->setScrollBarStyle(I)V

    .line 98
    invoke-virtual {p0, v5}, Lv2/com/playhaven/views/interstitial/PHWebView;->setBackgroundColor(I)V

    .line 103
    invoke-virtual {p0, p3}, Lv2/com/playhaven/views/interstitial/PHWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    invoke-virtual {p0, p4}, Lv2/com/playhaven/views/interstitial/PHWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 106
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 64
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v2}, Lv2/com/playhaven/configuration/PHConfiguration;->getPrecacheSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 66
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 70
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lv2/com/playhaven/views/interstitial/PHWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 113
    invoke-virtual {p0, v0}, Lv2/com/playhaven/views/interstitial/PHWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->stopLoading()V

    .line 116
    return-void
.end method

.method public loadContentTemplate()V
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lv2/com/playhaven/views/interstitial/PHWebView;->stopLoading()V

    .line 128
    iget-object v2, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->content:Lv2/com/playhaven/model/PHContent;

    iget-object v2, v2, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "cached_url":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should we access the cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->doCache:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "....and has it been installed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->hasBeenInstalled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 137
    iget-boolean v2, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->doCache:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->hasBeenInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->getSharedCache()Lv2/com/playhaven/cache/PHCache;

    move-result-object v2

    iget-object v3, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->content:Lv2/com/playhaven/model/PHContent;

    iget-object v3, v3, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lv2/com/playhaven/cache/PHCache;->getCachedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the cached template url returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the original template url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->content:Lv2/com/playhaven/model/PHContent;

    iget-object v3, v3, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 146
    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0, v0}, Lv2/com/playhaven/views/interstitial/PHWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lv2/com/playhaven/views/interstitial/PHWebView;->content:Lv2/com/playhaven/model/PHContent;

    iget-object v2, v2, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lv2/com/playhaven/views/interstitial/PHWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
