.class public Lcom/dolphin/browser/share/b/h;
.super Lcom/dolphin/browser/share/b/c;
.source "FacebookSharePlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dolphin/browser/share/b/c;-><init>()V

    .line 28
    const/4 v0, 0x1

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0241

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201af

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0597

    invoke-super {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/c;->a(IIII)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/f;)Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 40
    new-instance v1, Lcom/dolphin/browser/share/d;

    invoke-static {}, Lcom/dolphin/browser/share/facebook/a;->b()Lcom/dolphin/browser/share/facebook/a;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/dolphin/browser/share/d;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/r;)V

    move-object v0, v1

    .line 42
    check-cast v0, Lcom/dolphin/browser/share/d;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/share/d;->a(Lcom/dolphin/browser/share/f;)V

    .line 43
    return-object v1
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)Lcom/dolphin/browser/share/n;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/dolphin/browser/share/facebook/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/dolphin/browser/share/facebook/b;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/dolphin/browser/share/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2, v3}, Lcom/dolphin/browser/share/b/h;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 78
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/dolphin/browser/share/b/i;

    invoke-direct {v2, p0, p1, p2}, Lcom/dolphin/browser/share/b/i;-><init>(Lcom/dolphin/browser/share/b/h;Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    invoke-virtual {v1, v0, v3, v2}, Lcom/dolphin/browser/q/c/b;->a(Landroid/app/Activity;ILcom/dolphin/browser/q/c/o;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->b()V

    .line 84
    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->h()Z

    move-result v0

    return v0
.end method
