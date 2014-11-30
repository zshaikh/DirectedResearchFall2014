.class public Landroid/view/CustomMenuGridView;
.super Landroid/widget/GridView;
.source "CustomMenuGridView.java"


# instance fields
.field private a:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/view/CustomMenuGridView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 49
    instance-of v2, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 50
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/CustomMenuGridView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 58
    iget-object v0, p0, Landroid/view/CustomMenuGridView;->a:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Landroid/view/CustomMenuGridView;->a:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 62
    :cond_1
    if-eqz v2, :cond_2

    .line 65
    check-cast p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 67
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/view/CustomMenuGridView;->requestLayout()V

    .line 82
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 72
    iput-object p1, p0, Landroid/view/CustomMenuGridView;->a:Landroid/view/View$OnCreateContextMenuListener;

    .line 73
    return-void
.end method
