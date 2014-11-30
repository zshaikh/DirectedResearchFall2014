.class Lcom/voxel/sdk/VoxelStaticPreroll$3;
.super Ljava/lang/Object;
.source "VoxelStaticPreroll.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/VoxelStaticPreroll;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/VoxelStaticPreroll;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/VoxelStaticPreroll;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/voxel/sdk/VoxelStaticPreroll$3;->this$0:Lcom/voxel/sdk/VoxelStaticPreroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    const-string v0, "will_not_play"

    iget-object v1, p0, Lcom/voxel/sdk/VoxelStaticPreroll$3;->this$0:Lcom/voxel/sdk/VoxelStaticPreroll;

    # getter for: Lcom/voxel/sdk/VoxelStaticPreroll;->mCampaignInfo:Lcom/voxel/api/model/CampaignInfo;
    invoke-static {v1}, Lcom/voxel/sdk/VoxelStaticPreroll;->access$200(Lcom/voxel/sdk/VoxelStaticPreroll;)Lcom/voxel/api/model/CampaignInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;)V

    .line 177
    iget-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll$3;->this$0:Lcom/voxel/sdk/VoxelStaticPreroll;

    invoke-virtual {v0}, Lcom/voxel/sdk/VoxelStaticPreroll;->dismiss()V

    .line 178
    return-void
.end method
