.class Lcom/facebook/orca/server/OrcaServiceQueue$1;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    .line 112
    invoke-interface {p0}, Lcom/facebook/orca/server/OrcaServiceQueueHook;->a()V

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method
