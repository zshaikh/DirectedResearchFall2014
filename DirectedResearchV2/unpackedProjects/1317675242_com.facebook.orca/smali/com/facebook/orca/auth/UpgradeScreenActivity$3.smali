.class Lcom/facebook/orca/auth/UpgradeScreenActivity$3;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "UpgradeScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/UpgradeScreenActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity$3;->a:Lcom/facebook/orca/auth/UpgradeScreenActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenActivity$3;->a:Lcom/facebook/orca/auth/UpgradeScreenActivity;

    invoke-static {v0}, Lcom/facebook/orca/auth/UpgradeScreenActivity;->c(Lcom/facebook/orca/auth/UpgradeScreenActivity;)V

    .line 75
    return-void
.end method
