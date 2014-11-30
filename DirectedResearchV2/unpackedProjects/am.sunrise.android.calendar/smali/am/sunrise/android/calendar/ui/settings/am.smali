.class Lam/sunrise/android/calendar/ui/settings/am;
.super Ljava/lang/Object;
.source "SettingsConnectAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/am;->a:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/am;->a:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->a(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_TYPE"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/am;->a:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->b(Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/am;->a:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/am;->a:Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/SettingsConnectAccountActivity;->finish()V

    .line 151
    return-void
.end method
