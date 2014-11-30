.class Lcom/voxel/sdk/PlayerEngine$2;
.super Ljava/lang/Thread;
.source "PlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PlayerEngine;->connectToVM(Ljava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/PlayerEngine;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/voxel/sdk/PlayerEngine;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine$2;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iput-object p2, p0, Lcom/voxel/sdk/PlayerEngine$2;->val$host:Ljava/lang/String;

    iput p3, p0, Lcom/voxel/sdk/PlayerEngine$2;->val$port:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 170
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine$2;->this$0:Lcom/voxel/sdk/PlayerEngine;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/voxel/sdk/PlayerEngine;->mEngineHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/voxel/sdk/PlayerEngine;->access$102(Lcom/voxel/sdk/PlayerEngine;Landroid/os/Handler;)Landroid/os/Handler;

    .line 171
    iget-object v0, p0, Lcom/voxel/sdk/PlayerEngine$2;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iget-object v1, p0, Lcom/voxel/sdk/PlayerEngine$2;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mNativePointer:J
    invoke-static {v1}, Lcom/voxel/sdk/PlayerEngine;->access$200(Lcom/voxel/sdk/PlayerEngine;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine$2;->val$host:Ljava/lang/String;

    iget v4, p0, Lcom/voxel/sdk/PlayerEngine$2;->val$port:I

    iget-object v5, p0, Lcom/voxel/sdk/PlayerEngine$2;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mSessionToken:Ljava/lang/String;
    invoke-static {v5}, Lcom/voxel/sdk/PlayerEngine;->access$300(Lcom/voxel/sdk/PlayerEngine;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/voxel/sdk/PlayerEngine;->native_player_connect(JLjava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/voxel/sdk/PlayerEngine;->access$400(Lcom/voxel/sdk/PlayerEngine;JLjava/lang/String;ILjava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 174
    return-void
.end method
