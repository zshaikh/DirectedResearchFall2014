.class public interface abstract Lcom/voxel/sdk/ad/VoxelAppDialog;
.super Ljava/lang/Object;
.source "VoxelAppDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;,
        Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;
    }
.end annotation


# virtual methods
.method public abstract setAppConfig(I)V
.end method

.method public abstract setAppConfig(Lcom/voxel/sdk/VoxelAppConfig;)V
.end method

.method public abstract setStateListener(Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V
.end method

.method public abstract show()V
.end method
