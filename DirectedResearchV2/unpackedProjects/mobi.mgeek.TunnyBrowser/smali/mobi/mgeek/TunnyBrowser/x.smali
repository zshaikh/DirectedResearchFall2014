.class Lmobi/mgeek/TunnyBrowser/x;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lmobi/mgeek/TunnyBrowser/hj;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lmobi/mgeek/TunnyBrowser/y;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/y;-><init>(Lmobi/mgeek/TunnyBrowser/x;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/x;->b()V

    .line 431
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobi/mgeek/TunnyBrowser/z;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/z;-><init>(Lmobi/mgeek/TunnyBrowser/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 447
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/view/View;)Landroid/view/View;

    .line 403
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/x;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setContentView(Landroid/view/View;)V

    .line 404
    return-void
.end method
