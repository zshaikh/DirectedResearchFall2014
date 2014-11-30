.class public Lam/sunrise/android/calendar/ui/birthdays/l;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "BirthdaysFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 316
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 317
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v1, Lam/sunrise/android/calendar/ui/birthdays/l;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/birthdays/l;-><init>()V

    const/4 v2, 0x0

    const-string v3, "ConnectAccountError"

    invoke-static {p0, v1, v2, v0, v3}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 321
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 325
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/l;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/l;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.ERROR_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    const v2, 0x7f0f008a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lam/sunrise/android/calendar/ui/birthdays/l;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/birthdays/l;->a(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/birthdays/l;->c()V

    .line 333
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/birthdays/l;->d(Ljava/lang/CharSequence;)V

    .line 335
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/birthdays/l;->e(I)V

    .line 336
    return-void
.end method
