.class Lmobi/mgeek/TunnyBrowser/bw;
.super Ljava/lang/Object;
.source "BrowserPluginList.java"

# interfaces
.implements Lcom/mgeek/android/ui/p;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bw;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bw;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->b(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)Lcom/mgeek/android/ui/DraggableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgeek/android/ui/DraggableListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 178
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bw;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->c(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)Lcom/dolphin/browser/extensions/ay;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bw;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->b(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)Lcom/mgeek/android/ui/DraggableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgeek/android/ui/DraggableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ay;->a(I)Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method
