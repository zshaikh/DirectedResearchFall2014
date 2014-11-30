.class Lam/sunrise/android/calendar/ui/settings/ai;
.super Lam/sunrise/android/calendar/ui/settings/b/d;
.source "SettingsAlertsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;-><init>()V

    .line 189
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ai;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/ai;-><init>()V

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/b/d;)V

    .line 185
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ai;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/settings/ai;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 198
    const-string v0, "allday_reminder_value"

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ai;->a(Ljava/lang/String;)V

    .line 200
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/os/Bundle;)V

    .line 202
    const v0, 0x7f0f0147

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ai;->b(I)V

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ai;->a(Z)V

    .line 204
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ai;->c()V

    .line 205
    return-void
.end method
