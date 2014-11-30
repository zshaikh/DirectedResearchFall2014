.class final Lcom/voxel/sdk/VoxelSDK$2;
.super Ljava/lang/Object;
.source "VoxelSDK.java"

# interfaces
.implements Lcom/voxel/sdk/AdManager$AdFetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/VoxelSDK;->displayInterstitial(Landroid/content/Context;JLcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/voxel/sdk/VoxelSDK$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxel/sdk/VoxelSDK$2;->val$listener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFetched(Lcom/voxel/api/model/CampaignInfo;)V
    .locals 3
    .param p1, "campaignInfo"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/voxel/sdk/VoxelSDK$2;->val$context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/voxel/sdk/VoxelSDK$2;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 193
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/voxel/sdk/VoxelSDK$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/sdk/VoxelSDK$2;->val$listener:Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    invoke-static {v1, p1, v2}, Lcom/voxel/sdk/VoxelSDK;->displayInterstitial(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)Z

    goto :goto_0
.end method
