.class public final Lcom/vungle/sdk/ac;
.super Landroid/content/BroadcastReceiver;
.source "vungle"


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static final b:Lcom/vungle/sdk/ac;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/sdk/ac;->a:Landroid/content/IntentFilter;

    .line 21
    new-instance v0, Lcom/vungle/sdk/ac;

    invoke-direct {v0}, Lcom/vungle/sdk/ac;-><init>()V

    sput-object v0, Lcom/vungle/sdk/ac;->b:Lcom/vungle/sdk/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Lcom/vungle/sdk/ac;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/vungle/sdk/ac;->b:Lcom/vungle/sdk/ac;

    return-object v0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/vungle/sdk/ac;->c:Z

    if-eq v0, p1, :cond_0

    .line 81
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    .line 82
    iget-boolean v1, p0, Lcom/vungle/sdk/ac;->c:Z

    if-eqz v1, :cond_1

    .line 83
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    :goto_0
    iput-boolean p1, p0, Lcom/vungle/sdk/ac;->c:Z

    .line 92
    :cond_0
    return-void

    .line 87
    :cond_1
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 88
    sget-object v1, Lcom/vungle/sdk/ac;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 37
    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/sdk/ac;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/sdk/ac;->a(Z)V

    .line 44
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/vungle/sdk/ac;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 46
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0

    .line 52
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :cond_2
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isFailover"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    .line 66
    monitor-enter p0

    .line 68
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/vungle/sdk/ac;->a(Z)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
