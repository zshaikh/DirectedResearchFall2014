.class Lcom/facebook/orca/images/ThreadIconPickerActivity$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ThreadIconPickerActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/ThreadIconPickerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/ThreadIconPickerActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity$2;->a:Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity$2;->a:Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 94
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity$2;->a:Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->finish()V

    .line 87
    return-void
.end method
