.class Lcom/dolphin/browser/addons/bq;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;I)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/dolphin/browser/addons/bq;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    iput p2, p0, Lcom/dolphin/browser/addons/bq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/addons/bq;->b:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/addons/bq;->a:I

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebView;->goBackOrForward(I)V

    .line 228
    return-void
.end method
