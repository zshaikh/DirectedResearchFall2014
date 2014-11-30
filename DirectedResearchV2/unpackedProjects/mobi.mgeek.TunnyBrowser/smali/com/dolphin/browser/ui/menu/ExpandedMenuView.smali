.class public final Lcom/dolphin/browser/ui/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/dolphin/browser/ui/menu/MenuBuilder$ItemInvoker;
.implements Lcom/dolphin/browser/ui/menu/f;


# instance fields
.field private a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-object v0, Lcom/dolphin/browser/core/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->b:I

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->b:I

    return v0
.end method

.method public a(Lcom/dolphin/browser/ui/menu/MenuBuilder;I)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 42
    new-instance v0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;-><init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;I)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    if-eqz p1, :cond_1

    .line 50
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public invokeItem(Lcom/dolphin/browser/ui/menu/e;)Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/menu/ExpandedMenuView;->invokeItem(Lcom/dolphin/browser/ui/menu/e;)Z

    .line 76
    return-void
.end method
