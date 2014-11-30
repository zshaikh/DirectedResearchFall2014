.class Lcom/jeremyfeinstein/slidingmenu/lib/e;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/c;


# instance fields
.field final synthetic a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/e;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 233
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/e;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/e;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/j;->a()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/e;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/e;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/g;->a()V

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/e;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/e;->a:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/j;->a()V

    goto :goto_0
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method
