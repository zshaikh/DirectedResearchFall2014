.class public Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "SubSettingsActivity.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method g()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->a:Z

    .line 167
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->supportInvalidateOptionsMenu()V

    .line 169
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    instance-of v1, v0, Lam/sunrise/android/calendar/authenticator/ui/j;

    if-eqz v1, :cond_1

    .line 151
    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/j;

    invoke-virtual {v0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/j;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    instance-of v1, v0, Lam/sunrise/android/calendar/ui/settings/a;

    if-eqz v1, :cond_2

    .line 156
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a;

    invoke-interface {v0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/settings/a;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/a;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->a:Z

    if-nez v0, :cond_0

    .line 129
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onBackPressed()V

    .line 131
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0b005f

    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    const-string v0, "SubSettings"

    const-string v1, "not intent found"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->finish()V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    const-string v0, "SubSettings"

    const-string v1, "invalid intent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->finish()V

    goto :goto_0

    .line 68
    :cond_3
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 71
    if-nez v2, :cond_e

    .line 72
    const-string v2, "am.sunrise.android.calendar.ui.settings.action.VISIBLE_CALENDARS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/bj;-><init>()V

    .line 100
    :goto_1
    if-nez v0, :cond_d

    .line 101
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->finish()V

    goto :goto_0

    .line 74
    :cond_4
    const-string v2, "am.sunrise.android.calendar.ui.settings.action.ADD_ACCOUNT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/w;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/w;-><init>()V

    goto :goto_1

    .line 76
    :cond_5
    const-string v2, "am.sunrise.android.calendar.ui.settings.action.ACCOUNT_INFO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string v2, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 79
    const-string v2, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_ID"

    const-string v3, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_ID"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    :goto_2
    const-string v2, "am.sunrise.android.calendar.ui.settings.extra.CONNECTION_INFO"

    const-string v3, "am.sunrise.android.calendar.ui.settings.extra.CONNECTION_INFO"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/i;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/i;-><init>()V

    .line 85
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 81
    :cond_6
    const-string v2, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_STRING"

    const-string v3, "am.sunrise.android.calendar.ui.settings.extra.PRETTY_ACCOUNT_TYPE_STRING"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 86
    :cond_7
    const-string v0, "am.sunrise.android.calendar.ui.settings.action.NOTIFICATIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bb;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/bb;-><init>()V

    goto :goto_1

    .line 88
    :cond_8
    const-string v0, "am.sunrise.android.calendar.ui.settings.action.DEFAULT_CALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/an;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/an;-><init>()V

    goto :goto_1

    .line 90
    :cond_9
    const-string v0, "am.sunrise.android.calendar.ui.settings.action.ABOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/d;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/d;-><init>()V

    goto :goto_1

    .line 92
    :cond_a
    const-string v0, "am.sunrise.android.calendar.ui.settings.action.LINK_GOOGLE_PLUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/as;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/as;-><init>()V

    goto/16 :goto_1

    .line 94
    :cond_b
    const-string v0, "am.sunrise.android.calendar.ui.settings.action.LINK_ICLOUD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 95
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/at;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/at;-><init>()V

    goto/16 :goto_1

    .line 97
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 105
    :cond_d
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 107
    invoke-virtual {v1, v5, v0}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 108
    invoke-virtual {v1}, Landroid/support/v4/app/aa;->b()I

    .line 111
    :cond_e
    if-eqz p1, :cond_f

    .line 112
    const-string v0, "saved_disable_back"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->a:Z

    .line 115
    :cond_f
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->a:Z

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 135
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 137
    :pswitch_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->a:Z

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->finish()V

    .line 140
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "saved_disable_back"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/settings/SubSettingsActivity;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    return-void
.end method
