.class Lmobi/mgeek/TunnyBrowser/im;
.super Ljava/lang/Object;
.source "WebViewCallbackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ISslErrorHandler;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ISslErrorHandler;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/im;->b:Lmobi/mgeek/TunnyBrowser/ib;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/im;->a:Lcom/dolphin/browser/core/ISslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/im;->a:Lcom/dolphin/browser/core/ISslErrorHandler;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ISslErrorHandler;->proceed()V

    .line 831
    return-void
.end method
