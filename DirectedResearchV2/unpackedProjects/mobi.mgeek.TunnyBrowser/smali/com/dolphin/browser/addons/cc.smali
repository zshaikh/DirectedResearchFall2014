.class Lcom/dolphin/browser/addons/cc;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Lcom/dolphin/browser/addons/ap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/dolphin/browser/addons/cc;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/addons/ap;
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/addons/cc;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/addons/cc;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    new-instance v1, Lcom/dolphin/browser/addons/bj;

    iget-object v2, p0, Lcom/dolphin/browser/addons/cc;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v2}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/dolphin/browser/core/IWebView;->getWebSettings()Lcom/dolphin/browser/core/IWebSettings;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/addons/bj;-><init>(Lcom/dolphin/browser/core/IWebSettings;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;Lcom/dolphin/browser/addons/ap;)Lcom/dolphin/browser/addons/ap;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/addons/cc;->a:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->b(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/addons/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/cc;->a()Lcom/dolphin/browser/addons/ap;

    move-result-object v0

    return-object v0
.end method
