.class public Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SignalStrengthWifiReceiver.java"


# instance fields
.field private final freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

.field private final wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gamesys/android/common/tools/fwk/AbstractContext;)V
    .locals 1
    .param p1, "androidContext"    # Landroid/content/Context;
    .param p2, "freContext"    # Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 38
    iput-object p2, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    iget-object v6, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 44
    .local v4, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v6, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 47
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 48
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "bssid":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 64
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 52
    .restart local v0    # "bssid":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 53
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v6, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    iget v6, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getDbmToZeroFour(I)I

    move-result v5

    .line 56
    .local v5, "zeroFourLevel":I
    const-string v6, "wifi-receiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "RAW Strength is : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v6, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.gamesys.android.ane.tools.LEVEL_SIGNAL_STRENGTH_WIFI"

    invoke-virtual {v6, v7, v8}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    .end local v5    # "zeroFourLevel":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_3
    iget-object v6, p0, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.gamesys.android.ane.tools.LEVEL_SIGNAL_STRENGTH_WIFI"

    invoke-virtual {v6, v7, v8}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
