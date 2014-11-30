.class public Lcom/mobileapptracker/MobileAppTracker;
.super Ljava/lang/Object;


# static fields
.field public static final GENDER_FEMALE:I = 0x1

.field public static final GENDER_MALE:I

.field private static final a:Landroid/net/Uri;


# instance fields
.field private b:Lcom/mobileapptracker/MATResponse;

.field private c:Lcom/mobileapptracker/UrlRequester;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/concurrent/ConcurrentHashMap;

.field private m:Landroid/content/Context;

.field private n:Lcom/mobileapptracker/Encryption;

.field private o:Ljava/util/concurrent/ScheduledExecutorService;

.field private p:Ljava/util/List;

.field private q:Ljava/util/concurrent/Semaphore;

.field private r:Landroid/content/SharedPreferences;

.field private s:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mobileapptracker/MobileAppTracker;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "advertiserId"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/mobileapptracker/MobileAppTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "advertiserId"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "collectDeviceId"    # Z
    .param p5, "collectMacAddress"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/mobileapptracker/MobileAppTracker;->d:Z

    iput-boolean v3, p0, Lcom/mobileapptracker/MobileAppTracker;->e:Z

    iput-boolean v3, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    iput-boolean v3, p0, Lcom/mobileapptracker/MobileAppTracker;->g:Z

    iput-boolean v3, p0, Lcom/mobileapptracker/MobileAppTracker;->h:Z

    iput-boolean v4, p0, Lcom/mobileapptracker/MobileAppTracker;->i:Z

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/mobileapptracker/MobileAppTracker;->h:Z

    iput-object p1, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4, v4}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/mobileapptracker/UrlRequester;

    invoke-direct {v0}, Lcom/mobileapptracker/UrlRequester;-><init>()V

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->c:Lcom/mobileapptracker/UrlRequester;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ir"

    aput-object v1, v0, v3

    const-string v1, "d"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "db"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ma"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ov"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "an"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "av"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dc"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ad"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android_id_md5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android_id_sha1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android_id_sha256"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ua"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "tpid"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ti"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "age"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gender"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "altitude"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "connection_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "mobile_country_code"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mobile_network_code"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "screen_density"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "screen_layout_size"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "android_purchase_status"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "event_referrer"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "app_ad_tracking"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->p:Ljava/util/List;

    invoke-direct/range {p0 .. p5}, Lcom/mobileapptracker/MobileAppTracker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->g:Z

    new-instance v0, Lcom/mobileapptracker/Encryption;

    const-string v1, "heF9BATUfWuISyO8"

    invoke-direct {v0, p3, v1}, Lcom/mobileapptracker/Encryption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    const-string v0, "mat_queue"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->r:Landroid/content/SharedPreferences;

    const-string v0, "mat_install"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "install"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->j:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v0, Lcom/mobileapptracker/b;

    invoke-direct {v0, p0}, Lcom/mobileapptracker/b;-><init>(Lcom/mobileapptracker/MobileAppTracker;)V

    iget-boolean v1, p0, Lcom/mobileapptracker/MobileAppTracker;->d:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/mobileapptracker/MobileAppTracker;->d:Z

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/mobileapptracker/MobileAppTracker;->d:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private a()I
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->r:Landroid/content/SharedPreferences;

    const-string v1, "queuesize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    :try_start_2
    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->b()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android_purchase_status"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ei"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "conversion"

    invoke-direct {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v1, :cond_2

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "open"

    invoke-direct {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v0, "MobileAppTracker"

    const-string v1, "Error constructing url for tracking call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    const-string v0, "install"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "install"

    invoke-direct {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "update"

    invoke-direct {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p1}, Lcom/mobileapptracker/MobileAppTracker;->setEventName(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1}, Lcom/mobileapptracker/MobileAppTracker;->setEventId(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->c()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_b

    :try_start_5
    iget-object v11, p0, Lcom/mobileapptracker/MobileAppTracker;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/mobileapptracker/c;

    const/4 v10, 0x1

    move-object v1, p0

    move-object v3, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/mobileapptracker/c;-><init>(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MobileAppTracker"

    const-string v1, "Request could not be executed from track"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const-string v0, "open"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v0, :cond_c

    const-string v0, "MobileAppTracker"

    const-string v1, "Not online: track will be queued"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    const/4 v10, 0x1

    move-object v1, p0

    move-object v3, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_7
    invoke-direct/range {v1 .. v10}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5
.end method

.method static synthetic a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/mobileapptracker/MobileAppTracker;->setRevenue(D)V

    if-eqz p5, :cond_0

    invoke-virtual {p0, p5}, Lcom/mobileapptracker/MobileAppTracker;->setCurrencyCode(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getReferrer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v2, "mat_referrer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v2, "referrer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/mobileapptracker/MobileAppTracker;->setReferrer(Ljava/lang/String;)V

    :cond_1
    const-string v1, "open"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "conversion"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_2
    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getInstallLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getUpdateLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getInstallLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&install_log_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getInstallLogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "aid"

    aput-object v3, v2, v1

    sget-object v1, Lcom/mobileapptracker/MobileAppTracker;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    const-string v1, "&fb_cookie_id="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_fb_intent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "action"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    :try_start_2
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    :goto_4
    const-string v1, "&source="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "action"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :try_start_3
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v1

    :goto_6
    const-string v2, "&sd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    iget-object v3, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobileapptracker/Encryption;->encrypt(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobileapptracker/Encryption;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    :goto_7
    const-string v1, "&da="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getUpdateLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&update_log_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getUpdateLogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    goto/16 :goto_1

    :cond_9
    const-string v1, "mat_last_log_id"

    const-string v2, "lastLogIdDate"

    invoke-direct {p0, v1, v2}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://engine.mobileapptracking.com/v1/Integrations/Sdk/GetLog?sdk=android&package_name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&advertiser_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAdvertiserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&keys[mac_address]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&keys[device_id]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    iget-object v5, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobileapptracker/Encryption;->encrypt(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mobileapptracker/Encryption;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    :goto_8
    const-string v3, "&data="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/mobileapptracker/MobileAppTracker;->c:Lcom/mobileapptracker/UrlRequester;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/mobileapptracker/UrlRequester;->requestUrl(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    :try_start_6
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "log_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v1

    :goto_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, "install"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, v2}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "&install_log_id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    goto/16 :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    move-object v1, v3

    goto :goto_9

    :cond_b
    const-string v3, "update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, v2}, Lcom/mobileapptracker/MobileAppTracker;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "&update_log_id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    goto/16 :goto_1

    :cond_c
    const-string v1, "open"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v1, :cond_d

    const-string v1, "MobileAppTracker"

    const-string v2, "Log ID not found for open/event, sending as no_log data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "serve"

    const-string v3, "serve_no_log"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    goto/16 :goto_1

    :cond_e
    iget-boolean v1, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v1, :cond_f

    const-string v1, "MobileAppTracker"

    const-string v2, "SDK has already requested a log ID today, not requesting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v1, "open"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v1, :cond_10

    const-string v1, "MobileAppTracker"

    const-string v2, "Log ID not found for open/event, sending as no_log data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "serve"

    const-string v3, "serve_no_log"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    goto/16 :goto_1

    :cond_11
    :try_start_7
    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object v0, v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_4

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :cond_13
    move-object v6, v0

    goto/16 :goto_1
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->r:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-gez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "queuesize"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v1, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ua"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ac"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "event_items"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "action"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "revenue"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-nez p6, :cond_3

    const-string v1, "USD"

    :goto_0
    const-string v2, "currency"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p7, :cond_1

    const-string v1, "iap_data"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p8, :cond_2

    const-string v1, "iap_signature"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "should_build_data"

    invoke-virtual {v0, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->r:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/mobileapptracker/MobileAppTracker;->a(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :cond_3
    move-object v1, p6

    goto :goto_0
.end method

.method private a(Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 8

    const/4 v6, 0x0

    const-string v0, "mat_id"

    const-string v0, "cc"

    const-string v0, ""

    const-string v7, "MobileAppTracker"

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mobileapptracker/MobileAppTracker;->setAdvertiserId(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/mobileapptracker/MobileAppTracker;->setKey(Ljava/lang/String;)V

    const-string v0, "conversion"

    invoke-direct {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;)V

    const-string v0, "mat_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "mat_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mat_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v1, "mi"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "dm"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "db"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "ov"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ma"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "WIFI"

    const-string v1, "connection_type"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cc"

    invoke-direct {p0, v2, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dc"

    invoke-direct {p0, v2, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mobile_country_code"

    invoke-direct {p0, v2, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mobile_network_code"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "USD"

    invoke-virtual {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->setCurrencyCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "an"

    invoke-direct {p0, v3, v2}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-direct {p0, v3, v2}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(I)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    :try_start_6
    const-string v0, "mat_referrer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "referrer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->setReferrer(Ljava/lang/String;)V

    const-string v0, "mat_install"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "install"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->j:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mobileapptracker/d;

    invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/d;-><init>(Lcom/mobileapptracker/MobileAppTracker;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_density"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_layout_size"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const-string v0, "mobile"

    const-string v1, "connection_type"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MobileAppTracker"

    const-string v0, "MobileAppTracker initialization failed"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_5

    :cond_7
    if-eqz p4, :cond_3

    :try_start_7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cc"

    invoke-direct {p0, v2, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v0, "MobileAppTracker"

    const-string v1, "MCC/MNC not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cc"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v2

    const/4 v3, 0x0

    const-string v4, "MobileAppTracker"

    const-string v5, "ApplicationInfo not found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v2, v3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const-string v0, "MobileAppTracker"

    const-string v1, "App version not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/mobileapptracker/MobileAppTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {v2, p1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/mobileapptracker/TimeIgnoringComparator;

    invoke-direct {v2}, Lcom/mobileapptracker/TimeIgnoringComparator;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/mobileapptracker/TimeIgnoringComparator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    :goto_1
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/text/SimpleDateFormat;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_1
.end method

.method static synthetic b(Lcom/mobileapptracker/MobileAppTracker;)Lcom/mobileapptracker/UrlRequester;
    .locals 1

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->c:Lcom/mobileapptracker/UrlRequester;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-nez v11, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x32

    if-le v11, v1, :cond_6

    const/16 v0, 0x32

    sub-int v0, v11, v0

    add-int/lit8 v0, v0, 0x1

    move v12, v0

    :goto_1
    if-le v12, v11, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->r:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_5
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "link"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "event_items"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "event_items"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :cond_2
    const-string v1, "action"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "revenue"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v1, "currency"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "iap_data"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "iap_data"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :cond_3
    const-string v1, "iap_signature"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "iap_signature"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    :cond_4
    const-string v1, "should_build_data"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v10

    :try_start_6
    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->a()I

    move-result v1

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    invoke-direct {p0, v1}, Lcom/mobileapptracker/MobileAppTracker;->a(I)V

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->r:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v13, p0, Lcom/mobileapptracker/MobileAppTracker;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/mobileapptracker/c;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/mobileapptracker/c;-><init>(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v13, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    :goto_2
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->a()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/mobileapptracker/MobileAppTracker;->a(I)V

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->r:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MobileAppTracker"

    const-string v1, "Request could not be executed from queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_b
    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_6
    move v12, v0

    goto/16 :goto_1
.end method

.method private b(I)V
    .locals 2

    const-string v0, "av"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_log_id_install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, p2

    goto :goto_0
.end method

.method static synthetic c(Lcom/mobileapptracker/MobileAppTracker;)Lcom/mobileapptracker/MATResponse;
    .locals 1

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->b:Lcom/mobileapptracker/MATResponse;

    return-object v0
.end method

.method static synthetic c(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobileapptracker/MobileAppTracker;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_log_id_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 7

    const-string v0, "https://"

    iget-boolean v1, p0, Lcom/mobileapptracker/MobileAppTracker;->i:Z

    if-nez v1, :cond_0

    const-string v0, "http://"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAdvertiserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v0, :cond_5

    const-string v0, "debug.engine.mobileapptracking.com"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "/serve?s=android&ver=2.5&pn="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "&skip_dup=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v0, :cond_3

    const-string v0, "&debug=1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/referrer_apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "publisher_package_name desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "tracking_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "ti"

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "engine.mobileapptracking.com"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/mobileapptracker/MobileAppTracker;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "&"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MobileAppTracker"

    const-string v1, "Error reading app-to-app values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method static synthetic d(Lcom/mobileapptracker/MobileAppTracker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/mobileapptracker/MobileAppTracker;)I
    .locals 1

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->a()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/mobileapptracker/MobileAppTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobileapptracker/MobileAppTracker;->b()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "adv"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAge()I
    .locals 3

    const-string v2, "age"

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "age"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "age"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getAltitude()D
    .locals 3

    const-string v2, "altitude"

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "altitude"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "altitude"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAndroidIdMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android_id_md5"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAndroidIdSha1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android_id_sha1"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAndroidIdSha256()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "android_id_sha256"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "an"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAppVersion()I
    .locals 3

    const-string v2, "av"

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "av"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "av"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "dc"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "connection_type"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceBrand()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "db"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "dm"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ei"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEventReferrer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "event_referrer"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGender()I
    .locals 3

    const-string v2, "gender"

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "gender"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "gender"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getInstallDate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getInstallLogId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_log_id_install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "logId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()D
    .locals 3

    const-string v2, "latitude"

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "latitude"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "latitude"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 3

    const-string v2, "longitude"

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "longitude"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "longitude"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "mobile_country_code"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "mobile_network_code"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ma"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMatId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOsId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "oi"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ov"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "pn"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRefId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ir"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRevenue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "screen_density"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "screen_layout_size"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTRUSTeId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "tpid"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateLogId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_log_id_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "logId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "ui"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->g:Z

    return v0
.end method

.method public setAdvertiserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "advertiser_id"    # Ljava/lang/String;

    .prologue
    const-string v0, "adv"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAge(I)V
    .locals 2
    .param p1, "age"    # I

    .prologue
    const-string v0, "age"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowDuplicates(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/mobileapptracker/MobileAppTracker;->e:Z

    return-void
.end method

.method public setAltitude(D)V
    .locals 2
    .param p1, "altitude"    # D

    .prologue
    const-string v0, "altitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppAdTracking(Z)V
    .locals 2
    .param p1, "appAdTracking"    # Z

    .prologue
    const-string v1, "app_ad_tracking"

    if-eqz p1, :cond_0

    const-string v0, "app_ad_tracking"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "app_ad_tracking"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "currency_code"    # Ljava/lang/String;

    .prologue
    const-string v0, "c"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 1
    .param p1, "event_id"    # Ljava/lang/String;

    .prologue
    const-string v0, "ei"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 1
    .param p1, "event_name"    # Ljava/lang/String;

    .prologue
    const-string v0, "en"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEventReferrer(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrerPackage"    # Ljava/lang/String;

    .prologue
    const-string v0, "event_referrer"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGender(I)V
    .locals 2
    .param p1, "gender"    # I

    .prologue
    const-string v0, "gender"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpsEncryption(Z)V
    .locals 0
    .param p1, "use_https"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/mobileapptracker/MobileAppTracker;->i:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/mobileapptracker/MobileAppTracker;->k:Ljava/lang/String;

    new-instance v0, Lcom/mobileapptracker/Encryption;

    const-string v1, "heF9BATUfWuISyO8"

    invoke-direct {v0, p1, v1}, Lcom/mobileapptracker/Encryption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    return-void
.end method

.method public setLatitude(D)V
    .locals 2
    .param p1, "latitude"    # D

    .prologue
    const-string v0, "latitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLongitude(D)V
    .locals 2
    .param p1, "longitude"    # D

    .prologue
    const-string v0, "longitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMATResponse(Lcom/mobileapptracker/MATResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/mobileapptracker/MATResponse;

    .prologue
    iput-object p1, p0, Lcom/mobileapptracker/MobileAppTracker;->b:Lcom/mobileapptracker/MATResponse;

    return-void
.end method

.method public setOsId(Ljava/lang/String;)V
    .locals 1
    .param p1, "os_id"    # Ljava/lang/String;

    .prologue
    const-string v0, "oi"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "package_name"    # Ljava/lang/String;

    .prologue
    const-string v0, "pn"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRefId(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref_id"    # Ljava/lang/String;

    .prologue
    const-string v0, "ar"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    const-string v0, "ir"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRevenue(D)V
    .locals 2
    .param p1, "revenue"    # D

    .prologue
    const-string v0, "r"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSiteId(Ljava/lang/String;)V
    .locals 1
    .param p1, "site_id"    # Ljava/lang/String;

    .prologue
    const-string v0, "si"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTRUSTeId(Ljava/lang/String;)V
    .locals 1
    .param p1, "tpid"    # Ljava/lang/String;

    .prologue
    const-string v0, "tpid"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "publisherAdvertiserId"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "publisherId"    # Ljava/lang/String;
    .param p4, "campaignId"    # Ljava/lang/String;
    .param p5, "doRedirect"    # Z

    .prologue
    const-string v6, "tracking_id"

    const-string v5, "MobileAppTracker"

    const-string v3, ""

    const-string v0, ""

    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://engine.mobileapptracking.com/serve?action=click&sdk=android"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&publisher_advertiser_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v1, "&publisher_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "&campaign_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "&response_format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->c:Lcom/mobileapptracker/UrlRequester;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mobileapptracker/UrlRequester;->requestUrl(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v1, "tracking_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "publisher_package_name"

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tracking_id"

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/referrer_apps"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    if-eqz p5, :cond_2

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "MobileAppTracker"

    const-string v0, "Unable to get tracking ID or redirect url from app-to-app tracking"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v1, "MobileAppTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to start activity to open "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object v0, v3

    move-object v1, v3

    goto :goto_0
.end method

.method public setUseAndroidIdMd5()V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/Encryption;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_id_md5"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "ad"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseAndroidIdSha1()V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/Encryption;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_id_sha1"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "ad"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseAndroidIdSha256()V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->n:Lcom/mobileapptracker/Encryption;

    iget-object v1, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/Encryption;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_id_sha256"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "ad"

    invoke-direct {p0, v1, v0}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    const-string v0, "ui"

    invoke-direct {p0, v0, p1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackAction(Ljava/lang/String;)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public trackAction(Ljava/lang/String;D)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "revenue"    # D

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public trackAction(Ljava/lang/String;DLjava/lang/String;)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "revenue"    # D
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public trackAction(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "revenue"    # D
    .param p4, "currency"    # Ljava/lang/String;
    .param p5, "inAppPurchaseData"    # Ljava/lang/String;
    .param p6, "inAppSignature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public trackAction(Ljava/lang/String;Lcom/mobileapptracker/MATEventItem;)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "eventItem"    # Lcom/mobileapptracker/MATEventItem;

    .prologue
    const/4 v5, 0x0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2}, Lcom/mobileapptracker/MATEventItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public trackAction(Ljava/lang/String;Lcom/mobileapptracker/MATEventItem;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "eventItem"    # Lcom/mobileapptracker/MATEventItem;
    .param p3, "inAppPurchaseData"    # Ljava/lang/String;
    .param p4, "inAppSignature"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2}, Lcom/mobileapptracker/MATEventItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public trackAction(Ljava/lang/String;Ljava/util/List;)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mobileapptracker/MATEventItem;>;"
    const/4 v5, 0x0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobileapptracker/MATEventItem;

    invoke-virtual {v0}, Lcom/mobileapptracker/MATEventItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public trackAction(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p3, "inAppPurchaseData"    # Ljava/lang/String;
    .param p4, "inAppSignature"    # Ljava/lang/String;

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mobileapptracker/MATEventItem;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobileapptracker/MATEventItem;

    invoke-virtual {v0}, Lcom/mobileapptracker/MATEventItem;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public trackInstall()I
    .locals 1

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/mobileapptracker/MobileAppTracker;->trackInstall(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized trackInstall(Landroid/content/Context;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "version"

    const-string v0, "install"

    const-string v0, ""

    monitor-enter p0

    :try_start_0
    const-string v0, "mat_install"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "install"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mat_app_version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAppVersion()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "MobileAppTracker"

    const-string v1, "App version has changed since last trackInstall, sending update to server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "update"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAppVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "MobileAppTracker"

    const-string v1, "Install has been tracked before"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v0, "mat_install"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install"

    const-string v2, "installed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "mat_app_version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAppVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "install"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trackPurchase(Ljava/lang/String;IDLjava/lang/String;)I
    .locals 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "purchaseStatus"    # I
    .param p3, "revenue"    # D
    .param p5, "currency"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v0, "android_purchase_status"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public trackUpdate()I
    .locals 9

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v8, "version"

    const-string v7, ""

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_install"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "install"

    const-string v5, ""

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_app_version"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const-string v1, ""

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAppVersion()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "MobileAppTracker"

    const-string v1, "App version has changed since last trackInstall, sending update to server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "update"

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAppVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/mobileapptracker/MobileAppTracker;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "MobileAppTracker"

    const-string v1, "Update has been tracked before"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_install"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install"

    const-string v5, "installed"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->m:Landroid/content/Context;

    const-string v1, "mat_app_version"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->s:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/mobileapptracker/MobileAppTracker;->getAppVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "installed"

    iput-object v0, p0, Lcom/mobileapptracker/MobileAppTracker;->j:Ljava/lang/String;

    const-string v1, "update"

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/mobileapptracker/MobileAppTracker;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
