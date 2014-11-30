.class public Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "EventDetailsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 24
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;->setContentView(I)V

    .line 32
    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 35
    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/details/v;-><init>()V

    .line 36
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v3, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    const-string v3, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    :cond_2
    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/event/details/v;->setArguments(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f0b0064

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;->finish()V

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
