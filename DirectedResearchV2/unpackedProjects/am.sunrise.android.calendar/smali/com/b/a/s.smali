.class Lcom/b/a/s;
.super Landroid/content/BroadcastReceiver;
.source "Dispatcher.java"


# instance fields
.field final synthetic a:Lcom/b/a/o;

.field private final b:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/b/a/o;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lcom/b/a/s;->a:Lcom/b/a/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 281
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/b/a/s;->b:Landroid/net/ConnectivityManager;

    .line 282
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/b/a/s;->a:Lcom/b/a/o;

    iget-object v0, v0, Lcom/b/a/o;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/b/a/ao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/s;->a:Lcom/b/a/o;

    iget-object v0, v0, Lcom/b/a/o;->b:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/b/a/bd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 287
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    if-eqz v0, :cond_0

    .line 290
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/b/a/s;->a:Lcom/b/a/o;

    iget-object v0, v0, Lcom/b/a/o;->b:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/b/a/s;->a:Lcom/b/a/o;

    iget-object v0, v0, Lcom/b/a/o;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 301
    if-nez p2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 308
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    iget-object v0, p0, Lcom/b/a/s;->a:Lcom/b/a/o;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/o;->a(Z)V

    goto :goto_0

    .line 310
    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/b/a/s;->a:Lcom/b/a/o;

    iget-object v1, p0, Lcom/b/a/s;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/o;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method
