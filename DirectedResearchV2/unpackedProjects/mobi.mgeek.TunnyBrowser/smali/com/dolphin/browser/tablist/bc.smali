.class Lcom/dolphin/browser/tablist/bc;
.super Landroid/widget/CursorAdapter;
.source "RecentTablistView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ay;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tablist/ay;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 339
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bc;->a:Lcom/dolphin/browser/tablist/ay;

    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 342
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 363
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bc;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0, p1, p2, p3}, Lcom/dolphin/browser/tablist/ay;->a(Lcom/dolphin/browser/tablist/ay;Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 354
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bc;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ay;->e(Lcom/dolphin/browser/tablist/ay;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bc;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0, p1}, Lcom/dolphin/browser/tablist/ay;->b(Lcom/dolphin/browser/tablist/ay;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bc;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0, p1}, Lcom/dolphin/browser/tablist/ay;->a(Lcom/dolphin/browser/tablist/ay;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bc;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0, p1, p2, p3}, Lcom/dolphin/browser/tablist/ay;->a(Lcom/dolphin/browser/tablist/ay;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bc;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ay;->f(Lcom/dolphin/browser/tablist/ay;)I

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bc;->a:Lcom/dolphin/browser/tablist/ay;

    invoke-static {v0, p1, p2, p3}, Lcom/dolphin/browser/tablist/ay;->a(Lcom/dolphin/browser/tablist/ay;Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
