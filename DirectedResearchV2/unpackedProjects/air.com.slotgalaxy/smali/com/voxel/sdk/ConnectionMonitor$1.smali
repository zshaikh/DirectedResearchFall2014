.class Lcom/voxel/sdk/ConnectionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/sdk/ConnectionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/sdk/ConnectionMonitor;


# direct methods
.method constructor <init>(Lcom/voxel/sdk/ConnectionMonitor;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/voxel/sdk/ConnectionMonitor$1;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 57
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 60
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/voxel/sdk/ConnectionMonitor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Network changed, connectable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/voxel/sdk/ConnectionMonitor$1;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/voxel/sdk/ConnectionMonitor;->access$200(Lcom/voxel/sdk/ConnectionMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$1;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivityRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/voxel/sdk/ConnectionMonitor;->access$100(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v2, p0, Lcom/voxel/sdk/ConnectionMonitor$1;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/voxel/sdk/ConnectionMonitor;->access$200(Lcom/voxel/sdk/ConnectionMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/sdk/ConnectionMonitor$1;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivityRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/voxel/sdk/ConnectionMonitor;->access$100(Lcom/voxel/sdk/ConnectionMonitor;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    iget-object v2, p0, Lcom/voxel/sdk/ConnectionMonitor$1;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-virtual {v2}, Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivity()V

    goto :goto_0

    .line 67
    :cond_1
    # getter for: Lcom/voxel/sdk/ConnectionMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/voxel/sdk/ConnectionMonitor;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Network disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/voxel/sdk/ConnectionMonitor$1;->this$0:Lcom/voxel/sdk/ConnectionMonitor;

    const/4 v3, 0x0

    # setter for: Lcom/voxel/sdk/ConnectionMonitor;->isConnectable:Z
    invoke-static {v2, v3}, Lcom/voxel/sdk/ConnectionMonitor;->access$302(Lcom/voxel/sdk/ConnectionMonitor;Z)Z

    goto :goto_0
.end method
