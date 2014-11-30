.class public Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;
.super Landroid/os/CountDownTimer;
.source "VoxelAppDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelAppDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AdTimer"
.end annotation


# instance fields
.field private duration:J

.field final synthetic this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;


# direct methods
.method public constructor <init>(Lcom/voxel/sdk/VoxelAppDialogImpl;JJ)V
    .locals 0
    .param p2, "startTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 422
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    .line 423
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 424
    iput-wide p2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->duration:J

    .line 425
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 8

    .prologue
    .line 429
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->updateTimer(J)V

    .line 432
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$100(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/api/model/CampaignInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/api/model/CampaignInfo;->getPostrollType()Lcom/voxel/api/model/CampaignInfo$PostrollType;

    move-result-object v7

    .line 433
    .local v7, "postrollType":Lcom/voxel/api/model/CampaignInfo$PostrollType;
    sget-object v1, Lcom/voxel/api/model/CampaignInfo$PostrollType;->NONE:Lcom/voxel/api/model/CampaignInfo$PostrollType;

    invoke-virtual {v7, v1}, Lcom/voxel/api/model/CampaignInfo$PostrollType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppInfo:Lcom/voxel/api/model/AppInfo;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$200(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/api/model/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$100(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/api/model/CampaignInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    sget-object v2, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->TIMER_FINISHED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/VoxelAppDialogImpl;->stopWithReason(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;)V

    .line 450
    :goto_0
    return-void

    .line 437
    :cond_1
    new-instance v0, Lcom/voxel/sdk/PostrollOverlayView;

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    invoke-virtual {v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;
    invoke-static {v2}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$100(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/api/model/CampaignInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppInfo:Lcom/voxel/api/model/AppInfo;
    invoke-static {v3}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$200(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/api/model/AppInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mLandscape:Z
    invoke-static {v4}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$300(Lcom/voxel/sdk/VoxelAppDialogImpl;)Z

    move-result v4

    iget-object v5, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;
    invoke-static {v5}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$000(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/sdk/view/AppDialogView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/sdk/VoxelAppView;->getControlRotation()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/voxel/sdk/PostrollOverlayView;-><init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Lcom/voxel/api/model/AppInfo;ZI)V

    .line 440
    .local v0, "postOverlay":Lcom/voxel/sdk/PostrollOverlayView;
    new-instance v6, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer$1;

    invoke-direct {v6, p0}, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer$1;-><init>(Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;)V

    .line 446
    .local v6, "completionListener":Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;
    invoke-virtual {v0, v6}, Lcom/voxel/sdk/PostrollOverlayView;->setCompletionListener(Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;)V

    .line 447
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$000(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/sdk/view/AppDialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/VoxelAppView;->setBlurEnabled(Z)V

    .line 448
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$000(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/sdk/view/AppDialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/voxel/sdk/VoxelAppView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->updateTimer(J)V

    .line 455
    return-void
.end method

.method public updateTimer(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 458
    long-to-double v1, p1

    const-wide v3, 0x3f50624dd2f1a9fcL

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 459
    .local v0, "secondsLeft":I
    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$000(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/sdk/view/AppDialogView;

    move-result-object v1

    const/high16 v2, 0x3f800000

    iget-wide v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->duration:J

    sub-long/2addr v3, p1

    long-to-float v3, v3

    mul-float/2addr v2, v3

    iget-wide v3, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->duration:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/sdk/view/AppDialogView;->setProgress(FLjava/lang/String;)V

    .line 461
    return-void
.end method
