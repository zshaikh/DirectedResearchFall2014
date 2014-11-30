.class public Lcom/facebook/orca/creation/CreateThreadActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "CreateThreadActivity.java"


# instance fields
.field k:Z

.field private m:Landroid/support/v4/app/FragmentManager;

.field private n:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

.field private o:Lcom/facebook/orca/compose/LocationNuxView;

.field private p:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

.field private q:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private r:Lcom/facebook/orca/contacts/picker/ContactPickerView;

.field private s:Lcom/facebook/orca/compose/ComposeView;

.field private t:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 180
    const-string v0, "orca:CreateThreadActivity"

    const-string v1, "onContactPickerFocusChanged"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 183
    :goto_0
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->o()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->c()V

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeView;->o()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 188
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->e()V

    goto :goto_1

    .line 191
    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 253
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 254
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeView;->b(Ljava/lang/String;)V

    .line 258
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/creation/CreateThreadActivity;->overridePendingTransition(II)V

    .line 262
    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2

    .prologue
    .line 265
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 269
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->k:Z

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/compose/LocationNuxView;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/LocationNuxView;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->k:Z

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->requestLayout()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->k:Z

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/compose/LocationNuxView;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/LocationNuxView;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->k:Z

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->requestLayout()V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeView;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeView;->g()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Lcom/facebook/orca/threads/Message;

    .line 242
    new-instance v1, Lcom/facebook/orca/server/CreateThreadParams;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Lcom/facebook/orca/threads/Message;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/orca/server/CreateThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Ljava/util/List;)V

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string v2, "createThreadParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    iget-object v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "create_thread"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 70
    const-class v1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->m:Landroid/support/v4/app/FragmentManager;

    .line 71
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->n:Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    .line 72
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationNuxView;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->o:Lcom/facebook/orca/compose/LocationNuxView;

    .line 73
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->p:Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;

    .line 76
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 77
    if-nez p1, :cond_2

    .line 78
    const-string v0, "to"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserWithIdentifier;

    move-object v2, v0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/facebook/orca/creation/CreateThreadActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$1;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 89
    const-string v0, "createThreadUiOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v3, Lcom/facebook/orca/creation/CreateThreadActivity$2;

    invoke-direct {v3, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$2;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v3}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v3, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v4, 0x7f0a0082

    invoke-direct {v3, p0, v4}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->m:Landroid/support/v4/app/FragmentManager;

    const v3, 0x7f08005a

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->m:Landroid/support/v4/app/FragmentManager;

    const v3, 0x7f08005b

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/ComposeView;

    iput-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    new-instance v3, Lcom/facebook/orca/creation/CreateThreadActivity$3;

    invoke-direct {v3, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$3;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v3}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView$OnSendClickedListener;)V

    .line 116
    if-eqz v2, :cond_0

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->r:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    new-instance v3, Lcom/facebook/orca/contacts/data/PickedUser;

    invoke-direct {v3, v2, v5}, Lcom/facebook/orca/contacts/data/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-virtual {v0, v3}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/data/PickedUser;)V

    .line 121
    :cond_0
    const-string v0, "for_sharing"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/compose/ComposeView;->b(Landroid/content/Intent;)V

    .line 123
    const-string v0, "for_sharing"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 125
    :cond_1
    return-void

    :cond_2
    move-object v2, v5

    goto :goto_0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->setContentView(I)V

    .line 63
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 177
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 159
    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 160
    const v1, 0x7f0a0095

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$4;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$4;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    const v1, 0x7f0a0096

    new-instance v2, Lcom/facebook/orca/creation/CreateThreadActivity$5;

    invoke-direct {v2, p0}, Lcom/facebook/orca/creation/CreateThreadActivity$5;-><init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 147
    const-string v0, "composeExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->e()V

    .line 150
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    const-string v1, "focus_compose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "focus_compose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/facebook/orca/creation/CreateThreadActivity;->e()V

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->s:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 136
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "composeExpanded"

    iget-boolean v1, p0, Lcom/facebook/orca/creation/CreateThreadActivity;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    return-void
.end method
