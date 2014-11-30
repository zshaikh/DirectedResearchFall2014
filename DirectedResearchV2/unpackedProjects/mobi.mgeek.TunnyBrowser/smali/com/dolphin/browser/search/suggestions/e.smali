.class Lcom/dolphin/browser/search/suggestions/e;
.super Ljava/lang/Object;
.source "AbstractSearchTabContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/e;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 253
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/e;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iget-object v1, v1, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/e;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-static {v2}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Z

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/search/suggestions/e;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-static {v3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Z

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/search/suggestions/e;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-static {v4}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;ZZZ)V

    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/e;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iget-object v0, v0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->e:Lcom/dolphin/browser/search/suggestions/h;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/e;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iget-object v0, v0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->e:Lcom/dolphin/browser/search/suggestions/h;

    invoke-interface {v0}, Lcom/dolphin/browser/search/suggestions/h;->b()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/e;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iget-object v0, v0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0549

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 259
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 260
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->h()V

    .line 261
    return-void
.end method
