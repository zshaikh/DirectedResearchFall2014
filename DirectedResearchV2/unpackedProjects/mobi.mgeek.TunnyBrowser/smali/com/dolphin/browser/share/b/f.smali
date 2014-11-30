.class public Lcom/dolphin/browser/share/b/f;
.super Lcom/dolphin/browser/share/b/c;
.source "EvernoteSharePlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dolphin/browser/share/b/c;-><init>()V

    .line 16
    const/4 v0, 0x2

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0227

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201ae

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0590

    invoke-super {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/c;->a(IIII)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)Lcom/dolphin/browser/share/n;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/dolphin/browser/share/a/j;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/share/a/j;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/dolphin/browser/share/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/share/b/f;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 46
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/share/b/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/share/b/g;-><init>(Lcom/dolphin/browser/share/b/f;Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/q/b/ag;->a(Landroid/content/Context;Lcom/dolphin/browser/q/b/ax;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->e()Z

    move-result v0

    return v0
.end method
