.class public Lcom/facebook/orca/threadview/AddMembersActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "AddMembersActivity.java"


# instance fields
.field private k:Lcom/facebook/orca/cache/DataCache;

.field private m:Landroid/support/v4/app/FragmentManager;

.field private n:Landroid/view/inputmethod/InputMethodManager;

.field private o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

.field private p:Landroid/widget/Button;

.field private q:Lcom/facebook/orca/contacts/picker/ContactPickerView;

.field private r:Lcom/facebook/orca/threads/ThreadSummary;

.field private s:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/AddMembersActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->q:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v1

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->n:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 129
    new-instance v1, Lcom/facebook/orca/server/AddMembersParams;

    iget-object v2, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->r:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/server/AddMembersParams;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string v2, "addMembersParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "add_members"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 60
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->k:Lcom/facebook/orca/cache/DataCache;

    .line 61
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->m:Landroid/support/v4/app/FragmentManager;

    .line 62
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->n:Landroid/view/inputmethod/InputMethodManager;

    .line 63
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 64
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->p:Landroid/widget/Button;

    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    move v0, v4

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->k:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->r:Lcom/facebook/orca/threads/ThreadSummary;

    .line 72
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->r:Lcom/facebook/orca/threads/ThreadSummary;

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->finish()V

    .line 111
    :goto_1
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    new-instance v2, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-direct {v2, p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;-><init>(Landroid/content/Context;)V

    .line 79
    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setTextColor(I)V

    .line 80
    if-eqz v0, :cond_2

    move v0, v4

    :goto_2
    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMaxLines(I)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->r:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->o:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setCustomTitleView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->m:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->q:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/threadview/AddMembersActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/AddMembersActivity$1;-><init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->q:Lcom/facebook/orca/contacts/picker/ContactPickerView;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;->ADD_MEMBERS:Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerView;->a(Lcom/facebook/orca/contacts/picker/ContactPickerView$Mode;)V

    .line 95
    const-string v0, "addMembersOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/AddMembersActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/AddMembersActivity$2;-><init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a003a

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_1

    .line 80
    :cond_2
    const/4 v0, 0x2

    goto :goto_2
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->setContentView(I)V

    .line 53
    return-void
.end method
