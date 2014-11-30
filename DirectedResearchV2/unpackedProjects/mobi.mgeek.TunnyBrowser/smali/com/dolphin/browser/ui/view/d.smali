.class final Lcom/dolphin/browser/ui/view/d;
.super Ljava/lang/Object;
.source "ContentWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/ContentWrapper;

.field private b:I

.field private c:Lcom/dolphin/browser/ui/menu/d;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/view/ContentWrapper;I)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/d;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p2, p0, Lcom/dolphin/browser/ui/view/d;->b:I

    .line 220
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/dolphin/browser/ui/menu/MenuBuilder;Z)V
    .locals 2

    .prologue
    .line 224
    if-eqz p2, :cond_2

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/d;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->d(Lcom/dolphin/browser/ui/view/ContentWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget v1, p0, Lcom/dolphin/browser/ui/view/d;->b:I

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/d;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->e(Lcom/dolphin/browser/ui/view/ContentWrapper;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/d;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->f(Lcom/dolphin/browser/ui/view/ContentWrapper;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/d;->c:Lcom/dolphin/browser/ui/menu/d;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/d;->c:Lcom/dolphin/browser/ui/menu/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/d;->a()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/d;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 239
    :cond_2
    return-void
.end method

.method public onCloseSubMenu(Lcom/dolphin/browser/ui/menu/h;)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/d;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->d(Lcom/dolphin/browser/ui/view/ContentWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget v1, p0, Lcom/dolphin/browser/ui/view/d;->b:I

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/h;->getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/dolphin/browser/ui/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/d;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->d(Lcom/dolphin/browser/ui/view/ContentWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/dolphin/browser/ui/view/d;->b:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public onSubMenuSelected(Lcom/dolphin/browser/ui/menu/h;)Z
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/ui/menu/h;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 264
    new-instance v0, Lcom/dolphin/browser/ui/menu/d;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/menu/d;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/d;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/d;->c:Lcom/dolphin/browser/ui/menu/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/d;->a(Landroid/os/IBinder;)V

    .line 267
    const/4 v0, 0x1

    return v0
.end method
