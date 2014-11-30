.class Lam/sunrise/android/calendar/ui/settings/ba;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "SettingsLinkiCloudFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 201
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    const-string v1, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/ba;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/settings/ba;-><init>()V

    const/4 v2, 0x0

    const-string v3, "LinkiCloudErrorDialog"

    invoke-static {p0, v1, v2, v0, v3}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 197
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ba;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const v1, 0x7f0f0018

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/ba;->b(I)V

    .line 210
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ba;->c()V

    .line 212
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ba;->d(Ljava/lang/CharSequence;)V

    .line 214
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ba;->e(I)V

    .line 215
    return-void
.end method
