.class Lcom/facebook/orca/member/DeleteThreadActivity$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "DeleteThreadActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/member/DeleteThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/member/DeleteThreadActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/orca/member/DeleteThreadActivity$1;->a:Lcom/facebook/orca/member/DeleteThreadActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity$1;->a:Lcom/facebook/orca/member/DeleteThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/member/DeleteThreadActivity;->a(Lcom/facebook/orca/member/DeleteThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 71
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity$1;->a:Lcom/facebook/orca/member/DeleteThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/member/DeleteThreadActivity;->a(Lcom/facebook/orca/member/DeleteThreadActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 66
    return-void
.end method
