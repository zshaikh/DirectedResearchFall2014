.class Lcom/voxel/sdk/VoxelAppDialogImpl$3;
.super Ljava/lang/Object;
.source "VoxelAppDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/VoxelAppDialogImpl;->showBlurredPreroll(Lcom/voxel/api/model/CampaignInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/VoxelAppDialogImpl;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$3;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$3;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;
    invoke-static {v0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$000(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/sdk/view/AppDialogView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getVoxelView()Lcom/voxel/sdk/VoxelAppView;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$3;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    iget-object v1, v1, Lcom/voxel/sdk/VoxelAppDialogImpl;->mPrerollOverlay:Lcom/voxel/sdk/PrerollOverlayView;

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppView;->removeView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$3;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    invoke-virtual {v0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->startSession()V

    .line 147
    const-string v0, "will_play"

    iget-object v1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$3;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$100(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/api/model/CampaignInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;)V

    .line 148
    return-void
.end method
