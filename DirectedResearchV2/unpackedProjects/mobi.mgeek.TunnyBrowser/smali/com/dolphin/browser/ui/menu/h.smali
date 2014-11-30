.class public Lcom/dolphin/browser/ui/menu/h;
.super Lcom/dolphin/browser/ui/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private final g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

.field private final h:Lcom/dolphin/browser/ui/menu/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/ui/menu/MenuBuilder;Lcom/dolphin/browser/ui/menu/e;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/dolphin/browser/ui/menu/h;->g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 22
    iput-object p3, p0, Lcom/dolphin/browser/ui/menu/h;->h:Lcom/dolphin/browser/ui/menu/e;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a()Z

    move-result v0

    return v0
.end method

.method public getCallback()Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getCallback()Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->h:Lcom/dolphin/browser/ui/menu/e;

    return-object v0
.end method

.method public getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    return-object v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 61
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->h:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/menu/e;->setIcon(I)Landroid/view/MenuItem;

    .line 75
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->h:Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/menu/e;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 70
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 28
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/h;->g:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 38
    return-void
.end method
