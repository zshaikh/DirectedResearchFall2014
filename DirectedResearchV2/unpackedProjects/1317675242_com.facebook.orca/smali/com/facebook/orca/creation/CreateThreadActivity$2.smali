.class Lcom/facebook/orca/creation/CreateThreadActivity$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "CreateThreadActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/creation/CreateThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/creation/CreateThreadActivity$2;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity$2;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 99
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity$2;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 94
    return-void
.end method
