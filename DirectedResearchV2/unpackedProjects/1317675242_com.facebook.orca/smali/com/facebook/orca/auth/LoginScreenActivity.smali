.class public Lcom/facebook/orca/auth/LoginScreenActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "LoginScreenActivity.java"


# annotations
.annotation runtime Lcom/facebook/orca/annotations/AuthNotRequired;
.end annotation


# instance fields
.field private k:Lcom/facebook/orca/auth/AuthenticationManager;

.field private m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

.field private n:Landroid/view/inputmethod/InputMethodManager;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/LoginScreenActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/auth/LoginScreenActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/LoginScreenActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/LoginScreenActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/auth/PasswordCredentials;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v1, "passwordCredentials"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    iget-object v1, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/auth/LoginScreenActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/auth/LoginScreenActivity;->c()V

    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->a()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    if-ne v0, v1, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ApiErrorResult;

    .line 142
    invoke-virtual {v0}, Lcom/facebook/orca/server/ApiErrorResult;->a()I

    move-result v0

    .line 143
    const/16 v1, 0x196

    if-ne v0, v1, :cond_0

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/auth/LoginApprovalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v1, "email"

    iget-object v2, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    :goto_0
    return-void

    .line 149
    :cond_0
    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 151
    :cond_1
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->n:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 119
    new-instance v2, Lcom/facebook/orca/auth/PasswordCredentials;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/auth/PasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/facebook/orca/auth/LoginScreenActivity;->a(Lcom/facebook/orca/auth/PasswordCredentials;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/auth/LoginScreenActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/auth/LoginScreenActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->setResult(I)V

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->d()Landroid/content/Intent;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginScreenActivity;->finish()V

    .line 137
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://m.facebook.com/r.php"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginScreenActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 54
    const-class v0, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthenticationManager;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->k:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 55
    const-class v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    .line 56
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->n:Landroid/view/inputmethod/InputMethodManager;

    .line 57
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->o:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->p:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->q:Landroid/widget/Button;

    .line 60
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->r:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a()V

    .line 64
    const-string v0, "authenticateOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/LoginScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/LoginScreenActivity$1;-><init>(Lcom/facebook/orca/auth/LoginScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->s:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a0016

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/LoginScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/LoginScreenActivity$2;-><init>(Lcom/facebook/orca/auth/LoginScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->r:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/LoginScreenActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/LoginScreenActivity$3;-><init>(Lcom/facebook/orca/auth/LoginScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->setContentView(I)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    const-string v1, "no_silent_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->k:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/auth/LoginScreenActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->d()Landroid/content/Intent;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/LoginScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/facebook/orca/auth/LoginScreenActivity;->finish()V

    .line 107
    :cond_1
    return-void
.end method
