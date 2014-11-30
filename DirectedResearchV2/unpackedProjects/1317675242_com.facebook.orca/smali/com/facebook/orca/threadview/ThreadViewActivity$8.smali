.class Lcom/facebook/orca/threadview/ThreadViewActivity$8;
.super Ljava/lang/Object;
.source "ThreadViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 890
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->f(Lcom/facebook/orca/threadview/ThreadViewActivity;)V

    .line 891
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threadview/ThreadViewActivity;Z)Z

    .line 892
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->e(Lcom/facebook/orca/threadview/ThreadViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->g(Lcom/facebook/orca/threadview/ThreadViewActivity;)Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;

    move-result-object v0

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/tabs/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 901
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$8;->b:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->h(Lcom/facebook/orca/threadview/ThreadViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 905
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 886
    return-void
.end method
