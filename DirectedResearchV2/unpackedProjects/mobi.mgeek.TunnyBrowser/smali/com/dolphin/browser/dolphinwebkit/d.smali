.class Lcom/dolphin/browser/dolphinwebkit/d;
.super Ljava/lang/Object;
.source "MyWebChromeClient.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;

.field private b:Lcom/dolphin/browser/core/ITab;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/d;->a:Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitializedTab()Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/d;->a:Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;

    # getter for: Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;
    invoke-static {v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->access$000(Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dolphin/browser/core/IWebView;->saveState2(Landroid/os/Bundle;)Lcom/dolphin/browser/core/IWebBackForwardList;

    .line 444
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->createGameWebViewTab(Landroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/d;->b:Lcom/dolphin/browser/core/ITab;

    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/d;->b:Lcom/dolphin/browser/core/ITab;

    return-object v0
.end method

.method public sendToTarget()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/d;->a:Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;

    # getter for: Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mCallback:Lcom/dolphin/browser/core/IWebViewCallback;
    invoke-static {v0}, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->access$100(Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;)Lcom/dolphin/browser/core/IWebViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/dolphinwebkit/d;->a:Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;

    # getter for: Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->mWebView:Lcom/dolphin/browser/core/IWebView;
    invoke-static {v1}, Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;->access$000(Lcom/dolphin/browser/dolphinwebkit/MyWebChromeClient;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebViewCallback;->onCloseWindow(Lcom/dolphin/browser/core/IWebView;)V

    .line 438
    return-void
.end method

.method public setTab(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 451
    return-void
.end method
