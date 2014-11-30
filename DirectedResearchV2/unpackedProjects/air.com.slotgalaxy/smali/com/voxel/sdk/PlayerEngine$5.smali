.class Lcom/voxel/sdk/PlayerEngine$5;
.super Ljava/lang/Object;
.source "PlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PlayerEngine;->sendEvent(Lcom/voxel/api/model/CVMEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/PlayerEngine;

.field final synthetic val$event:Lcom/voxel/api/model/CVMEvent;

.field final synthetic val$reliable:Z


# direct methods
.method constructor <init>(Lcom/voxel/sdk/PlayerEngine;Lcom/voxel/api/model/CVMEvent;Z)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine$5;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iput-object p2, p0, Lcom/voxel/sdk/PlayerEngine$5;->val$event:Lcom/voxel/api/model/CVMEvent;

    iput-boolean p3, p0, Lcom/voxel/sdk/PlayerEngine$5;->val$reliable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 303
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine$5;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine$5;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J
    invoke-static {v1}, Lcom/voxel/sdk/PlayerEngine;->access$200(Lcom/voxel/sdk/PlayerEngine;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine$5;->val$event:Lcom/voxel/api/model/CVMEvent;

    iget-boolean v4, p0, Lcom/voxel/sdk/PlayerEngine$5;->val$reliable:Z

    # invokes: Lcom/voxel/sdk/PlayerEngine;->native_send_event(JLcom/voxel/api/model/CVMEvent;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxel/sdk/PlayerEngine;->access$800(Lcom/voxel/sdk/PlayerEngine;JLcom/voxel/api/model/CVMEvent;Z)V

    .line 304
    return-void
.end method
