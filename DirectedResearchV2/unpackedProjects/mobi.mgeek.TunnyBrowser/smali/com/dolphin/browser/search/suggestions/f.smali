.class Lcom/dolphin/browser/search/suggestions/f;
.super Ljava/lang/Object;
.source "AbstractSearchTabContainer.java"

# interfaces
.implements Lcom/dolphin/browser/search/suggestions/l;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/f;->c:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iput-object p2, p0, Lcom/dolphin/browser/search/suggestions/f;->a:Ljava/lang/String;

    iput p3, p0, Lcom/dolphin/browser/search/suggestions/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/f;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->openUrl(Ljava/lang/String;Z)V

    .line 309
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/f;->c:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iget-object v0, v0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d:Lcom/dolphin/browser/search/p;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/f;->c:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iget-object v0, v0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d:Lcom/dolphin/browser/search/p;

    invoke-interface {v0}, Lcom/dolphin/browser/search/p;->a()V

    .line 312
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 317
    new-instance v0, Lcom/dolphin/browser/c/d;

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/f;->c:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iget-object v1, v1, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/f;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/d;->a()Z

    .line 319
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/f;->c:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    iget v1, p0, Lcom/dolphin/browser/search/suggestions/f;->b:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d(I)V

    .line 324
    return-void
.end method
