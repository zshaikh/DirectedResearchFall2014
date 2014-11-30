.class public Lcom/dolphin/browser/core/ab;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/core/ab;


# instance fields
.field private c:Landroid/content/IntentFilter;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/dolphin/browser/core/ad;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/dolphin/browser/core/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/core/ab;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/core/ab;->c:Landroid/content/IntentFilter;

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/core/ab;->c:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/dolphin/browser/core/ac;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/core/ac;-><init>(Lcom/dolphin/browser/core/ab;)V

    iput-object v0, p0, Lcom/dolphin/browser/core/ab;->d:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/core/ab;->e:Ljava/util/WeakHashMap;

    .line 70
    return-void
.end method

.method public static a()Lcom/dolphin/browser/core/ab;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/core/ab;->b:Lcom/dolphin/browser/core/ab;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/dolphin/browser/core/ab;

    invoke-direct {v0}, Lcom/dolphin/browser/core/ab;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/ab;->b:Lcom/dolphin/browser/core/ab;

    .line 43
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/ab;->b:Lcom/dolphin/browser/core/ab;

    return-object v0
.end method

.method private a(Landroid/net/NetworkInfo;)V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/core/ab;->e:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ab;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/ad;

    .line 79
    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ad;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 113
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 114
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/core/ab;->f:Z

    .line 120
    :goto_0
    sget-object v1, Lcom/dolphin/browser/core/ab;->a:Ljava/lang/String;

    const-string v2, "Network status: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/dolphin/browser/core/ab;->f:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    invoke-direct {p0, v0}, Lcom/dolphin/browser/core/ab;->a(Landroid/net/NetworkInfo;)V

    .line 122
    return-void

    .line 118
    :cond_0
    iput-boolean v5, p0, Lcom/dolphin/browser/core/ab;->f:Z

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/core/ad;)V
    .locals 3

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/core/ab;->e:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ab;->e:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 93
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p1, v0}, Lcom/dolphin/browser/core/ad;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/core/ab;->a(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/core/ab;->d:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/dolphin/browser/core/ab;->c:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method

.method public b(Lcom/dolphin/browser/core/ad;)V
    .locals 2

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/core/ab;->e:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ab;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/dolphin/browser/core/ab;->f:Z

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/core/ab;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
