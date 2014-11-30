.class Lcom/dolphin/browser/search/suggestions/i;
.super Landroid/widget/CursorAdapter;
.source "AbstractSearchTabContainer.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 469
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/i;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 472
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 487
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 493
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 490
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 496
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/i;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 484
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/i;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->j()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/i;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/i;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/i;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/i;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->k()I

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/i;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
