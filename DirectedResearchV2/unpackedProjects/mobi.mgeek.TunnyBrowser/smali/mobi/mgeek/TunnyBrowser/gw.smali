.class Lmobi/mgeek/TunnyBrowser/gw;
.super Ljava/lang/Object;
.source "SlidingMenuHelper.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/f;


# instance fields
.field final synthetic a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/gv;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/gv;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gw;->b:Lmobi/mgeek/TunnyBrowser/gv;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/gw;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;F)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gw;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()Landroid/view/View;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gw;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c()Landroid/view/View;

    move-result-object v2

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v1, v0

    .line 88
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gw;->b:Lmobi/mgeek/TunnyBrowser/gv;

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v0}, Lmobi/mgeek/TunnyBrowser/gv;->a(Lmobi/mgeek/TunnyBrowser/gv;Z)Z

    .line 90
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    neg-int v0, v1

    .line 94
    :goto_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gw;->b:Lmobi/mgeek/TunnyBrowser/gv;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/gv;->a(Lmobi/mgeek/TunnyBrowser/gv;)Lmobi/mgeek/TunnyBrowser/gx;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/gw;->b:Lmobi/mgeek/TunnyBrowser/gv;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/gv;->a(Lmobi/mgeek/TunnyBrowser/gv;)Lmobi/mgeek/TunnyBrowser/gx;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lmobi/mgeek/TunnyBrowser/gx;->a(Landroid/graphics/Canvas;I)V

    .line 97
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
