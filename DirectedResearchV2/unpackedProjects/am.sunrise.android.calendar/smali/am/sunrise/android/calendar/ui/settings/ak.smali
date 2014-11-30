.class Lam/sunrise/android/calendar/ui/settings/ak;
.super Lam/sunrise/android/calendar/ui/settings/b/d;
.source "SettingsAlertsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;-><init>()V

    .line 163
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ak;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/ak;-><init>()V

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/b/d;)V

    .line 159
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ak;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/settings/ak;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    const-string v0, "default_reminder_value"

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ak;->a(Ljava/lang/String;)V

    .line 174
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/os/Bundle;)V

    .line 176
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ak;->b(I)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ak;->a(Z)V

    .line 178
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ak;->c()V

    .line 179
    return-void
.end method
