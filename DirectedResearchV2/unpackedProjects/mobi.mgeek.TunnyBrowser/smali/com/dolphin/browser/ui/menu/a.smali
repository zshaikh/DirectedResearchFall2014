.class public Lcom/dolphin/browser/ui/menu/a;
.super Lcom/dolphin/browser/ui/menu/MenuBuilder;
.source "ContextMenuBuilder.java"

# interfaces
.implements Landroid/view/ContextMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/os/IBinder;)Lcom/dolphin/browser/ui/menu/d;
    .locals 1

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/a;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 68
    new-instance v0, Lcom/dolphin/browser/ui/menu/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/menu/d;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/ui/menu/d;->a(Landroid/os/IBinder;)V

    .line 74
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaderIcon(I)Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method
