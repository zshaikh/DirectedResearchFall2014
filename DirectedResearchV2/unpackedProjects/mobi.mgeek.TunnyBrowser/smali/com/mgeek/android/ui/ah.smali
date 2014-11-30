.class final Lcom/mgeek/android/ui/ah;
.super Ljava/lang/Object;
.source "MainScreen.java"

# interfaces
.implements Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/MainScreen;

.field private b:I

.field private c:Lcom/dolphin/browser/ui/menu/d;


# direct methods
.method public constructor <init>(Lcom/mgeek/android/ui/MainScreen;I)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mgeek/android/ui/ah;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p2, p0, Lcom/mgeek/android/ui/ah;->b:I

    .line 226
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/dolphin/browser/ui/menu/MenuBuilder;Z)V
    .locals 2

    .prologue
    .line 231
    if-eqz p2, :cond_2

    .line 232
    iget-object v0, p0, Lcom/mgeek/android/ui/ah;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-static {v0}, Lcom/mgeek/android/ui/MainScreen;->d(Lcom/mgeek/android/ui/MainScreen;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    iget v1, p0, Lcom/mgeek/android/ui/ah;->b:I

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/ah;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-static {v0}, Lcom/mgeek/android/ui/MainScreen;->e(Lcom/mgeek/android/ui/MainScreen;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/mgeek/android/ui/ah;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-static {v0}, Lcom/mgeek/android/ui/MainScreen;->f(Lcom/mgeek/android/ui/MainScreen;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/ui/ah;->c:Lcom/dolphin/browser/ui/menu/d;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/mgeek/android/ui/ah;->c:Lcom/dolphin/browser/ui/menu/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/d;->a()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/ah;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 246
    :cond_2
    return-void
.end method

.method public onCloseSubMenu(Lcom/dolphin/browser/ui/menu/h;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mgeek/android/ui/ah;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-static {v0}, Lcom/mgeek/android/ui/MainScreen;->d(Lcom/mgeek/android/ui/MainScreen;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    iget v1, p0, Lcom/mgeek/android/ui/ah;->b:I

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/h;->getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/dolphin/browser/ui/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mgeek/android/ui/ah;->a:Lcom/mgeek/android/ui/MainScreen;

    invoke-static {v0}, Lcom/mgeek/android/ui/MainScreen;->d(Lcom/mgeek/android/ui/MainScreen;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mgeek/android/ui/ah;->b:I

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
    .line 266
    return-void
.end method

.method public onSubMenuSelected(Lcom/dolphin/browser/ui/menu/h;)Z
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/ui/menu/h;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 275
    new-instance v0, Lcom/dolphin/browser/ui/menu/d;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/menu/d;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/ah;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 276
    iget-object v0, p0, Lcom/mgeek/android/ui/ah;->c:Lcom/dolphin/browser/ui/menu/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/d;->a(Landroid/os/IBinder;)V

    .line 278
    const/4 v0, 0x1

    return v0
.end method
