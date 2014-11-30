.class public Lam/sunrise/android/calendar/ui/settings/aa;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "SettingsAddAccountFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 629
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 621
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 622
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v1, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/aa;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/settings/aa;-><init>()V

    const/4 v2, 0x0

    const-string v3, "ConnectAccountError"

    invoke-static {p0, v1, v2, v0, v3}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 625
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 633
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 635
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/aa;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/aa;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    const v2, 0x7f0f008a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lam/sunrise/android/calendar/ui/settings/aa;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/aa;->a(Ljava/lang/CharSequence;)V

    .line 639
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/aa;->c()V

    .line 641
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/aa;->d(Ljava/lang/CharSequence;)V

    .line 643
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/aa;->e(I)V

    .line 644
    return-void
.end method
