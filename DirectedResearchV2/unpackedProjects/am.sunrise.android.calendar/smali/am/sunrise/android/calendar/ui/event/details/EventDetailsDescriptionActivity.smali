.class public Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "EventDetailsDescriptionActivity.java"


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
    .line 26
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.EVENT_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 39
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->a()Landroid/support/v4/app/aa;

    .line 44
    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/u;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/details/u;-><init>()V

    .line 45
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v3, "am.sunrise.android.calendar.extras.EVENT_DESCRIPTION"

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "am.sunrise.android.calendar.extras.EVENT_DESCRIPTION"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/event/details/u;->setArguments(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f0b0064

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/aa;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;->finish()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
