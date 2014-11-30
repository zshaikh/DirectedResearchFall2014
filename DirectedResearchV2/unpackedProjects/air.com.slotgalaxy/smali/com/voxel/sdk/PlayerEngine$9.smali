.class Lcom/voxel/sdk/PlayerEngine$9;
.super Ljava/lang/Object;
.source "PlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/PlayerEngine;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/voxel/sdk/PlayerEngine;J)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine$9;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iput-wide p2, p0, Lcom/voxel/sdk/PlayerEngine$9;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 458
    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine$9;->this$0:Lcom/voxel/sdk/PlayerEngine;

    # getter for: Lcom/voxel/sdk/PlayerEngine;->mSessionListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/voxel/sdk/PlayerEngine;->access$1000(Lcom/voxel/sdk/PlayerEngine;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 459
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/voxel/sdk/SessionListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/sdk/SessionListener;

    .line 460
    .local v1, "l":Lcom/voxel/sdk/SessionListener;
    if-eqz v1, :cond_0

    .line 462
    iget-wide v3, p0, Lcom/voxel/sdk/PlayerEngine$9;->val$duration:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-interface {v1, v3}, Lcom/voxel/sdk/SessionListener;->onSessionFinished(I)V

    goto :goto_0

    .line 464
    .end local v1    # "l":Lcom/voxel/sdk/SessionListener;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/voxel/sdk/SessionListener;>;"
    :cond_1
    return-void
.end method
