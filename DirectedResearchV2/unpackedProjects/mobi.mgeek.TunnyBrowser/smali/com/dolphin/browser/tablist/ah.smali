.class Lcom/dolphin/browser/tablist/ah;
.super Ljava/lang/Object;
.source "CurrentTablistView.java"

# interfaces
.implements Lcom/dolphin/browser/tablist/cu;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ah;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 417
    new-instance v0, Lcom/dolphin/browser/c/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/c/aa;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/aa;->a()Z

    .line 418
    const-string v0, "tablist"

    const-string v1, "clickbtn"

    const-string v2, "blank"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 379
    const-string v0, "tablist"

    const-string v1, "swap"

    const-string v2, "closetab"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ah;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->h(Lcom/dolphin/browser/tablist/ac;)V

    .line 382
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_1

    .line 399
    check-cast v0, Lcom/dolphin/browser/tablist/bp;

    .line 400
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ah;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/ac;->i(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/bl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ah;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/ac;->i(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/bl;

    move-result-object v1

    iget-object v0, v0, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/bl;->a(Lcom/dolphin/browser/core/ITab;)V

    .line 403
    :cond_0
    const-string v0, "tablist"

    const-string v1, "clickbtn"

    const-string v2, "switchtab"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_1
    new-instance v0, Lcom/dolphin/browser/c/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/c/aa;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/aa;->a()Z

    .line 407
    return-void
.end method
