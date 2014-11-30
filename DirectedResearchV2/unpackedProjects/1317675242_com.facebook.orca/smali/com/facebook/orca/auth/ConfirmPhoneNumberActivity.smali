.class public Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "ConfirmPhoneNumberActivity.java"


# instance fields
.field private k:Ljava/lang/String;

.field private m:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private r:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    .line 33
    const-string v0, "orca:ConfirmPhoneNumberActivity"

    iput-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->c(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 140
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Lcom/facebook/orca/server/ConfirmPhoneParams;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/server/ConfirmPhoneParams;-><init>(Ljava/lang/String;Z)V

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    const-string v2, "confirmPhoneParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    iget-object v1, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "confirm_phone"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->e()V

    return-void
.end method

.method private c(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 172
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 175
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->finish()V

    .line 134
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->m:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->finish()V

    .line 162
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 158
    new-instance v3, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;

    invoke-direct {v3, v0, v1}, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "requestSmsConfirmationCodeParams"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v1, "request_sms_confirmation_code"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 168
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 169
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    .line 54
    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 55
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->n:Landroid/widget/EditText;

    .line 56
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->o:Landroid/widget/Button;

    .line 57
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->p:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$1;-><init>(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-string v0, "requestSmsCodeOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$2;-><init>(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->q:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a00ef

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 81
    const-string v0, "confirmOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$3;-><init>(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->r:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a00f5

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 96
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;-><init>()V

    .line 97
    new-instance v1, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$4;-><init>(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan;->a(Lcom/facebook/orca/common/ui/widgets/text/CustomUrlLikeSpan$OnUrlClickHandler;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity$5;-><init>(Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/ConfirmPhoneNumberActivity;->setContentView(I)V

    .line 47
    return-void
.end method
