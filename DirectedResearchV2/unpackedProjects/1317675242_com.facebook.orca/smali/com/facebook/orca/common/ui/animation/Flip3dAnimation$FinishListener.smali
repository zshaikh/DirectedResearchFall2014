.class Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;
.super Ljava/lang/Object;
.source "Flip3dAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;->a:Landroid/view/View;

    .line 195
    iput-object p2, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;->b:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;)Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;->b:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;->a:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener$1;-><init>(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method
