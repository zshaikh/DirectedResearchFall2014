.class public Lcom/facebook/orca/member/LeaveThreadActivity;
.super Lcom/facebook/orca/activity/ConfirmActionActivity;
.source "LeaveThreadActivity.java"


# instance fields
.field private k:Lcom/facebook/orca/cache/DataCache;

.field private m:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private n:Lcom/facebook/orca/threads/ThreadSummary;

.field private o:Lcom/facebook/orca/users/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/member/LeaveThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/orca/member/LeaveThreadActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/member/LeaveThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/orca/member/LeaveThreadActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/LeaveThreadActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/member/LeaveThreadActivity;->finish()V

    .line 101
    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 111
    return-void
.end method

.method private f()Lcom/facebook/orca/activity/ConfirmActionParams;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/orca/activity/ConfirmActionParams;

    invoke-direct {v0}, Lcom/facebook/orca/activity/ConfirmActionParams;-><init>()V

    .line 37
    const v1, 0x7f0a0060

    invoke-virtual {p0, v1}, Lcom/facebook/orca/member/LeaveThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Ljava/lang/String;)V

    .line 38
    const v1, 0x7f0a0061

    invoke-virtual {p0, v1}, Lcom/facebook/orca/member/LeaveThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Ljava/lang/String;)V

    .line 39
    const v1, 0x7f0a0062

    invoke-virtual {p0, v1}, Lcom/facebook/orca/member/LeaveThreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/RemoveMemberParams;

    iget-object v1, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->n:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->o:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/RemoveMemberParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v2, "removeMemberParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "remove_member"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/ConfirmActionActivity;->a(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/facebook/orca/member/LeaveThreadActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 48
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->k:Lcom/facebook/orca/cache/DataCache;

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/member/LeaveThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    const-string v1, "threadid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->k:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->n:Lcom/facebook/orca/threads/ThreadSummary;

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->k:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->c()Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->o:Lcom/facebook/orca/users/User;

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->n:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->o:Lcom/facebook/orca/users/User;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/member/LeaveThreadActivity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/member/LeaveThreadActivity;->f()Lcom/facebook/orca/activity/ConfirmActionParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/LeaveThreadActivity;->a(Lcom/facebook/orca/activity/ConfirmActionParams;)V

    .line 63
    const-string v0, "leaveThreadOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/LeaveThreadActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/member/LeaveThreadActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/member/LeaveThreadActivity$1;-><init>(Lcom/facebook/orca/member/LeaveThreadActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/member/LeaveThreadActivity;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a0063

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/member/LeaveThreadActivity;->g()V

    .line 82
    return-void
.end method
