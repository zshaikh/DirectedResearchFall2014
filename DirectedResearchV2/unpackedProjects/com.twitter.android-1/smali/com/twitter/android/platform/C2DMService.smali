.class public Lcom/twitter/android/platform/C2DMService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:Ljava/util/HashMap;

.field private static final d:Ljava/util/HashMap;

.field private static e:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/twitter/android/network/b;

.field private h:Lcom/twitter/android/network/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v1, 0x1

    const-string v0, "C2DMService"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/platform/C2DMService;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/platform/C2DMService;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/platform/C2DMService;->d:Ljava/util/HashMap;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    const-string v2, "com.google.android.c2dm.intent.RETRY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    const-string v2, "com.twitter.android.action.c2dm.ENABLE"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->d:Ljava/util/HashMap;

    const-string v2, "tweet"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->d:Ljava/util/HashMap;

    const-string v1, "mention"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/platform/C2DMService;->d:Ljava/util/HashMap;

    const-string v1, "direct_message"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "C2DMService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;)J
    .locals 4

    const-string v0, "c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_refresh."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a()V
    .locals 3

    const-wide/16 v0, 0x4e20

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/platform/C2DMService;->a(JI)V

    return-void
.end method

.method private a(JI)V
    .locals 2

    const-string v0, "c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/platform/C2DMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backoff"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backoff_ceil"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/accounts/Account;Lcom/twitter/android/network/c;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/twitter/android/platform/C2DMService;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/platform/C2DMService;->h:Lcom/twitter/android/network/d;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "account"

    aput-object v6, v5, v0

    const-string v6, "push_destinations"

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "udid"

    invoke-static {v4, v5, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "enabled_for"

    invoke-static {v4, v3, p4}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/twitter/android/platform/C2DMService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_0

    const-string v5, "lang"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string v3, "token"

    invoke-static {v4, v3, p3}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, p5}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;Lcom/twitter/android/network/c;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p4, 0x8

    if-eqz v3, :cond_5

    :goto_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "notif_mention"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notif_message"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v0

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Landroid/content/ContentValues;Z)I

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;J)V

    :cond_4
    return-void

    :cond_5
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;IZ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.twitter.android.auth.login"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    const-string v6, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v5, v6}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "com.twitter.android.provider.TwitterProvider"

    invoke-static {v5, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    :goto_2
    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    const-string v0, "c2dm"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg_enabled_for."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/platform/C2DMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.action.c2dm.ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enabled_for"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "polling"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;Landroid/accounts/Account;J)V
    .locals 3

    const-string v0, "c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_refresh."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-class v1, Lcom/twitter/android/platform/C2DMService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/platform/C2DMService;->e:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "C2DMService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/platform/C2DMService;->e:Landroid/os/PowerManager$WakeLock;

    :cond_0
    sget-object v0, Lcom/twitter/android/platform/C2DMService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-class v0, Lcom/twitter/android/platform/C2DMService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/platform/C2DMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "reg_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v1, "reg_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/twitter/android/network/c;Z)Z
    .locals 5

    new-instance v0, Lcom/twitter/android/network/h;

    iget-object v1, p0, Lcom/twitter/android/platform/C2DMService;->g:Lcom/twitter/android/network/b;

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/twitter/android/network/i;

    invoke-direct {v3, p2}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/network/h;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/twitter/android/platform/C2DMService;->h:Lcom/twitter/android/network/d;

    invoke-virtual {v1, v0}, Lcom/twitter/android/network/d;->b(Lcom/twitter/android/network/a;)V

    :goto_0
    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, v0, Lcom/twitter/android/network/a;->a:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/platform/C2DMService;->h:Lcom/twitter/android/network/d;

    invoke-virtual {v1, v0}, Lcom/twitter/android/network/d;->a(Lcom/twitter/android/network/a;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "c2dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reg_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;Landroid/accounts/Account;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;IZ)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/accounts/Account;)I
    .locals 9

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/av;->a:Landroid/net/Uri;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "notif_mention"

    aput-object v4, v2, v7

    const-string v4, "notif_message"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_2
    packed-switch v0, :pswitch_data_0

    move v0, v7

    :goto_3
    if-ne v1, v6, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x8

    goto :goto_3

    :cond_1
    move v1, v0

    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v6

    move v1, v6

    goto :goto_1

    :cond_4
    move v1, v6

    move v0, v6

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sender"

    const-string v2, "twittermobileclients@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-virtual {p0}, Lcom/twitter/android/platform/C2DMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/C2DMService;->f:Ljava/lang/String;

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/C2DMService;->g:Lcom/twitter/android/network/b;

    invoke-static {p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/C2DMService;->h:Lcom/twitter/android/network/d;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/platform/C2DMService;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    packed-switch v1, :pswitch_data_1

    :cond_2
    :goto_2
    sget-object v1, Lcom/twitter/android/platform/C2DMService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    :pswitch_1
    :try_start_0
    const-string v1, "error"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregistered"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "registration_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_5

    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "C2DMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistered -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->a()V

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    invoke-static {v2, v5}, Lcom/twitter/android/platform/d;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/c;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/android/platform/C2DMService;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/android/platform/C2DMService;->h:Lcom/twitter/android/network/d;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "account"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "push_destinations"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "destroy"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/twitter/android/network/d;->a([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "udid"

    invoke-static {v7, v8, v6}, Lcom/twitter/android/network/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v7}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;Lcom/twitter/android/network/c;Z)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    sget-boolean v2, Lcom/twitter/android/platform/C2DMService;->a:Z

    if-eqz v2, :cond_6

    const-string v2, "C2DMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration error -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;)V

    const-string v2, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "c2dm"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/platform/C2DMService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "backoff"

    const-wide/16 v3, 0x4e20

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "backoff_ceil"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/twitter/android/platform/C2DMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    int-to-long v5, v4

    const-wide/16 v7, 0x5

    cmp-long v1, v5, v7

    if-gez v1, :cond_2

    const-wide/16 v5, 0x2

    mul-long v1, v2, v5

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/platform/C2DMService;->a(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/twitter/android/platform/C2DMService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    :cond_7
    if-eqz v4, :cond_2

    :try_start_1
    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->a:Z

    if-eqz v1, :cond_8

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/twitter/android/platform/C2DMService;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->a()V

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {v9, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v11, v10

    const/4 v1, 0x0

    move v7, v1

    :goto_4
    if-ge v7, v11, :cond_2

    aget-object v2, v10, v7

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v6}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/content/Context;Landroid/accounts/Account;J)V

    invoke-static {v9, v2}, Lcom/twitter/android/platform/d;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/c;

    move-result-object v3

    const-string v1, "c2dm"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reg_enabled_for."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v1, -0x1

    if-ne v5, v1, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v5, 0x5

    :cond_9
    :goto_5
    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/accounts/Account;Lcom/twitter/android/network/c;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;Landroid/accounts/Account;)I

    move-result v5

    goto :goto_5

    :pswitch_2
    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->a:Z

    if-eqz v1, :cond_b

    const-string v1, "C2DMService"

    const-string v2, "Push received."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "recipient_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "collapse_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "recipient_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "status_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sender_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/twitter/android/platform/C2DMService;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/provider/q;->a(Landroid/content/Context;)Lcom/twitter/android/provider/q;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.twitter.android.poll.data"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v14, "new"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "sample"

    invoke-virtual {v13, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "sender"

    invoke-virtual {v13, v14, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "owner_id"

    invoke-virtual {v13, v14, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    packed-switch v1, :pswitch_data_2

    sget-object v1, Lcom/twitter/android/platform/C2DMService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    :pswitch_3
    sget-object v1, Lcom/twitter/android/platform/C2DMService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    :pswitch_4
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v10, v3, v1}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;I)I

    const/4 v1, 0x5

    invoke-virtual {v11, v8, v9, v1}, Lcom/twitter/android/provider/al;->f(JI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v11, "unread"

    invoke-virtual {v13, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "status_id"

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v1, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "com.twitter.android._data.mentions"

    invoke-virtual {v12, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_6
    const-string v1, "account_name"

    invoke-virtual {v12, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {v12, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "notif_id"

    invoke-virtual {v10, v3}, Lcom/twitter/android/provider/q;->b(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "unread_count_types"

    invoke-virtual {v10, v3}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v1}, Lcom/twitter/android/platform/C2DMService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_c
    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "C2DMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "collapse_key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sender_name: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recipient_name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "C2DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_5
    const-string v1, "message"

    const/4 v14, 0x1

    invoke-virtual {v10, v3, v1, v14}, Lcom/twitter/android/provider/q;->a(Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {v11}, Lcom/twitter/android/provider/al;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v11, "unread"

    invoke-virtual {v13, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.twitter.android._data.dms"

    invoke-virtual {v12, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_6

    :pswitch_6
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->c(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :pswitch_7
    sget-boolean v1, Lcom/twitter/android/platform/C2DMService;->a:Z

    if-eqz v1, :cond_d

    const-string v1, "C2DMService"

    const-string v2, "Refresh."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v1, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/twitter/android/platform/d;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/c;

    move-result-object v3

    const-string v1, "enabled_for"

    const/4 v5, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "polling"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/platform/C2DMService;->a(Landroid/accounts/Account;Lcom/twitter/android/network/c;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
