.class Lmobi/mgeek/TunnyBrowser/if;
.super Ljava/lang/Object;
.source "WebViewCallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IWebView;

.field final synthetic b:Lcom/dolphin/browser/titlebar/h;

.field final synthetic c:I

.field final synthetic d:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/titlebar/h;I)V
    .locals 0

    .prologue
    .line 1651
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/if;->d:Lmobi/mgeek/TunnyBrowser/ib;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/if;->a:Lcom/dolphin/browser/core/IWebView;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/if;->b:Lcom/dolphin/browser/titlebar/h;

    iput p4, p0, Lmobi/mgeek/TunnyBrowser/if;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1656
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/if;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ib;->d(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1657
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/if;->b:Lcom/dolphin/browser/titlebar/h;

    iget v2, p0, Lmobi/mgeek/TunnyBrowser/if;->c:I

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/titlebar/h;->b(Lcom/dolphin/browser/core/ITab;I)V

    .line 1658
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/if;->d:Lmobi/mgeek/TunnyBrowser/ib;

    invoke-static {v1, v0}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ITab;)V

    .line 1659
    return-void
.end method
