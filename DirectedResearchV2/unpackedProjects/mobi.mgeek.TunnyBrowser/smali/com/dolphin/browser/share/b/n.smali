.class public Lcom/dolphin/browser/share/b/n;
.super Lcom/dolphin/browser/share/b/c;
.source "TwitterSharePlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dolphin/browser/share/b/c;-><init>()V

    .line 23
    const/4 v0, 0x3

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0655

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b0

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e059e

    invoke-super {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/c;->a(IIII)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/f;)Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 35
    new-instance v1, Lcom/dolphin/browser/share/d;

    invoke-static {}, Lcom/dolphin/browser/q/d/z;->b()Lcom/dolphin/browser/q/d/z;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/dolphin/browser/share/d;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/r;)V

    move-object v0, v1

    .line 37
    check-cast v0, Lcom/dolphin/browser/share/d;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/share/d;->a(Lcom/dolphin/browser/share/f;)V

    .line 38
    return-object v1
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)Lcom/dolphin/browser/share/n;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/dolphin/browser/share/twitter/TwitterShareView;

    invoke-direct {v0, p1, p2, p3}, Lcom/dolphin/browser/share/twitter/TwitterShareView;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/share/b/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/share/b/n;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 70
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/dolphin/browser/share/b/o;

    invoke-direct {v2, p0, p1, p2}, Lcom/dolphin/browser/share/b/o;-><init>(Lcom/dolphin/browser/share/b/n;Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/q/d/aa;->a(Landroid/app/Activity;Lcom/dolphin/browser/q/d/e;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->b()V

    .line 76
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->f()Z

    move-result v0

    return v0
.end method
