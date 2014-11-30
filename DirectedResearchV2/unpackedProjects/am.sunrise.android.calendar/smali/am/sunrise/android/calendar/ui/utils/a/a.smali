.class public Lam/sunrise/android/calendar/ui/utils/a/a;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ForegroundTrackerActivity.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    const-string v0, "state_resumed_from_activity_start"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->a:Z

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.TRACKER_JUST_STARTED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->b:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 40
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->b:Z

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 87
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->b:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;->a()V

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->a:Z

    .line 91
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "state_resumed_from_activity_start"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->a:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "am.sunrise.android.calendar.extra.TRACKER_JUST_STARTED"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->a:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "am.sunrise.android.calendar.extra.TRACKER_JUST_STARTED"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    if-eqz p2, :cond_0

    .line 75
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/utils/a/a;->a:Z

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "am.sunrise.android.calendar.extra.TRACKER_JUST_STARTED"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 82
    return-void
.end method
