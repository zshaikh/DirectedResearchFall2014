.class Lcom/jeremyfeinstein/slidingmenu/lib/app/b;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;


# direct methods
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/app/a;ZZ)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/b;->c:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    iput-boolean p2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/b;->a:Z

    iput-boolean p3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/b;->a:Z

    if-eqz v0, :cond_1

    .line 76
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/b;->b:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/b;->c:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->a(Lcom/jeremyfeinstein/slidingmenu/lib/app/a;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/b;->c:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->a(Lcom/jeremyfeinstein/slidingmenu/lib/app/a;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Z)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/b;->c:Lcom/jeremyfeinstein/slidingmenu/lib/app/a;

    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/a;->a(Lcom/jeremyfeinstein/slidingmenu/lib/app/a;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d(Z)V

    goto :goto_0
.end method
