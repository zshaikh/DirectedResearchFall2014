.class public Lcom/facebook/orca/member/DeleteThreadActivity;
.super Lcom/facebook/orca/activity/ConfirmActionActivity;
.source "DeleteThreadActivity.java"


# instance fields
.field private k:Lcom/facebook/orca/cache/DataCache;

.field private m:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private n:Lcom/facebook/orca/threads/ThreadSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/member/DeleteThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/member/DeleteThreadActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/member/DeleteThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/member/DeleteThreadActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/member/DeleteThreadActivity;->finish()V

    .line 97
    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 103
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 107
    return-void
.end method

.method private f()Lcom/facebook/orca/activity/ConfirmActionParams;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/orca/activity/ConfirmActionParams;

    invoke-direct {v0}, Lcom/facebook/orca/activity/ConfirmActionParams;-><init>()V

    .line 37
    const v1, 0x7f0a005c

    invoke-virtual {p0, v1}, Lcom/facebook/orca/member/DeleteThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Ljava/lang/String;)V

    .line 38
    const v1, 0x7f0a005d

    invoke-virtual {p0, v1}, Lcom/facebook/orca/member/DeleteThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Ljava/lang/String;)V

    .line 39
    const v1, 0x7f0a005e

    invoke-virtual {p0, v1}, Lcom/facebook/orca/member/DeleteThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v1, "deleteThreadParams"

    new-instance v2, Lcom/facebook/orca/server/DeleteThreadParams;

    iget-object v3, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->n:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/orca/server/DeleteThreadParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    iget-object v1, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "delete_thread"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/ConfirmActionActivity;->a(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/facebook/orca/member/DeleteThreadActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 48
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->k:Lcom/facebook/orca/cache/DataCache;

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/member/DeleteThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    const-string v1, "threadid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->k:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->n:Lcom/facebook/orca/threads/ThreadSummary;

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->n:Lcom/facebook/orca/threads/ThreadSummary;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/facebook/orca/member/DeleteThreadActivity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/member/DeleteThreadActivity;->f()Lcom/facebook/orca/activity/ConfirmActionParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/DeleteThreadActivity;->a(Lcom/facebook/orca/activity/ConfirmActionParams;)V

    .line 61
    const-string v0, "deleteThreadOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/DeleteThreadActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/member/DeleteThreadActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/member/DeleteThreadActivity$1;-><init>(Lcom/facebook/orca/member/DeleteThreadActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/member/DeleteThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a005f

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/facebook/orca/member/DeleteThreadActivity;->g()V

    .line 80
    return-void
.end method
