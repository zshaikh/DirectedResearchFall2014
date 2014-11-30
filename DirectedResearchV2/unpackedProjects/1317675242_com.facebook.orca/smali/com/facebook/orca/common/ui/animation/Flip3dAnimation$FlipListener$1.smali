.class Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;
.super Ljava/lang/Object;
.source "Flip3dAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/high16 v1, 0x40000000

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->a(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->a(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;->a()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->b(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->b(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->c(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    new-instance v0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;

    const/high16 v1, -0x3d4c0000

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;-><init>(FFFFZ)V

    .line 166
    :goto_0
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->setDuration(J)V

    .line 167
    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->setFillAfter(Z)V

    .line 168
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    new-instance v1, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;

    iget-object v3, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v3}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->b(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v4}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->a(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;-><init>(Landroid/view/View;Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 170
    iget-object v1, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v1}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->b(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->d(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 174
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 175
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 176
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 177
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 178
    iget-object v1, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;

    invoke-static {v1}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->d(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    :cond_1
    return-void

    .line 163
    :cond_2
    new-instance v0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;

    const/high16 v1, 0x42b40000

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;-><init>(FFFFZ)V

    goto :goto_0
.end method
