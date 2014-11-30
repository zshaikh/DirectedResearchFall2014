.class Lcom/facebook/orca/ops/OrcaServiceOperation$1;
.super Lcom/facebook/orca/server/ICompletionHandler$Stub;
.source "OrcaServiceOperation.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {p0}, Lcom/facebook/orca/server/ICompletionHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Lcom/facebook/orca/ops/OrcaServiceOperation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation$1;Lcom/facebook/orca/server/OperationResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method public b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Lcom/facebook/orca/ops/OrcaServiceOperation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceOperation$1$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$1$2;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation$1;Lcom/facebook/orca/server/OperationResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-void
.end method
