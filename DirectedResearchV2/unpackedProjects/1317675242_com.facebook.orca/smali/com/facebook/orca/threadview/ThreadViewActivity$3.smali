.class Lcom/facebook/orca/threadview/ThreadViewActivity$3;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ThreadViewActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$3;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$3;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 223
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$3;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->b(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 218
    return-void
.end method
