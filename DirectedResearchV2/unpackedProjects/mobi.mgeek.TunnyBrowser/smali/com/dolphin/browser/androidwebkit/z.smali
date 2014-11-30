.class Lcom/dolphin/browser/androidwebkit/z;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/z;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/z;->a:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/z;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/z;->a:Lcom/dolphin/browser/core/IWebView$ContextPanelListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/core/IWebView$ContextPanelListener;)V

    .line 1403
    return-void
.end method
