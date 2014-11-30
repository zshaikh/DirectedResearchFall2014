.class Lmobi/mgeek/TunnyBrowser/ij;
.super Ljava/lang/Object;
.source "WebViewCallbackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ISslErrorHandler;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ISslErrorHandler;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ij;->b:Lmobi/mgeek/TunnyBrowser/ib;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ij;->a:Lcom/dolphin/browser/core/ISslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ij;->a:Lcom/dolphin/browser/core/ISslErrorHandler;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ISslErrorHandler;->cancel()V

    .line 850
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->d()V

    .line 851
    return-void
.end method
