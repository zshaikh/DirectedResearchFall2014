.class Lcom/facebook/orca/auth/StartScreenActivity$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "StartScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/StartScreenActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/StartScreenActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/orca/auth/StartScreenActivity$2;->a:Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity$2;->a:Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/auth/StartScreenActivity;->a(Lcom/facebook/orca/auth/StartScreenActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 95
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity$2;->a:Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/StartScreenActivity;->b(Lcom/facebook/orca/auth/StartScreenActivity;)V

    .line 90
    return-void
.end method
