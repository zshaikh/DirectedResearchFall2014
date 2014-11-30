.class Lcom/facebook/orca/member/LeaveThreadActivity$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "LeaveThreadActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/member/LeaveThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/member/LeaveThreadActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/member/LeaveThreadActivity$1;->a:Lcom/facebook/orca/member/LeaveThreadActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity$1;->a:Lcom/facebook/orca/member/LeaveThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/member/LeaveThreadActivity;->a(Lcom/facebook/orca/member/LeaveThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 73
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity$1;->a:Lcom/facebook/orca/member/LeaveThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/member/LeaveThreadActivity;->a(Lcom/facebook/orca/member/LeaveThreadActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 68
    return-void
.end method
