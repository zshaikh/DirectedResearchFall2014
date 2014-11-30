.class Lcom/voxel/sdk/VoxelStaticPreroll$2;
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
    .line 151
    iput-object p1, p0, Lcom/voxel/sdk/VoxelStaticPreroll$2;->this$0:Lcom/voxel/sdk/VoxelStaticPreroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/voxel/sdk/VoxelStaticPreroll$2;->this$0:Lcom/voxel/sdk/VoxelStaticPreroll;

    # invokes: Lcom/voxel/sdk/VoxelStaticPreroll;->onInterstitialClicked()V
    invoke-static {v0}, Lcom/voxel/sdk/VoxelStaticPreroll;->access$100(Lcom/voxel/sdk/VoxelStaticPreroll;)V

    .line 155
    return-void
.end method
