.class public Lam/sunrise/android/calendar/ui/event/details/a;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "DeleteEventDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Landroid/app/AlertDialog;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    .line 68
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/a;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 150
    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/details/f;

    if-nez v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 154
    :cond_0
    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/f;

    .line 156
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->a:Z

    if-nez v1, :cond_1

    .line 157
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->b:Z

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/f;->a(Z)V

    goto :goto_0

    .line 161
    :cond_1
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->c:I

    if-nez v1, :cond_2

    .line 162
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->b:Z

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/f;->b(Z)V

    goto :goto_0

    .line 164
    :cond_2
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->b:Z

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/f;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/a;->a()V

    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;ZZ)V
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v1

    .line 46
    const-string v2, "DeleteEventDialog"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v1, v0}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 50
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;)Landroid/support/v4/app/aa;

    .line 51
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/a;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/details/a;-><init>()V

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v3, "am.sunrise.android.calendar.extra.IS_RECURRING_EVENT"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    const-string v3, "am.sunrise.android.calendar.extra.SEND_NOTIFICATION_EMAIL"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/support/v4/app/e;->setArguments(Landroid/os/Bundle;)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/app/e;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 57
    const-string v2, "DeleteEventDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/e;->show(Landroid/support/v4/app/aa;Ljava/lang/String;)I

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    iput p2, p0, Lam/sunrise/android/calendar/ui/event/details/a;->c:I

    .line 146
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const v5, 0x7f0f0043

    const v4, 0x7f0f0040

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, "saved_is_recurring_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->a:Z

    .line 74
    const-string v0, "saved_send_notification_email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->b:Z

    .line 75
    const-string v0, "saved_deletion_choice"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->c:I

    .line 82
    :goto_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->a:Z

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/c;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/c;-><init>(Lam/sunrise/android/calendar/ui/event/details/a;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/b;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/b;-><init>(Lam/sunrise/android/calendar/ui/event/details/a;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 120
    :goto_1
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.IS_RECURRING_EVENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->a:Z

    .line 78
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.SEND_NOTIFICATION_EMAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->b:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->c:I

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0f00a1

    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/event/details/a;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0f009f

    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/event/details/a;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/a;->c:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/e;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/e;-><init>(Lam/sunrise/android/calendar/ui/event/details/a;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/d;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/d;-><init>(Lam/sunrise/android/calendar/ui/event/details/a;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->d:Landroid/app/AlertDialog;

    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->d:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 134
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->e:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->e:Landroid/widget/Button;

    .line 138
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->e:Landroid/widget/Button;

    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/a;->c:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    :cond_1
    return-void

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "saved_is_recurring_event"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string v0, "saved_send_notification_email"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v0, "saved_deletion_choice"

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/a;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    return-void
.end method
