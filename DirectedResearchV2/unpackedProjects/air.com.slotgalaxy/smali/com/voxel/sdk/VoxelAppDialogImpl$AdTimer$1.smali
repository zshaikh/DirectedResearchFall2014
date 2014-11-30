.class Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer$1;
.super Ljava/lang/Object;
.source "VoxelAppDialogImpl.java"

# interfaces
.implements Lcom/voxel/sdk/PostrollOverlayView$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer$1;->this$1:Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostrollCompleted()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer$1;->this$1:Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;

    iget-object v0, v0, Lcom/voxel/sdk/VoxelAppDialogImpl$AdTimer;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    sget-object v1, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->TIMER_FINISHED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->stopWithReason(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;)V

    .line 444
    return-void
.end method
