.class public Lam/sunrise/android/calendar/authenticator/a;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 38
    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 39
    array-length v1, v0

    if-lez v1, :cond_0

    .line 40
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    const-string v1, "am.sunrise.android.calendar.extra.FINISH_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 46
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 47
    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 48
    array-length v0, v0

    if-lez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 56
    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 57
    array-length v2, v1

    if-lez v2, :cond_0

    .line 58
    aget-object v1, v1, v3

    .line 60
    :try_start_0
    const-string v2, "am.sunrise.android.calendar.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 69
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1

    .line 65
    :catch_2
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 80
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 81
    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 82
    array-length v2, v1

    if-lez v2, :cond_1

    .line 83
    aget-object v2, v1, v5

    invoke-static {v2}, Lam/sunrise/android/calendar/sync/s;->c(Landroid/accounts/Account;)V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/provider/e;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 88
    :cond_0
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->c()V

    .line 89
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->a(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/utils/e;->a(Landroid/content/Context;)V

    .line 91
    invoke-static {p0}, Lam/sunrise/android/calendar/authenticator/a;->e(Landroid/content/Context;)V

    .line 92
    invoke-static {p0}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->b(Landroid/content/Context;)V

    .line 93
    aget-object v1, v1, v5

    new-instance v2, Lam/sunrise/android/calendar/authenticator/b;

    invoke-direct {v2}, Lam/sunrise/android/calendar/authenticator/b;-><init>()V

    invoke-virtual {v0, v1, v2, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 105
    :cond_1
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 110
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 111
    return-void
.end method
