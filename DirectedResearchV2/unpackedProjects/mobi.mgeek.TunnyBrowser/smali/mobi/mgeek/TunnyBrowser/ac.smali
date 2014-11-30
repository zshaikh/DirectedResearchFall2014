.class Lmobi/mgeek/TunnyBrowser/ac;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 1640
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ac;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ac;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->u()V

    .line 1645
    return-void
.end method
