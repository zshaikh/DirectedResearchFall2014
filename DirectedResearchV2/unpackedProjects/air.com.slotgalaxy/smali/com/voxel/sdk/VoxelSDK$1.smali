.class final Lcom/voxel/sdk/VoxelSDK$1;
.super Ljava/lang/Object;
.source "VoxelSDK.java"

# interfaces
.implements Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/VoxelSDK;->displayInterstitial(Landroid/content/Context;Lcom/voxel/sdk/VoxelSDK$AdListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/voxel/sdk/VoxelSDK$AdListener;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/VoxelSDK$AdListener;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/voxel/sdk/VoxelSDK$1;->val$listener:Lcom/voxel/sdk/VoxelSDK$AdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionFinished(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;I)Z
    .locals 1
    .param p1, "reason"    # Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;
    .param p2, "duration"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/voxel/sdk/VoxelSDK$1;->val$listener:Lcom/voxel/sdk/VoxelSDK$AdListener;

    invoke-interface {v0}, Lcom/voxel/sdk/VoxelSDK$AdListener;->onAdFinished()V

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onSessionStarted()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
