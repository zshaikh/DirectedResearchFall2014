.class public Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "EventDetailsAttendeesActivity.java"


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
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 23
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ATTENDEES_COUNT"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const/16 v0, 0x64

    if-lt v1, v0, :cond_2

    const v0, 0x7f0f00ee

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 44
    new-instance v2, Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/event/details/n;-><init>()V

    .line 45
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v4, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v4, "am.sunrise.android.calendar.extra.EVENT_ID"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "am.sunrise.android.calendar.extra.EVENT_ID"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "am.sunrise.android.calendar.extra.EVENT_TITLE"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "am.sunrise.android.calendar.extra.EVENT_TITLE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v4, "am.sunrise.android.calendar.extra.ATTENDEES_COUNT"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v1, "am.sunrise.android.calendar.extra.IS_FACEBOOK_EVENT"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "am.sunrise.android.calendar.extra.IS_FACEBOOK_EVENT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/event/details/n;->setArguments(Landroid/os/Bundle;)V

    .line 56
    const v1, 0x7f0b0064

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    goto/16 :goto_0

    .line 38
    :cond_2
    const v0, 0x7f0f0117

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v0, v3}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 65
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;->finish()V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
