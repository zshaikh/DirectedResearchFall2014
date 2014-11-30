.class Lmobi/mgeek/TunnyBrowser/id;
.super Ljava/lang/Object;
.source "WebViewCallbackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/id;->b:Lmobi/mgeek/TunnyBrowser/ib;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/id;->a:Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/id;->a:Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView$CreateWindowHandler;->sendToTarget()V

    .line 1021
    return-void
.end method
