.class Lcom/voxel/sdk/VoxelStaticPreroll$1;
.super Ljava/lang/Object;
.source "VoxelStaticPreroll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelStaticPreroll;
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
    .line 47
    iput-object p1, p0, Lcom/voxel/sdk/VoxelStaticPreroll$1;->this$0:Lcom/voxel/sdk/VoxelStaticPreroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll$1;->this$0:Lcom/voxel/sdk/VoxelStaticPreroll;

    # getter for: Lcom/voxel/sdk/VoxelStaticPreroll;->mCloseButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/voxel/sdk/VoxelStaticPreroll;->access$000(Lcom/voxel/sdk/VoxelStaticPreroll;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 51
    return-void
.end method
