.class Lcom/voxel/sdk/VoxelAppView$1;
.super Ljava/lang/Object;
.source "VoxelAppView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/VoxelAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/VoxelAppView;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/VoxelAppView;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/voxel/sdk/VoxelAppView$1;->this$0:Lcom/voxel/sdk/VoxelAppView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/voxel/sdk/VoxelAppView$1;->this$0:Lcom/voxel/sdk/VoxelAppView;

    # invokes: Lcom/voxel/sdk/VoxelAppView;->processEvent(Landroid/view/MotionEvent;)V
    invoke-static {v0, p2}, Lcom/voxel/sdk/VoxelAppView;->access$300(Lcom/voxel/sdk/VoxelAppView;Landroid/view/MotionEvent;)V

    .line 267
    const/4 v0, 0x1

    return v0
.end method
