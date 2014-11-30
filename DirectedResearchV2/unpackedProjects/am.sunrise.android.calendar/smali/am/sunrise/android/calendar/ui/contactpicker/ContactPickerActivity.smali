.class public Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "ContactPickerActivity.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/contactpicker/f;


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
    const v5, 0x7f0b0064

    .line 25
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 31
    :cond_0
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    if-nez p1, :cond_3

    .line 36
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 39
    new-instance v1, Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    const-string v2, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "am.sunrise.android.calendar.extra.PEOPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    const-string v2, "am.sunrise.android.calendar.extra.PEOPLE"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.PEOPLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 49
    :cond_2
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->setArguments(Landroid/os/Bundle;)V

    .line 51
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/f;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 61
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 63
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;->finish()V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
