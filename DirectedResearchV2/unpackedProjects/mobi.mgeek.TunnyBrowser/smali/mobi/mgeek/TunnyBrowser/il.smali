.class Lmobi/mgeek/TunnyBrowser/il;
.super Ljava/lang/Object;
.source "WebViewCallbackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IWebView;

.field final synthetic b:Lcom/dolphin/browser/core/ISslErrorHandler;

.field final synthetic c:Landroid/net/http/SslError;

.field final synthetic d:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/il;->d:Lmobi/mgeek/TunnyBrowser/ib;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/il;->a:Lcom/dolphin/browser/core/IWebView;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/il;->b:Lcom/dolphin/browser/core/ISslErrorHandler;

    iput-object p4, p0, Lmobi/mgeek/TunnyBrowser/il;->c:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 837
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/il;->a:Lcom/dolphin/browser/core/IWebView;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/il;->b:Lcom/dolphin/browser/core/ISslErrorHandler;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/il;->c:Landroid/net/http/SslError;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/ISslErrorHandler;Landroid/net/http/SslError;)V

    .line 838
    return-void
.end method
