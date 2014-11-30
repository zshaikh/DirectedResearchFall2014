.class public Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "LocationPickerActivity.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/locationpicker/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->setResult(I)V

    .line 54
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onBackPressed()V

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0b0064

    .line 25
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 31
    :cond_0
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->setContentView(I)V

    .line 33
    if-nez p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 36
    new-instance v1, Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/locationpicker/b;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v2, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/locationpicker/b;->setArguments(Landroid/os/Bundle;)V

    .line 41
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    .line 48
    :goto_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/b;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 59
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 61
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;->finish()V

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
