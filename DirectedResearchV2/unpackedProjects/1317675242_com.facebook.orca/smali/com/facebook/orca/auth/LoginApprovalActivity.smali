.class public Lcom/facebook/orca/auth/LoginApprovalActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "LoginApprovalActivity.java"


# annotations
.annotation runtime Lcom/facebook/orca/annotations/AuthNotRequired;
.end annotation


# instance fields
.field private k:Lcom/facebook/orca/auth/AuthenticationManager;

.field private m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

.field private n:Landroid/view/inputmethod/InputMethodManager;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/Button;

.field private q:Ljava/lang/String;

.field private r:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/LoginApprovalActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/LoginApprovalActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/LoginApprovalActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/auth/PasswordCredentials;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v1, "passwordCredentials"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    iget-object v1, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/auth/LoginApprovalActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->c()V

    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 113
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->n:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 91
    new-instance v1, Lcom/facebook/orca/auth/PasswordCredentials;

    iget-object v2, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->q:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/auth/PasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/facebook/orca/auth/LoginApprovalActivity;->a(Lcom/facebook/orca/auth/PasswordCredentials;)V

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->finish()V

    .line 107
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 50
    const-class v0, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthenticationManager;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->k:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 51
    const-class v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    .line 52
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->n:Landroid/view/inputmethod/InputMethodManager;

    .line 53
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->o:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->p:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a()V

    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v1}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a()V

    .line 60
    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->q:Ljava/lang/String;

    .line 62
    const-string v0, "authenticateOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/LoginApprovalActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/LoginApprovalActivity$1;-><init>(Lcom/facebook/orca/auth/LoginApprovalActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a0016

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginApprovalActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/LoginApprovalActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/LoginApprovalActivity$2;-><init>(Lcom/facebook/orca/auth/LoginApprovalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginApprovalActivity;->setContentView(I)V

    .line 46
    return-void
.end method
