.class Lcom/voxel/sdk/PlayerEngine$6;
.super Ljava/lang/Object;
.source "PlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PlayerEngine;->sendJSON(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/PlayerEngine;

.field final synthetic val$jsonObj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/PlayerEngine;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine$6;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iput-object p2, p0, Lcom/voxel/sdk/PlayerEngine$6;->val$jsonObj:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine$6;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine$6;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J
    invoke-static {v1}, Lcom/voxel/sdk/PlayerEngine;->access$200(Lcom/voxel/sdk/PlayerEngine;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine$6;->val$jsonObj:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/voxel/sdk/PlayerEngine;->native_send_json(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/voxel/sdk/PlayerEngine;->access$900(Lcom/voxel/sdk/PlayerEngine;JLjava/lang/String;)V

    .line 316
    return-void
.end method
