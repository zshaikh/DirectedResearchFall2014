.class Lam/sunrise/android/calendar/ui/settings/bh;
.super Lam/sunrise/android/calendar/ui/settings/b/d;
.source "SettingsPreferencesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/settings/b/d;-><init>()V

    .line 202
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/bh;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/bh;-><init>()V

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/b/d;)V

    .line 198
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bh;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/ui/settings/bh;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    const-string v0, "weather"

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bh;->a(Ljava/lang/String;)V

    .line 213
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/settings/b/d;->a(Landroid/os/Bundle;)V

    .line 215
    const v0, 0x7f0f0156

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bh;->b(I)V

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/bh;->a(Z)V

    .line 217
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/bh;->c()V

    .line 218
    return-void
.end method
