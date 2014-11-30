.class Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView$1;
.super Ljava/lang/Object;
.source "RefreshableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView$1;->a:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView$1;->a:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;III)V

    .line 45
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView$1;->a:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    invoke-static {v0, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;I)V

    .line 41
    return-void
.end method
