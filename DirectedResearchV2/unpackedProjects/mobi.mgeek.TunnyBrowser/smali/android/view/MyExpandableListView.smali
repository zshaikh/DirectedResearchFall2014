.class public Landroid/view/MyExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "MyExpandableListView.java"


# instance fields
.field private a:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/view/MyExpandableListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 64
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/MyExpandableListView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 72
    iget-object v0, p0, Landroid/view/MyExpandableListView;->a:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Landroid/view/MyExpandableListView;->a:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 76
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 79
    check-cast p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 81
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onAttachedToWindow()V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/view/MyExpandableListView;->requestLayout()V

    .line 96
    :cond_0
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 86
    iput-object p1, p0, Landroid/view/MyExpandableListView;->a:Landroid/view/View$OnCreateContextMenuListener;

    .line 87
    return-void
.end method
