.class Lam/sunrise/android/calendar/ui/settings/al;
.super Ljava/lang/Object;
.source "SettingsConnectAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/al;->b:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/al;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/al;->b:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->a(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_TYPE"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/al;->b:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->b(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "am.sunrise.android.calendar.extra.CONNECT_ERROR"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/al;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/al;->b:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/al;->b:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->finish()V

    .line 140
    return-void
.end method
