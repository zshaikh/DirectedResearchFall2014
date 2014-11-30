.class Lcom/voxel/sdk/VoxelAppDialogImpl$2;
.super Ljava/lang/Object;
.source "VoxelAppDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/VoxelAppDialogImpl;-><init>(Landroid/content/Context;)V
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
    .line 80
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$2;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$2;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    sget-object v1, Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;->INSTALL_REQUESTED:Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;

    invoke-virtual {v0, v1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->stopWithReason(Lcom/voxel/sdk/ad/VoxelAppDialog$FinishReason;)V

    .line 84
    return-void
.end method
