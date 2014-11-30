.class public Lcom/dolphin/browser/share/b/e;
.super Lcom/dolphin/browser/share/b/c;
.source "DevicesSharePlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dolphin/browser/share/b/c;-><init>()V

    .line 18
    const/4 v0, 0x5

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03e9

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201ad

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e045f

    invoke-super {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/c;->a(IIII)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)Lcom/dolphin/browser/share/n;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/dolphin/browser/share/tabpush/k;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/share/tabpush/k;-><init>(Landroid/app/Activity;Lcom/dolphin/browser/share/b/j;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/share/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/share/b/e;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    check-cast p1, Landroid/app/Activity;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
