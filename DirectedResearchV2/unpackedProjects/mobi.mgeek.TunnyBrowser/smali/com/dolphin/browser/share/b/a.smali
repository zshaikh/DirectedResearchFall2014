.class public Lcom/dolphin/browser/share/b/a;
.super Lcom/dolphin/browser/share/b/c;
.source "BoxSharePlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dolphin/browser/share/b/c;-><init>()V

    .line 18
    const/4 v0, 0x4

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00c7

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201ac

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0582

    invoke-super {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/c;->a(IIII)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)Lcom/dolphin/browser/share/n;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/dolphin/browser/share/box/BoxShareView;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/share/box/BoxShareView;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/share/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/share/b/a;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 52
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/share/b/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/share/b/b;-><init>(Lcom/dolphin/browser/share/b/a;Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/q/a/j;->a(Landroid/content/Context;Lcom/dolphin/browser/q/a/p;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->b()V

    .line 58
    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->d()Z

    move-result v0

    return v0
.end method
