.class public Lcom/facebook/orca/auth/StartScreenActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "StartScreenActivity.java"


# annotations
.annotation runtime Lcom/facebook/orca/annotations/AuthNotRequired;
.end annotation


# instance fields
.field private k:Ljava/lang/String;

.field private m:Lcom/facebook/orca/auth/AuthenticationManager;

.field private n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private r:Lcom/facebook/orca/auth/KatanaSessionInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    .line 41
    const-string v0, "orca:StartScreenActivity"

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/StartScreenActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/StartScreenActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/StartScreenActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/auth/StartScreenActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->f()V

    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 181
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 184
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/auth/LoginScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/auth/StartScreenActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->c()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/auth/KatanaSessionInfo;

    invoke-virtual {v2}, Lcom/facebook/orca/auth/KatanaSessionInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/facebook/orca/auth/StartScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "auth_sso"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->setResult(I)V

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->d()Landroid/content/Intent;

    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->finish()V

    .line 178
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 70
    const-class v0, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthenticationManager;

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->m:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 71
    const-class v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    .line 72
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->o:Landroid/widget/Button;

    .line 73
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->p:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->p:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->a()V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/StartScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/StartScreenActivity$1;-><init>(Lcom/facebook/orca/auth/StartScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-string v0, "authenticateOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/StartScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/StartScreenActivity$2;-><init>(Lcom/facebook/orca/auth/StartScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a0016

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 100
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->setContentView(I)V

    .line 63
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onAttachedToWindow()V

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onDestroy()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x21

    .line 109
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 111
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    const-string v1, "no_silent_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->m:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->d()Landroid/content/Intent;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->finish()V

    .line 156
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->c()Landroid/content/Intent;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->finish()V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->h()Lcom/facebook/orca/auth/KatanaSessionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/auth/KatanaSessionInfo;

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/auth/KatanaSessionInfo;

    if-nez v0, :cond_3

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/auth/LoginScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->finish()V

    goto :goto_0

    .line 136
    :cond_3
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;-><init>()V

    .line 137
    new-instance v1, Lcom/facebook/orca/auth/StartScreenActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/StartScreenActivity$3;-><init>(Lcom/facebook/orca/auth/StartScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;->a(Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;)V

    .line 144
    iget-object v1, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/auth/KatanaSessionInfo;

    invoke-virtual {v1}, Lcom/facebook/orca/auth/KatanaSessionInfo;->a()Ljava/lang/String;

    move-result-object v1

    .line 145
    const/16 v2, 0x20

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 148
    const v3, 0x7f0a0010

    invoke-virtual {p0, v3}, Lcom/facebook/orca/auth/StartScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 149
    const-string v3, "[[name]]"

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v3, v1, v4, v6}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 152
    const-string v1, "[[not_you_link]]"

    const v3, 0x7f0a0011

    invoke-virtual {p0, v3}, Lcom/facebook/orca/auth/StartScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0, v6}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
