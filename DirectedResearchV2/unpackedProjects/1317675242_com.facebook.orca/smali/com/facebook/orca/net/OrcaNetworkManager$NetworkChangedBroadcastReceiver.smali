.class Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OrcaNetworkManager.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/net/OrcaNetworkManager;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/net/OrcaNetworkManager;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;->a:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/net/OrcaNetworkManager$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;-><init>(Lcom/facebook/orca/net/OrcaNetworkManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 61
    const-string v0, "otherNetwork"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 63
    const-string v0, "isFailover"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 65
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;->a:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-static {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->a(Lcom/facebook/orca/net/OrcaNetworkManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 72
    :goto_0
    const-string v1, "orca:OrcaNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connectivity changed: connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    iget-object v2, p0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;->a:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-static {v2}, Lcom/facebook/orca/net/OrcaNetworkManager;->b(Lcom/facebook/orca/net/OrcaNetworkManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 80
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;->a:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-static {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->c(Lcom/facebook/orca/net/OrcaNetworkManager;)Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    move-result-object v0

    const-string v1, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->c(Ljava/lang/String;)V

    goto :goto_1
.end method
