.class public Lcom/dolphin/browser/share/b/p;
.super Lcom/dolphin/browser/share/b/c;
.source "WifiSharePlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dolphin/browser/share/b/c;-><init>()V

    .line 16
    const/4 v0, 0x4

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03e6

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020208

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e045f

    invoke-super {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/c;->a(IIII)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)Lcom/dolphin/browser/share/n;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
