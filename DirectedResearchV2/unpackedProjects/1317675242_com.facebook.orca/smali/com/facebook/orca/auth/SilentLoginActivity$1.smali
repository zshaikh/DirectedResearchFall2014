.class Lcom/facebook/orca/auth/SilentLoginActivity$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "SilentLoginActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/SilentLoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/SilentLoginActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/auth/SilentLoginActivity$1;->a:Lcom/facebook/orca/auth/SilentLoginActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity$1;->a:Lcom/facebook/orca/auth/SilentLoginActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->b(Lcom/facebook/orca/auth/SilentLoginActivity;)V

    .line 78
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/auth/SilentLoginActivity$1;->a:Lcom/facebook/orca/auth/SilentLoginActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/SilentLoginActivity;->a(Lcom/facebook/orca/auth/SilentLoginActivity;)V

    .line 73
    return-void
.end method
