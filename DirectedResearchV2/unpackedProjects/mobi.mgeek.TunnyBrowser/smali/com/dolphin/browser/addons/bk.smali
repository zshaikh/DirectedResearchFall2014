.class Lcom/dolphin/browser/addons/bk;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/ad;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;Lcom/dolphin/browser/addons/ad;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dolphin/browser/addons/bk;->c:Lcom/dolphin/browser/addons/WebViewImpl;

    iput-object p2, p0, Lcom/dolphin/browser/addons/bk;->a:Lcom/dolphin/browser/addons/ad;

    iput-object p3, p0, Lcom/dolphin/browser/addons/bk;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/addons/bk;->c:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/addons/WebViewImpl$IJavascriptInterfaceWrapper;

    iget-object v2, p0, Lcom/dolphin/browser/addons/bk;->a:Lcom/dolphin/browser/addons/ad;

    invoke-direct {v1, v2}, Lcom/dolphin/browser/addons/WebViewImpl$IJavascriptInterfaceWrapper;-><init>(Lcom/dolphin/browser/addons/ad;)V

    iget-object v2, p0, Lcom/dolphin/browser/addons/bk;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/core/IWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    return-void
.end method
