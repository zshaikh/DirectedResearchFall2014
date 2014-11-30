.class Lmobi/mgeek/TunnyBrowser/ii;
.super Ljava/lang/Object;
.source "WebViewCallbackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ii;->a:Lmobi/mgeek/TunnyBrowser/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 697
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ii;->a:Lmobi/mgeek/TunnyBrowser/ib;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lmobi/mgeek/TunnyBrowser/ib;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ii;->a:Lmobi/mgeek/TunnyBrowser/ib;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lmobi/mgeek/TunnyBrowser/ib;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 699
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ii;->a:Lmobi/mgeek/TunnyBrowser/ib;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->a(Lmobi/mgeek/TunnyBrowser/ib;Landroid/os/Message;)Landroid/os/Message;

    .line 700
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ii;->a:Lmobi/mgeek/TunnyBrowser/ib;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/ib;->b(Lmobi/mgeek/TunnyBrowser/ib;Landroid/os/Message;)Landroid/os/Message;

    .line 702
    :cond_0
    return-void
.end method
