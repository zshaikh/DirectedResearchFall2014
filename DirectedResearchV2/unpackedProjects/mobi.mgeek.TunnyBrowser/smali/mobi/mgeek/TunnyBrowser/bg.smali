.class Lmobi/mgeek/TunnyBrowser/bg;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/mgeek/android/ui/d;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 7542
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bg;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/mgeek/android/ui/ab;)V
    .locals 1

    .prologue
    .line 7546
    invoke-interface {p1}, Lcom/mgeek/android/ui/ab;->getId()I

    move-result v0

    .line 7547
    if-nez v0, :cond_1

    .line 7548
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bg;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7549
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bg;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 7550
    invoke-static {}, Lcom/dolphin/browser/util/b/a;->b()V

    .line 7553
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bg;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 7555
    :cond_1
    return-void
.end method
