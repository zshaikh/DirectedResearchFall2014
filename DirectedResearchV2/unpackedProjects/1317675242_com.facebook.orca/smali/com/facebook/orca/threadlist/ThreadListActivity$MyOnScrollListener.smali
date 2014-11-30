.class Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;
.super Ljava/lang/Object;
.source "ThreadListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;Lcom/facebook/orca/threadlist/ThreadListActivity$1;)V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;-><init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 718
    add-int v0, p2, p3

    .line 719
    if-lez p4, :cond_0

    if-ne v0, p4, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->g(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/threadlist/ThreadListAdapter;

    move-result-object v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 721
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->c()V

    .line 723
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 707
    if-nez p2, :cond_0

    .line 708
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->f(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/server/BackgroundRefreshRunner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Z)V

    .line 709
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->e(Lcom/facebook/orca/threadlist/ThreadListActivity;)V

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$MyOnScrollListener;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->f(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/server/BackgroundRefreshRunner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Z)V

    goto :goto_0
.end method
