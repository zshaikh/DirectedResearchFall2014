.class Lmobi/mgeek/TunnyBrowser/au;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 5709
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/au;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestUpdateTitleBar()V
    .locals 2

    .prologue
    .line 5714
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/au;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/av;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/av;-><init>(Lmobi/mgeek/TunnyBrowser/au;)V

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5721
    return-void
.end method
