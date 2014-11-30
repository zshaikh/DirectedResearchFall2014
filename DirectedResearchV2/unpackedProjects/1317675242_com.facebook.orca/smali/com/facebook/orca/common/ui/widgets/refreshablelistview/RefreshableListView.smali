.class public Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;
.super Landroid/widget/ListView;
.source "RefreshableListView.java"


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(I)V

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 54
    :cond_0
    return-void
.end method

.method private a(III)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 60
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;III)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(III)V

    return-void
.end method


# virtual methods
.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 65
    return-void
.end method
