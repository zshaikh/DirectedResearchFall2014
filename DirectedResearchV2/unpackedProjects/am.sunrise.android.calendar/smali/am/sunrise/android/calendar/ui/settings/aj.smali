.class Lam/sunrise/android/calendar/ui/settings/aj;
.super Lam/sunrise/android/calendar/ui/settings/b/d;
.source "SettingsAlertsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;-><init>()V

    .line 215
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/aj;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/aj;-><init>()V

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/b/d;)V

    .line 211
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/aj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 221
    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/settings/aj;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    const-string v0, "birthdays_reminder_value"

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/aj;->a(Ljava/lang/String;)V

    .line 226
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/os/Bundle;)V

    .line 228
    const v0, 0x7f0f0148

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/aj;->b(I)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/aj;->a(Z)V

    .line 230
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/aj;->c()V

    .line 231
    return-void
.end method
