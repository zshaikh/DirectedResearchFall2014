.class public Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# static fields
.field private static final DEFAULT_NETWORK_STRENGTH:I = 0x2


# instance fields
.field private final androidContext:Landroid/content/Context;

.field private final freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

.field private gsmListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;

.field private telMgr:Landroid/telephony/TelephonyManager;

.field private wifiListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;

.field private wifiReceiverStickyIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/gamesys/android/common/tools/fwk/AbstractContext;)V
    .locals 1
    .param p1, "context"    # Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    .line 51
    invoke-virtual {p1}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->androidContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "noConnectivity":Z
    if-eqz p2, :cond_0

    .line 61
    const-string v2, "noConnectivity"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    :cond_0
    if-nez v1, :cond_5

    .line 67
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 68
    .local v0, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 111
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.gamesys.android.ane.tools.LEVEL_SIGNAL_STRENGTH_GSM"

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 72
    .restart local v0    # "ni":Landroid/net/NetworkInfo;
    :pswitch_0
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->gsmListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;

    if-nez v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->androidContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->telMgr:Landroid/telephony/TelephonyManager;

    .line 74
    new-instance v2, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;

    iget-object v3, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    iget-object v4, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->telMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;-><init>(Lcom/gamesys/android/common/tools/fwk/AbstractContext;I)V

    iput-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->gsmListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->telMgr:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->gsmListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 80
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;

    if-eqz v2, :cond_1

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->androidContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiReceiverStickyIntent:Landroid/content/Intent;

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->gsmListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;

    if-eqz v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->telMgr:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->gsmListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthGSMListener;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;

    if-nez v2, :cond_4

    .line 99
    new-instance v2, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;

    iget-object v3, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->androidContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    invoke-direct {v2, v3, v4}, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;-><init>(Landroid/content/Context;Lcom/gamesys/android/common/tools/fwk/AbstractContext;)V

    iput-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiReceiverStickyIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->androidContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiReceiverStickyIntent:Landroid/content/Intent;

    .line 105
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiListener:Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;

    iget-object v3, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->androidContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->wifiReceiverStickyIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/tools/ane/misc/network/SignalStrengthWifiReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    .end local v0    # "ni":Landroid/net/NetworkInfo;
    :cond_5
    iget-object v2, p0, Lcom/gamesys/android/tools/ane/misc/network/ConnectivityChangeReceiver;->freContext:Lcom/gamesys/android/common/tools/fwk/AbstractContext;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.gamesys.android.ane.tools.LEVEL_SIGNAL_STRENGTH_GSM"

    invoke-virtual {v2, v3, v4}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .restart local v0    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
