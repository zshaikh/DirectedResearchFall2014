.class Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/widgets/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/widgets/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/appoxee/widgets/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appoxee/widgets/PullToRefreshListView;Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;-><init>(Lcom/appoxee/widgets/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appoxee/widgets/PullToRefreshListView;->access$11(Lcom/appoxee/widgets/PullToRefreshListView;Z)V

    .line 529
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->access$12(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->access$0(Lcom/appoxee/widgets/PullToRefreshListView;)Lcom/appoxee/widgets/PullToRefreshListView$State;

    move-result-object v0

    sget-object v1, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->access$12(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnItemClickListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 534
    :cond_0
    return-void
.end method
