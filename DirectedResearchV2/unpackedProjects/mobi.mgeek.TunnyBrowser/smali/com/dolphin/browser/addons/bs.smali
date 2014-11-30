.class Lcom/dolphin/browser/addons/bs;
.super Ljava/lang/Object;
.source "WebViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/dolphin/browser/addons/WebViewImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/WebViewImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/dolphin/browser/addons/bs;->d:Lcom/dolphin/browser/addons/WebViewImpl;

    iput-object p2, p0, Lcom/dolphin/browser/addons/bs;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/addons/bs;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/addons/bs;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/addons/bs;->d:Lcom/dolphin/browser/addons/WebViewImpl;

    invoke-static {v0}, Lcom/dolphin/browser/addons/WebViewImpl;->a(Lcom/dolphin/browser/addons/WebViewImpl;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/addons/bs;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/addons/bs;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/addons/bs;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/browser/core/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method
