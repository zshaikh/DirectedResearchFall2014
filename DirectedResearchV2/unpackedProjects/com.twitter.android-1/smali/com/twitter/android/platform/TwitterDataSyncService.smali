.class public Lcom/twitter/android/platform/TwitterDataSyncService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/twitter/android/platform/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->b:Lcom/twitter/android/platform/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)V
    .locals 2

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    invoke-static {p3, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    invoke-static {p3, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.twitter.android.provider.TwitterProvider"

    invoke-static {p3, v0, p1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/twitter/android/platform/TwitterDataSyncService;->b(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_sync"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->b:Lcom/twitter/android/platform/n;

    invoke-virtual {v0}, Lcom/twitter/android/platform/n;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v1, Lcom/twitter/android/platform/TwitterDataSyncService;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->b:Lcom/twitter/android/platform/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/platform/n;

    invoke-virtual {p0}, Lcom/twitter/android/platform/TwitterDataSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/platform/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/platform/TwitterDataSyncService;->b:Lcom/twitter/android/platform/n;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
