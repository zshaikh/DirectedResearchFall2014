.class Lcom/voxel/sdk/PlayerEngine$4;
.super Ljava/lang/Object;
.source "PlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PlayerEngine;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/PlayerEngine;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/PlayerEngine;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine$4;->this$0:Lcom/voxel/sdk/PlayerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine$4;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine$4;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J
    invoke-static {v1}, Lcom/voxel/sdk/PlayerEngine;->access$200(Lcom/voxel/sdk/PlayerEngine;)J

    move-result-wide v1

    # invokes: Lcom/voxel/sdk/PlayerEngine;->native_player_disconnect(J)V
    invoke-static {v0, v1, v2}, Lcom/voxel/sdk/PlayerEngine;->access$700(Lcom/voxel/sdk/PlayerEngine;J)V

    .line 213
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 214
    return-void
.end method
