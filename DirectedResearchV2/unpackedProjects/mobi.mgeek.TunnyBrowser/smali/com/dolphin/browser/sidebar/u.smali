.class final Lcom/dolphin/browser/sidebar/u;
.super Ljava/lang/Object;
.source "CustomMenuLinearLayout.java"

# interfaces
.implements Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;

.field private b:I

.field private c:Lcom/dolphin/browser/ui/menu/d;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;I)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/u;->a:Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p2, p0, Lcom/dolphin/browser/sidebar/u;->b:I

    .line 83
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/dolphin/browser/ui/menu/MenuBuilder;Z)V
    .locals 2

    .prologue
    .line 88
    if-eqz p2, :cond_2

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/u;->a:Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget v1, p0, Lcom/dolphin/browser/sidebar/u;->b:I

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/u;->a:Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->b(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;)Lcom/dolphin/browser/ui/menu/a;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/u;->a:Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->c(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/u;->c:Lcom/dolphin/browser/ui/menu/d;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/u;->c:Lcom/dolphin/browser/ui/menu/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/d;->a()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/u;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 103
    :cond_2
    return-void
.end method

.method public onCloseSubMenu(Lcom/dolphin/browser/ui/menu/h;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/u;->a:Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget v1, p0, Lcom/dolphin/browser/sidebar/u;->b:I

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/menu/h;->getRootMenu()Lcom/dolphin/browser/ui/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/dolphin/browser/ui/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/u;->a:Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;->a(Lcom/dolphin/browser/sidebar/CustomMenuLinearLayout;)Landroid/view/Window$Callback;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/dolphin/browser/sidebar/u;->b:I

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
    .line 124
    return-void
.end method

.method public onSubMenuSelected(Lcom/dolphin/browser/ui/menu/h;)Z
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/ui/menu/h;->setCallback(Lcom/dolphin/browser/ui/menu/MenuBuilder$Callback;)V

    .line 133
    new-instance v0, Lcom/dolphin/browser/ui/menu/d;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/menu/d;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/u;->c:Lcom/dolphin/browser/ui/menu/d;

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/u;->c:Lcom/dolphin/browser/ui/menu/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/d;->a(Landroid/os/IBinder;)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method
