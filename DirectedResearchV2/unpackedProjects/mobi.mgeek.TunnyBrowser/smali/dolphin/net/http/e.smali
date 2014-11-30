.class public Ldolphin/net/http/e;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field private static b:Ldolphin/net/http/e;


# instance fields
.field a:Ldolphin/net/http/v;

.field private c:I

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Lorg/apache/http/HttpHost;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Ldolphin/net/http/e;->b:Ldolphin/net/http/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;

    .line 51
    new-instance v0, Ldolphin/net/http/v;

    invoke-direct {v0}, Ldolphin/net/http/v;-><init>()V

    iput-object v0, p0, Ldolphin/net/http/e;->a:Ldolphin/net/http/v;

    .line 52
    iput v1, p0, Ldolphin/net/http/e;->c:I

    .line 53
    iput v1, p0, Ldolphin/net/http/e;->d:I

    .line 54
    iput-object v2, p0, Ldolphin/net/http/e;->e:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public static a()Ldolphin/net/http/e;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Ldolphin/net/http/e;->b:Ldolphin/net/http/e;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ldolphin/net/http/e;

    invoke-direct {v0}, Ldolphin/net/http/e;-><init>()V

    sput-object v0, Ldolphin/net/http/e;->b:Ldolphin/net/http/e;

    .line 47
    :cond_0
    sget-object v0, Ldolphin/net/http/e;->b:Ldolphin/net/http/e;

    return-object v0
.end method

.method static synthetic a(Ldolphin/net/http/e;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ldolphin/net/http/e;->d()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 4

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/e;->h:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldolphin/net/http/e;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-nez v0, :cond_1

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :cond_1
    :try_start_2
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Ldolphin/net/http/e;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    const-string v3, "http"

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/apache/http/HttpHost;)Ldolphin/net/http/c;
    .locals 4

    .prologue
    .line 63
    const-string v0, "Network"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ConnectionManager::getConnection] Host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "Http"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ConnectionManager::getConnection] Host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget v0, p0, Ldolphin/net/http/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/http/e;->c:I

    .line 67
    invoke-virtual {p0, p2}, Ldolphin/net/http/e;->a(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 69
    iget-object v0, p0, Ldolphin/net/http/e;->a:Ldolphin/net/http/v;

    invoke-virtual {v0, v1}, Ldolphin/net/http/v;->a(Lorg/apache/http/HttpHost;)Ldolphin/net/http/c;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;

    invoke-static {p1, v1, v0}, Ldolphin/net/http/d;->a(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;)Ldolphin/net/http/c;

    move-result-object v0

    .line 75
    :goto_0
    const-string v1, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ConnectionManager::getConnection] IdleCache HitRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldolphin/net/http/e;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldolphin/net/http/e;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0

    .line 73
    :cond_0
    iget v1, p0, Ldolphin/net/http/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldolphin/net/http/e;->d:I

    goto :goto_0
.end method

.method public declared-synchronized a(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object p1, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    iput-object p1, p0, Ldolphin/net/http/e;->e:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Ldolphin/net/http/e;->e:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Ldolphin/net/http/e;->h:Landroid/net/ConnectivityManager;

    .line 60
    return-void
.end method

.method public a(Lorg/apache/http/HttpHost;J)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ldolphin/net/http/e;->a:Ldolphin/net/http/v;

    invoke-virtual {v0, p1, p2, p3}, Ldolphin/net/http/v;->a(Lorg/apache/http/HttpHost;J)V

    .line 96
    return-void
.end method

.method public a(Ldolphin/net/http/c;)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldolphin/net/http/e;->a(Ldolphin/net/http/c;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ldolphin/net/http/c;Z)Z
    .locals 6

    .prologue
    .line 85
    invoke-virtual {p1}, Ldolphin/net/http/c;->d()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Ldolphin/net/http/c;->c()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 87
    if-eqz v2, :cond_0

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    :goto_0
    const-string v3, "Http"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ConnectionManager::recycleConnection]DUMP - isPreConnection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Ldolphin/net/http/e;->a:Ldolphin/net/http/v;

    invoke-virtual {v1, v0, p1}, Ldolphin/net/http/v;->a(Lorg/apache/http/HttpHost;Ldolphin/net/http/c;)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, v1

    .line 87
    goto :goto_0
.end method

.method public declared-synchronized b()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/e;->g:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ldolphin/net/http/f;

    invoke-direct {v0, p0}, Ldolphin/net/http/f;-><init>(Ldolphin/net/http/e;)V

    iput-object v0, p0, Ldolphin/net/http/e;->g:Landroid/content/BroadcastReceiver;

    .line 127
    iget-object v0, p0, Ldolphin/net/http/e;->e:Landroid/content/Context;

    iget-object v1, p0, Ldolphin/net/http/e;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    :cond_0
    invoke-direct {p0}, Ldolphin/net/http/e;->d()V

    .line 133
    iget-object v0, p0, Ldolphin/net/http/e;->f:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Ldolphin/net/http/e;->a:Ldolphin/net/http/v;

    invoke-virtual {v0}, Ldolphin/net/http/v;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_1
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
