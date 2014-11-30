.class Lcom/voxel/sdk/PlayerEngine$8;
.super Ljava/lang/Object;
.source "PlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/sdk/PlayerEngine;->dispatchSessionFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/PlayerEngine;

.field final synthetic val$code:I

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/PlayerEngine;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/voxel/sdk/PlayerEngine$8;->this$0:Lcom/voxel/sdk/PlayerEngine;

    iput p2, p0, Lcom/voxel/sdk/PlayerEngine$8;->val$code:I

    iput-object p3, p0, Lcom/voxel/sdk/PlayerEngine$8;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 429
    iget-object v3, p0, Lcom/voxel/sdk/PlayerEngine$8;->this$0:Lcom/voxel/sdk/PlayerEngine;

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

    .line 430
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/voxel/sdk/SessionListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/sdk/SessionListener;

    .line 431
    .local v1, "l":Lcom/voxel/sdk/SessionListener;
    if-eqz v1, :cond_0

    .line 433
    iget v3, p0, Lcom/voxel/sdk/PlayerEngine$8;->val$code:I

    iget-object v4, p0, Lcom/voxel/sdk/PlayerEngine$8;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/voxel/sdk/SessionListener;->onSessionFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 435
    .end local v1    # "l":Lcom/voxel/sdk/SessionListener;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/voxel/sdk/SessionListener;>;"
    :cond_1
    return-void
.end method
