.class Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener$1;
.super Ljava/lang/Object;
.source "Flip3dAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;->a(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;)Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener$1;->a:Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;->a(Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$FinishListener;)Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$OnFlipListener;->b()V

    .line 208
    :cond_0
    return-void
.end method
