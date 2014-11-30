.class final Landroid/view/b;
.super Ljava/lang/Object;
.source "CustomMenuActivity.java"

# interfaces
.implements Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Landroid/view/CustomMenuActivity;

.field private b:I

.field private c:Lcom/dolphin/browser/ui/menu/d;


# direct methods
.method public constructor <init>(Landroid/view/CustomMenuActivity;I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/view/b;->a:Landroid/view/CustomMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Landroid/view/b;->b:I

    .line 55
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/dolphin/browser/ui/menu/MenuBuilder;Z)V
    .locals 2

    .prologue
    .line 58
    if-eqz p2, :cond_2

    .line 59
    iget-object v0, p0, Landroid/view/b;->a:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/b;->b:I

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/view/b;->a:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->a(Landroid/view/CustomMenuActivity;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 63
    iget-object v0, p0, Landroid/view/b;->a:Landroid/view/CustomMenuActivity;

    invoke-static {v0}, Landroid/view/CustomMenuActivity;->b(Landroid/view/CustomMenuActivity;)V

    .line 67
    :cond_1
    iget-object v0, p0, Landroid/view/b;->c:Lcom/dolphin/browser/ui/menu/d;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Landroid/view/b;->c:Lcom/dolphin/browser/ui/menu/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/d;->a()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/b;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 72
    :cond_2
    return-void
.end method

.method public onCloseSubMenu(Lcom/dolphin/browser/ui/menu/h;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Landroid/view/b;->a:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/b;->b:I

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/h;->getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/dolphin/browser/ui/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Landroid/view/b;->a:Landroid/view/CustomMenuActivity;

    invoke-virtual {v0}, Landroid/view/CustomMenuActivity;->a()Landroid/view/Window$Callback;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/b;->b:I

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
    .line 85
    return-void
.end method

.method public onSubMenuSelected(Lcom/dolphin/browser/ui/menu/h;)Z
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/ui/menu/h;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 92
    new-instance v0, Lcom/dolphin/browser/ui/menu/d;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/menu/d;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V

    iput-object v0, p0, Landroid/view/b;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 93
    iget-object v0, p0, Landroid/view/b;->c:Lcom/dolphin/browser/ui/menu/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/d;->a(Landroid/os/IBinder;)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method
