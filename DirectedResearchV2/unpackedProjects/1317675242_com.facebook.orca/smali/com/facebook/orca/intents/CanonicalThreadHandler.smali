.class public Lcom/facebook/orca/intents/CanonicalThreadHandler;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "CanonicalThreadHandler.java"


# instance fields
.field private k:Lcom/facebook/orca/cache/DataCache;

.field private m:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private n:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/intents/CanonicalThreadHandler;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/intents/CanonicalThreadHandler;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 112
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v2, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    .line 131
    return-void

    .line 118
    :cond_0
    if-eqz v1, :cond_1

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->i()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v2

    .line 121
    new-instance v3, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v3, v1, v2}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 122
    const-string v1, "to"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    const-string v1, "focus_compose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 141
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 53
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->k:Lcom/facebook/orca/cache/DataCache;

    .line 54
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 55
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->n:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    .line 57
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->o:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "fetchCanonicalThread"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;-><init>(Lcom/facebook/orca/intents/CanonicalThreadHandler;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->n:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const v1, 0x7f0a0022

    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->n:Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Z)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->k:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string v2, "thread_id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->finish()V

    goto :goto_0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->setContentView(I)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler;->m:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 105
    :cond_0
    return-void
.end method
