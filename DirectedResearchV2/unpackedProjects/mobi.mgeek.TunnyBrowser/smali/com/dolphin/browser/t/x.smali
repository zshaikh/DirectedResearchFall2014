.class Lcom/dolphin/browser/t/x;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Lcom/dolphin/browser/core/l;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/dolphin/browser/t/x;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 428
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getFirstChildTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 429
    if-nez v0, :cond_0

    .line 430
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getRightSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 431
    if-nez v0, :cond_0

    .line 432
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getLeftSiblingTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 433
    if-nez v0, :cond_0

    .line 434
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getParentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 438
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;I)V
    .locals 1

    .prologue
    .line 411
    if-eqz p2, :cond_0

    .line 415
    iget-object v0, p0, Lcom/dolphin/browser/t/x;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0, p2}, Lcom/dolphin/browser/t/l;->c(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)V

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/dolphin/browser/t/x;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->t()Z

    .line 424
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-direct {p0, p2}, Lcom/dolphin/browser/t/x;->a(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 422
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    goto :goto_0
.end method
