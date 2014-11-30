.class Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/widgets/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnItemLongClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/widgets/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/appoxee/widgets/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appoxee/widgets/PullToRefreshListView;Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;-><init>(Lcom/appoxee/widgets/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-static {v0, v2}, Lcom/appoxee/widgets/PullToRefreshListView;->access$11(Lcom/appoxee/widgets/PullToRefreshListView;Z)V

    .line 542
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->access$13(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->access$0(Lcom/appoxee/widgets/PullToRefreshListView;)Lcom/appoxee/widgets/PullToRefreshListView$State;

    move-result-object v0

    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->access$13(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemLongClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 548
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
