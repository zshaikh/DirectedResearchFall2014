.class Lmobi/mgeek/TunnyBrowser/bq;
.super Lcom/dolphin/browser/util/f;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private b:Lmobi/mgeek/TunnyBrowser/hh;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/x;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/bq;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 597
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/bq;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 603
    const-string v0, "App Start, init in work thread"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 605
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/hf;->a()Lmobi/mgeek/TunnyBrowser/hf;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hf;->b()Lmobi/mgeek/TunnyBrowser/hh;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->b:Lmobi/mgeek/TunnyBrowser/hh;

    .line 606
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->b:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->a()V

    .line 607
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/bq;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-object v3

    .line 610
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 611
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/bq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->f(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 615
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/bq;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-boolean v0, v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b:Z

    if-nez v0, :cond_2

    .line 619
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->g(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 621
    :cond_2
    const-string v0, "App Start, init in work thread"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 597
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/bq;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 638
    const-string v0, "App Start, init in main thread"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 640
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->h(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 641
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Z)V

    .line 642
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->i(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 643
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->b(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->d(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 646
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->b:Lmobi/mgeek/TunnyBrowser/hh;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/bq;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->b:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->b()V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->b:Lmobi/mgeek/TunnyBrowser/hh;

    .line 650
    :cond_1
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 628
    invoke-super {p0}, Lcom/dolphin/browser/util/f;->b()V

    .line 629
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->b:Lmobi/mgeek/TunnyBrowser/hh;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->b:Lmobi/mgeek/TunnyBrowser/hh;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/hh;->b()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/bq;->b:Lmobi/mgeek/TunnyBrowser/hh;

    .line 633
    :cond_0
    return-void
.end method
