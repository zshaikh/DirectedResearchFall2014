.class Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;
.super Ljava/lang/Object;
.source "Flip3dAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Z

.field private final d:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;


# direct methods
.method static synthetic a(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->d:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;->a:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener$1;-><init>(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FlipListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method
