.class Lcom/fusepowered/m2/m2l/VastVideoView$4;
.super Ljava/lang/Object;
.source "VastVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/VastVideoView;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/VastVideoView;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/VastVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 158
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->getDuration()I

    move-result v2

    int-to-float v1, v2

    .line 159
    .local v1, videoLength:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->getCurrentPosition()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v1

    .line 162
    .local v0, progressPercentage:F
    const/high16 v2, 0x3e80

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mIsFirstMarkHit:Z
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$7(Lcom/fusepowered/m2/m2l/VastVideoView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #setter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mIsFirstMarkHit:Z
    invoke-static {v2, v4}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$8(Lcom/fusepowered/m2/m2l/VastVideoView;Z)V

    .line 164
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mFirstQuarterTrackers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$9(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/fusepowered/m2/m2l/VastVideoView;->pingOnBackgroundThread(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$3(Lcom/fusepowered/m2/m2l/VastVideoView;Ljava/util/List;)V

    .line 167
    :cond_0
    const/high16 v2, 0x3f00

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mIsSecondMarkHit:Z
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$10(Lcom/fusepowered/m2/m2l/VastVideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #setter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mIsSecondMarkHit:Z
    invoke-static {v2, v4}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$11(Lcom/fusepowered/m2/m2l/VastVideoView;Z)V

    .line 169
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mMidPointTrackers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$12(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/fusepowered/m2/m2l/VastVideoView;->pingOnBackgroundThread(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$3(Lcom/fusepowered/m2/m2l/VastVideoView;Ljava/util/List;)V

    .line 172
    :cond_1
    const/high16 v2, 0x3f40

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mIsThirdMarkHit:Z
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$13(Lcom/fusepowered/m2/m2l/VastVideoView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #setter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mIsThirdMarkHit:Z
    invoke-static {v2, v4}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$14(Lcom/fusepowered/m2/m2l/VastVideoView;Z)V

    .line 174
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mThirdQuarterTrackers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$15(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/util/ArrayList;

    move-result-object v3

    #calls: Lcom/fusepowered/m2/m2l/VastVideoView;->pingOnBackgroundThread(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$3(Lcom/fusepowered/m2/m2l/VastVideoView;Ljava/util/List;)V

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->getCurrentPosition()I

    move-result v2

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mShowCloseButtonDelay:I
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$16(Lcom/fusepowered/m2/m2l/VastVideoView;)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 178
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$1(Lcom/fusepowered/m2/m2l/VastVideoView;)Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 179
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mBaseVideoViewListener:Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$1(Lcom/fusepowered/m2/m2l/VastVideoView;)Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/fusepowered/m2/m2l/BaseVideoView$BaseVideoViewListener;->showCloseButton()V

    .line 184
    .end local v0           #progressPercentage:F
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mIsVideoProgressShouldBeChecked:Z
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$17(Lcom/fusepowered/m2/m2l/VastVideoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$18(Lcom/fusepowered/m2/m2l/VastVideoView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/VastVideoView$4;->this$0:Lcom/fusepowered/m2/m2l/VastVideoView;

    #getter for: Lcom/fusepowered/m2/m2l/VastVideoView;->mVideoProgressCheckerRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/fusepowered/m2/m2l/VastVideoView;->access$19(Lcom/fusepowered/m2/m2l/VastVideoView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    :cond_4
    return-void
.end method
