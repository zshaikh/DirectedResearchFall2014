.class Lcom/facebook/orca/threadlist/ThreadListActivity$3;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ThreadListActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$3;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$3;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(Lcom/facebook/orca/threadlist/ThreadListActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 192
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$3;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(Lcom/facebook/orca/threadlist/ThreadListActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 187
    return-void
.end method