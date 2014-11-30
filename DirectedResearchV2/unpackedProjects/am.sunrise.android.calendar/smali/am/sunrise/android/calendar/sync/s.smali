.class public Lam/sunrise/android/calendar/sync/s;
.super Ljava/lang/Object;
.source "SyncUtils.java"


# direct methods
.method public static a(Landroid/accounts/Account;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v1, "do_not_retry"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string v1, "force"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v1, "am.sunrise.android.calendar.extra.USER_REQUEST_SYNC"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v1, "am.sunrise.android.calendar"

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public static a(Landroid/accounts/Account;Lam/sunrise/android/calendar/e;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 73
    const-string v0, "SyncUtils"

    const-string v1, "configureSync: refreshRate=%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/e;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    sget-object v0, Lam/sunrise/android/calendar/e;->d:Lam/sunrise/android/calendar/e;

    if-ne p1, v0, :cond_0

    .line 77
    const-string v0, "am.sunrise.android.calendar"

    invoke-static {p0, v0, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 78
    const-string v0, "am.sunrise.android.calendar"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "am.sunrise.android.calendar"

    invoke-static {p0, v0, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 85
    const-string v0, "am.sunrise.android.calendar"

    invoke-static {p0, v0, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 87
    const-string v0, "am.sunrise.android.calendar"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lam/sunrise/android/calendar/e;->b()J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/accounts/Account;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    .prologue
    .line 153
    const-string v0, "SyncUtils"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 155
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 148
    const-string v0, "saved_last_update"

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/accounts/Account;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v1, "do_not_retry"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string v1, "force"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    const-string v1, "am.sunrise.android.calendar.extra.APPLY_PENDING_ACTIONS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const-string v1, "am.sunrise.android.calendar"

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->b(Landroid/accounts/Account;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    .prologue
    .line 159
    const-string v0, "SyncUtils"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 161
    return-void
.end method

.method public static c(Landroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 111
    const-string v0, "am.sunrise.android.calendar"

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 112
    const-string v0, "am.sunrise.android.calendar"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 113
    const-string v0, "am.sunrise.android.calendar"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 120
    const-string v0, "SyncUtils"

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 124
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v2

    .line 125
    invoke-static {v2, v1}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "SyncUtils"

    const-string v3, "updateSyncState: COMPLETED at %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const-string v2, "saved_last_update"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 132
    const-string v0, "SyncUtils"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v1

    .line 135
    const-string v2, "saved_last_update"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 140
    invoke-static {p0}, Lam/sunrise/android/calendar/authenticator/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    const-string v1, "am.sunrise.android.calendar"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
