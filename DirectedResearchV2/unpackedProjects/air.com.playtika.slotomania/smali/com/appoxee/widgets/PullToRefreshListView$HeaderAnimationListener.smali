.class Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/widgets/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAnimationListener"
.end annotation


# instance fields
.field private height:I

.field private stateAtAnimationStart:Lcom/appoxee/widgets/PullToRefreshListView$State;

.field final synthetic this$0:Lcom/appoxee/widgets/PullToRefreshListView;

.field private translation:I


# direct methods
.method public constructor <init>(Lcom/appoxee/widgets/PullToRefreshListView;I)V
    .locals 0
    .param p2, "translation"    # I

    .prologue
    .line 458
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput p2, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->translation:I

    .line 460
    return-void
.end method

.method static synthetic access$0(Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;)Lcom/appoxee/widgets/PullToRefreshListView;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x0

    .line 476
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    iget-object v2, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v3, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-ne v2, v3, :cond_2

    move v2, v4

    :goto_0
    # invokes: Lcom/appoxee/widgets/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v1, v2}, Lcom/appoxee/widgets/PullToRefreshListView;->access$4(Lcom/appoxee/widgets/PullToRefreshListView;I)V

    .line 478
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lcom/appoxee/widgets/PullToRefreshListView;->setSelection(I)V

    .line 480
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 481
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 482
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->access$1(Lcom/appoxee/widgets/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/appoxee/widgets/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->bounceBackHeader:Z
    invoke-static {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->access$5(Lcom/appoxee/widgets/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-static {v1, v4}, Lcom/appoxee/widgets/PullToRefreshListView;->access$6(Lcom/appoxee/widgets/PullToRefreshListView;Z)V

    .line 491
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    new-instance v2, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener$1;

    invoke-direct {v2, p0}, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener$1;-><init>(Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;)V

    .line 496
    const-wide/16 v3, 0x64

    .line 491
    invoke-virtual {v1, v2, v3, v4}, Lcom/appoxee/widgets/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    :cond_1
    :goto_1
    return-void

    .line 476
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcom/appoxee/widgets/PullToRefreshListView;->access$2()I

    move-result v2

    neg-int v2, v2

    .line 477
    iget-object v3, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/appoxee/widgets/PullToRefreshListView;->access$3(Lcom/appoxee/widgets/PullToRefreshListView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 497
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/appoxee/widgets/PullToRefreshListView$State;

    sget-object v2, Lcom/appoxee/widgets/PullToRefreshListView$State;->REFRESHING:Lcom/appoxee/widgets/PullToRefreshListView$State;

    if-eq v1, v2, :cond_1

    .line 498
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    sget-object v2, Lcom/appoxee/widgets/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/appoxee/widgets/PullToRefreshListView$State;

    # invokes: Lcom/appoxee/widgets/PullToRefreshListView;->setState(Lcom/appoxee/widgets/PullToRefreshListView$State;)V
    invoke-static {v1, v2}, Lcom/appoxee/widgets/PullToRefreshListView;->access$8(Lcom/appoxee/widgets/PullToRefreshListView;Lcom/appoxee/widgets/PullToRefreshListView$State;)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 503
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->state:Lcom/appoxee/widgets/PullToRefreshListView$State;
    invoke-static {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->access$0(Lcom/appoxee/widgets/PullToRefreshListView;)Lcom/appoxee/widgets/PullToRefreshListView$State;

    move-result-object v1

    iput-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/appoxee/widgets/PullToRefreshListView$State;

    .line 465
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 466
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->height:I

    .line 467
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->translation:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 468
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/appoxee/widgets/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lcom/appoxee/widgets/PullToRefreshListView;->access$1(Lcom/appoxee/widgets/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appoxee/widgets/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 473
    :cond_0
    return-void
.end method
