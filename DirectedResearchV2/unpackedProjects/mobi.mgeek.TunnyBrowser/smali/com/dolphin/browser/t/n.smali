.class Lcom/dolphin/browser/t/n;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Lcom/dolphin/browser/core/m;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/dolphin/browser/t/n;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/dolphin/browser/t/n;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/t/l;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;)Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 693
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/dolphin/browser/t/n;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->E()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 698
    :goto_0
    return-object v0

    .line 695
    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 696
    new-instance v0, Lcom/dolphin/browser/f/e/a;

    iget-object v1, p0, Lcom/dolphin/browser/t/n;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->h(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/dolphin/browser/f/e/a;-><init>(Lcom/dolphin/browser/core/TabManager;Landroid/os/Bundle;)V

    goto :goto_0

    .line 698
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
