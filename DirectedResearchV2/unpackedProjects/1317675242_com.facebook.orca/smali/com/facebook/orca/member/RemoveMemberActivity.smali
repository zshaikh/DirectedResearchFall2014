.class public Lcom/facebook/orca/member/RemoveMemberActivity;
.super Lcom/facebook/orca/activity/ConfirmActionActivity;
.source "RemoveMemberActivity.java"


# instance fields
.field private k:Lcom/facebook/orca/cache/DataCache;

.field private m:Lcom/facebook/orca/threads/ThreadSummary;

.field private n:Lcom/facebook/orca/users/User;

.field private o:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/member/RemoveMemberActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/member/RemoveMemberActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/member/RemoveMemberActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/member/RemoveMemberActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/orca/member/RemoveMemberActivity;->finish()V

    .line 105
    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 111
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 115
    return-void
.end method

.method private f()Lcom/facebook/orca/activity/ConfirmActionParams;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/orca/activity/ConfirmActionParams;

    invoke-direct {v0}, Lcom/facebook/orca/activity/ConfirmActionParams;-><init>()V

    .line 40
    const v1, 0x7f0a0064

    invoke-virtual {p0, v1}, Lcom/facebook/orca/member/RemoveMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a(Ljava/lang/String;)V

    .line 41
    const v1, 0x7f0a0065

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->n:Lcom/facebook/orca/users/User;

    invoke-virtual {v4}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/member/RemoveMemberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b(Ljava/lang/String;)V

    .line 43
    const v1, 0x7f0a0066

    invoke-virtual {p0, v1}, Lcom/facebook/orca/member/RemoveMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c(Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/RemoveMemberParams;

    iget-object v1, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->n:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/server/RemoveMemberParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v2, "removeMemberParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "remove_member"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/ConfirmActionActivity;->a(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/member/RemoveMemberActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 52
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->k:Lcom/facebook/orca/cache/DataCache;

    .line 55
    invoke-virtual {p0}, Lcom/facebook/orca/member/RemoveMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    const-string v1, "threadid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "userid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->k:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->m:Lcom/facebook/orca/threads/ThreadSummary;

    .line 60
    iget-object v1, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->k:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->n:Lcom/facebook/orca/users/User;

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->m:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->n:Lcom/facebook/orca/users/User;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/member/RemoveMemberActivity;->finish()V

    .line 82
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/member/RemoveMemberActivity;->f()Lcom/facebook/orca/activity/ConfirmActionParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/RemoveMemberActivity;->a(Lcom/facebook/orca/activity/ConfirmActionParams;)V

    .line 68
    const-string v0, "removeMemberOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/member/RemoveMemberActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/member/RemoveMemberActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/member/RemoveMemberActivity$1;-><init>(Lcom/facebook/orca/member/RemoveMemberActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/member/RemoveMemberActivity;->o:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a0067

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/facebook/orca/member/RemoveMemberActivity;->g()V

    .line 87
    return-void
.end method
