.class Lcom/voxel/sdk/PlayerEngine$1;
.super Ljava/lang/Object;
.source "PlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/PlayerEngine;
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
    .line 107
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine$1;->this$0:Lcom/voxel/sdk/PlayerEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine$1;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mState:Lcom/voxel/sdk/PlayerEngine$State;
    invoke-static {v0}, Lcom/voxel/sdk/PlayerEngine;->access$000(Lcom/voxel/sdk/PlayerEngine;)Lcom/voxel/sdk/PlayerEngine$State;

    move-result-object v0

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$State;->STARTED:Lcom/voxel/sdk/PlayerEngine$State;

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine$1;->this$0:Lcom/voxel/sdk/PlayerEngine;

    sget-object v1, Lcom/voxel/sdk/PlayerEngine$ErrorCode;->TIMEOUT:Lcom/voxel/sdk/PlayerEngine$ErrorCode;

    const-string v2, "Could not connect after timeout"

    invoke-virtual {v0, v1, v2}, Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFailed(Lcom/voxel/sdk/PlayerEngine$ErrorCode;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
