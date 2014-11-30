.class Lmobi/mgeek/TunnyBrowser/as;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/p;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 5694
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/as;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 5699
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 5704
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/as;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/as;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->y(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/extensions/ITitleBarExtension$TitltBarUpdater;)V

    .line 5705
    return-void
.end method
