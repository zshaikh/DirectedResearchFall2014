.class Lcom/facebook/orca/auth/LoginScreenActivity$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "LoginScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/LoginScreenActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/LoginScreenActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/auth/LoginScreenActivity$1;->a:Lcom/facebook/orca/auth/LoginScreenActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity$1;->a:Lcom/facebook/orca/auth/LoginScreenActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/auth/LoginScreenActivity;->a(Lcom/facebook/orca/auth/LoginScreenActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 74
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity$1;->a:Lcom/facebook/orca/auth/LoginScreenActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->a(Lcom/facebook/orca/auth/LoginScreenActivity;)V

    .line 69
    return-void
.end method
