.class Lcom/facebook/orca/server/OrcaServiceQueue$4;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

.field final synthetic b:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iput-object p2, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->c(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    check-cast p1, Lcom/facebook/orca/server/OperationResult;

    invoke-static {v0, v1, p1}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    .line 264
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0, v4}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;J)V

    .line 266
    return-object v4

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
