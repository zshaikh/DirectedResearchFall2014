.class public Lam/sunrise/android/calendar/ui/settings/r;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "SettingsAccountInfoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 363
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 355
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/r;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/settings/r;-><init>()V

    const/4 v2, 0x0

    const-string v3, "ReconnectAccountError"

    invoke-static {p0, v1, v2, v0, v3}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 359
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 367
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/r;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/r;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    const v2, 0x7f0f011b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lam/sunrise/android/calendar/ui/settings/r;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/r;->a(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/r;->c()V

    .line 373
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/r;->d(Ljava/lang/CharSequence;)V

    .line 375
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/r;->e(I)V

    .line 376
    return-void
.end method
