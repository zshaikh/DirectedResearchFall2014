.class public Lcom/dolphin/browser/ui/menu/d;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

.field private b:Landroid/widget/ListAdapter;

.field private c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/d;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 129
    :cond_0
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 40
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getMenuAdapter(I)Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/ui/menu/d;->b:Landroid/widget/ListAdapter;

    .line 42
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/ui/menu/d;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 59
    :goto_0
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/ui/x;->a(Landroid/app/AlertDialog$Builder;Z)V

    .line 69
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->c:Landroid/app/AlertDialog;

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->c:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 74
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 78
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->c:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 81
    return-void

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/d;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 134
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 86
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/d;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 116
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/d;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/dolphin/browser/ui/menu/d;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->a(Z)V

    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/d;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
