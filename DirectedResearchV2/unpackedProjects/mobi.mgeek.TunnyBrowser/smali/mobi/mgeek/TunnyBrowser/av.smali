.class Lmobi/mgeek/TunnyBrowser/av;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/au;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/au;)V
    .locals 0

    .prologue
    .line 5714
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/av;->a:Lmobi/mgeek/TunnyBrowser/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5718
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/av;->a:Lmobi/mgeek/TunnyBrowser/au;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/au;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/av;->a:Lmobi/mgeek/TunnyBrowser/au;

    iget-object v1, v1, Lmobi/mgeek/TunnyBrowser/au;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/ITab;)V

    .line 5719
    return-void
.end method
