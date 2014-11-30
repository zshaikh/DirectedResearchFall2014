.class public Lcom/dolphin/browser/titlebar/a;
.super Lcom/dolphin/browser/titlebar/k;
.source "FakeTitleBar.java"


# instance fields
.field private a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private b:Lcom/dolphin/browser/titlebar/b;

.field private c:Lcom/dolphin/browser/titlebar/k;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/titlebar/k;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/TabManager;)V

    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/a;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/titlebar/b;)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/titlebar/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/a;->b:Lcom/dolphin/browser/titlebar/b;

    .line 80
    return-void
.end method

.method public a(Lcom/dolphin/browser/titlebar/k;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/a;->c:Lcom/dolphin/browser/titlebar/k;

    .line 92
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/a;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/a;->c:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/titlebar/k;->d(Z)V

    .line 47
    invoke-static {v2}, Lcom/dolphin/browser/tabbar/j;->a(Z)V

    .line 48
    const-string v0, "FakeTitleBar"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/b;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/b;->a(Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/a;->b(Z)V

    .line 58
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/a;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/a;->c:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/titlebar/k;->d(Z)V

    .line 65
    invoke-static {v2}, Lcom/dolphin/browser/tabbar/j;->a(Z)V

    .line 66
    const-string v0, "FakeTitleBar"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/b;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/b;->a(Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/dolphin/browser/c/g;

    invoke-direct {v0}, Lcom/dolphin/browser/c/g;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/g;->a()Z

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/a;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->z()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    invoke-super {p0, p1}, Lcom/dolphin/browser/titlebar/k;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/a;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->X()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 131
    invoke-super {p0, p1}, Lcom/dolphin/browser/titlebar/k;->draw(Landroid/graphics/Canvas;)V

    .line 132
    return-void
.end method

.method public l_()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/a;->a(Z)V

    .line 40
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 109
    instance-of v0, p1, Lcom/dolphin/browser/tabbar/d;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 110
    check-cast v0, Lcom/dolphin/browser/tabbar/d;

    .line 111
    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/d;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/a;->c:Lcom/dolphin/browser/titlebar/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/titlebar/k;->l()Lcom/dolphin/browser/tabbar/d;

    move-result-object v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    invoke-super {p0, p1}, Lcom/dolphin/browser/titlebar/k;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-virtual {v1, p0, v0}, Lcom/dolphin/browser/tabbar/d;->a(Ljava/lang/Object;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/a;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->c(Landroid/view/View;)Z

    move-result v0

    .line 118
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/a;->b:Lcom/dolphin/browser/titlebar/b;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/a;->b:Lcom/dolphin/browser/titlebar/b;

    invoke-interface {v1}, Lcom/dolphin/browser/titlebar/b;->a()V

    goto :goto_0

    .line 123
    :cond_2
    invoke-super {p0, p1}, Lcom/dolphin/browser/titlebar/k;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method
