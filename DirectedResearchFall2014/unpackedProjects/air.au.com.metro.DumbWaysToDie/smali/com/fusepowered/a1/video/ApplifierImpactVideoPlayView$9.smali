.class Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;
.super Ljava/lang/Object;
.source "ApplifierImpactVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->setBufferingTextVisibility(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

.field private final synthetic val$canSkip:Z

.field private final synthetic val$hasSkip:Z

.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    iput p2, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->val$visibility:I

    iput-boolean p3, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->val$hasSkip:Z

    iput-boolean p4, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->val$canSkip:Z

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$32(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_bufferingText:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$32(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 486
    :cond_0
    iget v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->val$visibility:I

    if-nez v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #getter for: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->_skipText:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$7(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->createAndAddSkipText()V
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$33(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->enableSkippingFromSkipText()V
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$5(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    .line 502
    :goto_0
    return-void

    .line 492
    :cond_2
    iget-boolean v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->val$hasSkip:Z

    if-eqz v0, :cond_4

    .line 493
    iget-boolean v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->val$canSkip:Z

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->enableSkippingFromSkipText()V
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$5(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    goto :goto_0

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->disableSkippingFromSkipText()V
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$34(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    goto :goto_0

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$9;->this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;

    #calls: Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->hideSkipText()V
    invoke-static {v0}, Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;->access$8(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)V

    goto :goto_0
.end method
