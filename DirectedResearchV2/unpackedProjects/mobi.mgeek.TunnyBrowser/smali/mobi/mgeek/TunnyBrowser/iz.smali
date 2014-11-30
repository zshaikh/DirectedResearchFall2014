.class Lmobi/mgeek/TunnyBrowser/iz;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/is;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/is;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/iz;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 546
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/iz;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/is;->c(Lmobi/mgeek/TunnyBrowser/is;)Lmobi/mgeek/TunnyBrowser/ir;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/ir;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IWebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iz;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/is;->c(Lmobi/mgeek/TunnyBrowser/is;)Lmobi/mgeek/TunnyBrowser/ir;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ir;->b(I)V

    .line 550
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iz;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/is;->c(Lmobi/mgeek/TunnyBrowser/is;)Lmobi/mgeek/TunnyBrowser/ir;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ir;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iz;->a:Lmobi/mgeek/TunnyBrowser/is;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/is;->a(Lmobi/mgeek/TunnyBrowser/is;Lmobi/mgeek/TunnyBrowser/ir;)Lmobi/mgeek/TunnyBrowser/ir;

    .line 553
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iz;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/is;->a()V

    .line 554
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iz;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/is;->notifyDataSetChanged()V

    .line 555
    return-void
.end method
