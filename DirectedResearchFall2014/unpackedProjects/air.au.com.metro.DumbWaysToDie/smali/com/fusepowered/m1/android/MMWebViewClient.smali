.class abstract Lcom/fusepowered/m1/android/MMWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MMWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;
    }
.end annotation


# instance fields
.field private cachedExecutor:Ljava/util/concurrent/ExecutorService;

.field isLastMMCommandResize:Z

.field mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

.field redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 1
    .parameter "mmWebViewClientListener"
    .parameter "redirListener"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->cachedExecutor:Ljava/util/concurrent/ExecutorService;

    .line 23
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

    .line 24
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    .line 25
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "webView"
    .parameter "url"

    .prologue
    .line 75
    move-object v0, p1

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    move-object v1, v0

    .line 76
    .local v1, mmWebView:Lcom/fusepowered/m1/android/MMWebView;
    invoke-virtual {v1, p2}, Lcom/fusepowered/m1/android/MMWebView;->isOriginalUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

    invoke-virtual {v2, p2}, Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/MMWebView;->setAdProperties(Lorg/json/JSONObject;)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/MMWebViewClient;->setMraidState(Lcom/fusepowered/m1/android/MMWebView;)V

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "webView"
    .parameter "urlString"
    .parameter "favicon"

    .prologue
    const/4 v4, 0x0

    .line 30
    const-string v2, "onPageStarted: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->mmWebViewClientListener:Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;

    invoke-virtual {v2, p2}, Lcom/fusepowered/m1/android/MMWebViewClient$MMWebViewClientListener;->onPageStarted(Ljava/lang/String;)V

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    move-object v1, v0

    .line 33
    .local v1, mmWebView:Lcom/fusepowered/m1/android/MMWebView;
    const-string v2, "loading"

    iput-object v2, v1, Lcom/fusepowered/m1/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 34
    iput-boolean v4, v1, Lcom/fusepowered/m1/android/MMWebView;->requiresPreAdSizeFix:Z

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 36
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "webView"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 69
    const-string v0, "Error: %s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method abstract setMraidState(Lcom/fusepowered/m1/android/MMWebView;)V
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "webView"
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    move-object v2, v0

    .line 44
    .local v2, mmWebView:Lcom/fusepowered/m1/android/MMWebView;
    invoke-virtual {v2, p2}, Lcom/fusepowered/m1/android/MMWebView;->isOriginalUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x6

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmsdk:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running JS bridge command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/fusepowered/m1/android/MMCommand;

    check-cast p1, Lcom/fusepowered/m1/android/MMWebView;

    .end local p1
    invoke-direct {v1, p1, p2}, Lcom/fusepowered/m1/android/MMCommand;-><init>(Lcom/fusepowered/m1/android/MMWebView;Ljava/lang/String;)V

    .line 51
    .local v1, command:Lcom/fusepowered/m1/android/MMCommand;
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMCommand;->isResizeCommand()Z

    move-result v3

    iput-boolean v3, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->isLastMMCommandResize:Z

    .line 52
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->cachedExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v3, v6

    .line 63
    .end local v1           #command:Lcom/fusepowered/m1/android/MMCommand;
    :goto_0
    return v3

    .line 55
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;->isExpandingToUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    iput-object p2, v3, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

    .line 59
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    .line 60
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    iget-wide v4, v2, Lcom/fusepowered/m1/android/MMWebView;->creatorAdImplId:J

    iput-wide v4, v3, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    .line 61
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMWebViewClient;->redirectListenerImpl:Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {v3}, Lcom/fusepowered/m1/android/HttpRedirection;->startActivityFromUri(Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;)V

    :cond_2
    move v3, v6

    .line 63
    goto :goto_0
.end method
