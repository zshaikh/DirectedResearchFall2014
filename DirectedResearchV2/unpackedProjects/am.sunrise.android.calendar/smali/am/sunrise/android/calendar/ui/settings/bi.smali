.class Lam/sunrise/android/calendar/ui/settings/bi;
.super Lam/sunrise/android/calendar/ui/settings/b/d;
.source "SettingsPreferencesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;-><init>()V

    .line 228
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bi;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/bi;-><init>()V

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/b/d;)V

    .line 224
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 234
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/settings/bi;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 237
    const-string v0, "week_start"

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bi;->a(Ljava/lang/String;)V

    .line 239
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/os/Bundle;)V

    .line 241
    const v0, 0x7f0f0159

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bi;->b(I)V

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bi;->a(Z)V

    .line 243
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bi;->c()V

    .line 244
    return-void
.end method
