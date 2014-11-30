.class Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;


# direct methods
.method constructor <init>(Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener$1;->this$1:Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;

    # getter for: Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/appoxee/widgets/PullToRefreshListView;
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;->access$0(Lcom/appoxee/widgets/PullToRefreshListView$HeaderAnimationListener;)Lcom/appoxee/widgets/PullToRefreshListView;

    move-result-object v0

    # invokes: Lcom/appoxee/widgets/PullToRefreshListView;->resetHeader()V
    invoke-static {v0}, Lcom/appoxee/widgets/PullToRefreshListView;->access$7(Lcom/appoxee/widgets/PullToRefreshListView;)V

    .line 495
    return-void
.end method
