.class Lcom/dolphin/browser/addons/bv;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/addons/bv;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    iput-object p2, p0, Lcom/dolphin/browser/addons/bv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/addons/bv;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/addons/bv;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 78
    return-void
.end method
