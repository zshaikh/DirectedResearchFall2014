.class Lcom/facebook/orca/auth/LoginApprovalActivity$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "LoginApprovalActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/LoginApprovalActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/LoginApprovalActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/orca/auth/LoginApprovalActivity$1;->a:Lcom/facebook/orca/auth/LoginApprovalActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity$1;->a:Lcom/facebook/orca/auth/LoginApprovalActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/auth/LoginApprovalActivity;->a(Lcom/facebook/orca/auth/LoginApprovalActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 72
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity$1;->a:Lcom/facebook/orca/auth/LoginApprovalActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->a(Lcom/facebook/orca/auth/LoginApprovalActivity;)V

    .line 67
    return-void
.end method
