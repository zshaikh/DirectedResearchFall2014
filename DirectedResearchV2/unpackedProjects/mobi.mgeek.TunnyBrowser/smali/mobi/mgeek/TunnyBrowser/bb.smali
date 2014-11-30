.class Lmobi/mgeek/TunnyBrowser/bb;
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
    .line 6604
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bb;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6607
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bb;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->aj()V

    .line 6608
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bb;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->D(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/menu/MenuBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bb;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->D(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/menu/MenuBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/MenuBar;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6609
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bb;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->D(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/menu/MenuBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/MenuBar;->a(Z)V

    .line 6611
    :cond_0
    return-void
.end method
