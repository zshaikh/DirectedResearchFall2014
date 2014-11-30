.class Lcom/dolphin/browser/search/suggestions/g;
.super Lcom/dolphin/browser/util/f;
.source "AbstractSearchTabContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->p()Landroid/database/Cursor;

    move-result-object v0

    .line 421
    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 415
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/g;->a([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Lcom/dolphin/browser/search/suggestions/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/suggestions/i;->changeCursor(Landroid/database/Cursor;)V

    .line 427
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->m()V

    .line 428
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->q()V

    .line 429
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->d(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Z)Z

    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-static {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->e(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->e(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Z)Z

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/g;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->o()V

    .line 434
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 415
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/suggestions/g;->a(Landroid/database/Cursor;)V

    return-void
.end method
