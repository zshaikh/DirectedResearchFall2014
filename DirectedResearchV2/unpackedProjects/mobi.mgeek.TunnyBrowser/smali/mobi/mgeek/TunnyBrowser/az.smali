.class Lmobi/mgeek/TunnyBrowser/az;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/titlebar/b;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 1

    .prologue
    .line 6526
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/az;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/az;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 6551
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/az;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->u(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/menu/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/az;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->u(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/menu/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/az;->b:Z

    .line 6555
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6533
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6534
    if-nez v0, :cond_1

    .line 6545
    :cond_0
    :goto_0
    return v2

    .line 6538
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6540
    :cond_2
    iget-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/az;->b:Z

    if-nez v0, :cond_0

    .line 6541
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/az;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->C(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 6542
    iput-boolean v2, p0, Lmobi/mgeek/TunnyBrowser/az;->b:Z

    goto :goto_0
.end method
