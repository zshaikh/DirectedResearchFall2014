.class Lcom/dolphin/browser/addons/bz;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/dolphin/browser/addons/bz;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/addons/bz;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->stopLoading()V

    .line 324
    return-void
.end method
