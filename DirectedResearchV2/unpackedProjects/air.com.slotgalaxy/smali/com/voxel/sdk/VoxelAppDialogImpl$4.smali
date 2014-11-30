.class Lcom/voxel/sdk/VoxelAppDialogImpl$4;
.super Ljava/lang/Object;
.source "VoxelAppDialogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelAppDialogImpl;
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
    .line 290
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$4;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppDialogImpl$4;->this$0:Lcom/voxel/sdk/VoxelAppDialogImpl;

    # getter for: Lcom/voxel/sdk/VoxelAppDialogImpl;->mAppView:Lcom/voxel/sdk/view/AppDialogView;
    invoke-static {v0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->access$000(Lcom/voxel/sdk/VoxelAppDialogImpl;)Lcom/voxel/sdk/view/AppDialogView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/sdk/view/AppDialogView;->getCloseButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    return-void
.end method
