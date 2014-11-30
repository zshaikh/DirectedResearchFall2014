.class Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/widgets/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appoxee/widgets/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/appoxee/widgets/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appoxee/widgets/PullToRefreshListView;Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcom/appoxee/widgets/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 509
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->access$9(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 511
    .local v0, "initialHeaderHeight":I
    if-lez v0, :cond_0

    .line 512
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->access$10(I)V

    .line 514
    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcom/appoxee/widgets/PullToRefreshListView;->access$2()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;
    invoke-static {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->access$0(Lcom/appoxee/widgets/PullToRefreshListView;)Lcom/appoxee/widgets/PullToRefreshListView$State;

    move-result-object v1

    sget-object v2, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-eq v1, v2, :cond_0

    .line 515
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcom/appoxee/widgets/PullToRefreshListView;->access$2()I

    move-result v2

    neg-int v2, v2

    # invokes: Lcom/appoxee/widgets/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v1, v2}, Lcom/appoxee/widgets/PullToRefreshListView;->access$4(Lcom/appoxee/widgets/PullToRefreshListView;I)V

    .line 516
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->requestLayout()V

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 521
    return-void
.end method
