.class public Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "BirthdaysActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 23
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 29
    :cond_0
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;->setContentView(I)V

    .line 31
    if-nez p1, :cond_1

    .line 32
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 34
    new-instance v1, Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/birthdays/i;-><init>()V

    .line 35
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v3, "am.sunrise.android.calendar.extra.BIRTHDAYS_DATE"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "am.sunrise.android.calendar.extra.BIRTHDAYS_DATE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/birthdays/i;->setArguments(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f0b0064

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 40
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    .line 43
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;->finish()V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
