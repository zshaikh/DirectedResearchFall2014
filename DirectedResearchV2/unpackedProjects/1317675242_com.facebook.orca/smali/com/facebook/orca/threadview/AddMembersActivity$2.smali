.class Lcom/facebook/orca/threadview/AddMembersActivity$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "AddMembersActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/AddMembersActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/orca/threadview/AddMembersActivity$2;->a:Lcom/facebook/orca/threadview/AddMembersActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity$2;->a:Lcom/facebook/orca/threadview/AddMembersActivity;

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 107
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity$2;->a:Lcom/facebook/orca/threadview/AddMembersActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->finish()V

    .line 100
    return-void
.end method
