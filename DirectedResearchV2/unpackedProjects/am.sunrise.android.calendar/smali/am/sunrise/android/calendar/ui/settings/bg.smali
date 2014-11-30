.class Lam/sunrise/android/calendar/ui/settings/bg;
.super Lam/sunrise/android/calendar/ui/settings/b/d;
.source "SettingsPreferencesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;-><init>()V

    .line 176
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bg;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/bg;-><init>()V

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/b/d;)V

    .line 172
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/settings/bg;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    const-string v0, "refresh_rate"

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bg;->a(Ljava/lang/String;)V

    .line 187
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/os/Bundle;)V

    .line 189
    const v0, 0x7f0f014d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bg;->b(I)V

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bg;->a(Z)V

    .line 191
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bg;->c()V

    .line 192
    return-void
.end method
