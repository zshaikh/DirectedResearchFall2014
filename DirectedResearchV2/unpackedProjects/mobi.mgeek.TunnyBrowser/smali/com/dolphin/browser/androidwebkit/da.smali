.class Lcom/dolphin/browser/androidwebkit/da;
.super Ljava/lang/Object;
.source "MyWebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IWebViewCallback;

.field final synthetic b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;Lcom/dolphin/browser/core/IWebViewCallback;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/da;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/da;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/da;->b:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    # getter for: Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->mWebView:Lcom/dolphin/browser/androidwebkit/MyWebView;
    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->access$100(Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;)Lcom/dolphin/browser/androidwebkit/MyWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/da;->a:Lcom/dolphin/browser/core/IWebViewCallback;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/core/IWebViewCallback;)V

    .line 918
    return-void
.end method
