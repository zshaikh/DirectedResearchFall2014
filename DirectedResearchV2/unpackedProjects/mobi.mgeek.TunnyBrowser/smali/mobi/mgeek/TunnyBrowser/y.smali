.class Lmobi/mgeek/TunnyBrowser/y;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/x;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/x;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/y;->a:Lmobi/mgeek/TunnyBrowser/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/y;->a:Lmobi/mgeek/TunnyBrowser/x;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 414
    if-eqz v0, :cond_0

    .line 415
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/y;->a:Lmobi/mgeek/TunnyBrowser/x;

    iget-object v1, v1, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/y;->a:Lmobi/mgeek/TunnyBrowser/x;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/view/View;)Landroid/view/View;

    .line 418
    return-void
.end method
