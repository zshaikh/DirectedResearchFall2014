.class Lcom/facebook/orca/auth/UpgradeScreenActivity$4;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "UpgradeScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/UpgradeScreenActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity$4;->a:Lcom/facebook/orca/auth/UpgradeScreenActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity$4;->a:Lcom/facebook/orca/auth/UpgradeScreenActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->a(Lcom/facebook/orca/auth/UpgradeScreenActivity;Ljava/lang/Exception;)V

    .line 91
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity$4;->a:Lcom/facebook/orca/auth/UpgradeScreenActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->d(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V

    .line 86
    return-void
.end method
