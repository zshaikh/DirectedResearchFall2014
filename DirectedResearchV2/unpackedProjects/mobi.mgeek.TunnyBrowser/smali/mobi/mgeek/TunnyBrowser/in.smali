.class Lmobi/mgeek/TunnyBrowser/in;
.super Ljava/lang/Object;
.source "WebViewCallbackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ITab;

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;

.field final synthetic d:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ITab;ZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/in;->d:Lmobi/mgeek/TunnyBrowser/ib;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/in;->a:Lcom/dolphin/browser/core/ITab;

    iput-boolean p3, p0, Lmobi/mgeek/TunnyBrowser/in;->b:Z

    iput-object p4, p0, Lmobi/mgeek/TunnyBrowser/in;->c:Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1011
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/in;->d:Lmobi/mgeek/TunnyBrowser/ib;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/in;->a:Lcom/dolphin/browser/core/ITab;

    iget-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/in;->b:Z

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/in;->c:Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;

    invoke-static {v0, v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ITab;ZLcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V

    .line 1012
    return-void
.end method
