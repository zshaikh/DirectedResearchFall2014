.class Lmobi/mgeek/TunnyBrowser/bv;
.super Ljava/lang/Object;
.source "BrowserPluginList.java"

# interfaces
.implements Lcom/mgeek/android/ui/q;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bv;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bv;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->b(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)Lcom/mgeek/android/ui/DraggableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgeek/android/ui/DraggableListView;->getHeaderViewsCount()I

    move-result v0

    .line 165
    sub-int v1, p1, v0

    .line 166
    sub-int v0, p2, v0

    .line 167
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/bv;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->c(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)Lcom/dolphin/browser/extensions/ay;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dolphin/browser/extensions/ay;->a(II)Z

    .line 168
    return-void
.end method
