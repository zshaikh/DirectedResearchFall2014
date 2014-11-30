.class public Lam/sunrise/android/calendar/ui/settings/p;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "SettingsAccountInfoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 421
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v1, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/p;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/settings/p;-><init>()V

    const/4 v2, 0x0

    const-string v3, "DiscconnectAccountError"

    invoke-static {p0, v1, v2, v0, v3}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 417
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 425
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 427
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/p;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/p;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    const v2, 0x7f0f00b0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lam/sunrise/android/calendar/ui/settings/p;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/p;->a(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/p;->c()V

    .line 433
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/p;->d(Ljava/lang/CharSequence;)V

    .line 435
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/p;->e(I)V

    .line 436
    return-void
.end method
