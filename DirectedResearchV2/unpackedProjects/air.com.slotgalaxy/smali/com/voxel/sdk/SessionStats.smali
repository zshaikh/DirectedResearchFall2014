.class public Lcom/voxel/sdk/SessionStats;
.super Ljava/lang/Object;
.source "SessionStats.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private startTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/sdk/SessionStats;->data:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/sdk/SessionStats;->startTimes:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/voxel/sdk/SessionStats;->context:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Lcom/voxel/sdk/SessionStats;->recordDeviceInfo()V

    .line 27
    return-void
.end method


# virtual methods
.method protected finishTimerFor(Ljava/lang/String;)V
    .locals 7
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v3, p0, Lcom/voxel/sdk/SessionStats;->startTimes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 35
    .local v2, "startTime":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 38
    .local v0, "delta":J
    iget-object v3, p0, Lcom/voxel/sdk/SessionStats;->data:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 80
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 81
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 84
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/voxel/sdk/SessionStats;->data:Ljava/util/Map;

    return-object v0
.end method

.method protected recordDeviceInfo()V
    .locals 10

    .prologue
    const-string v7, "ssid"

    const-string v9, "connectivity"

    .line 42
    iget-object v7, p0, Lcom/voxel/sdk/SessionStats;->context:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 46
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 49
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v3, :cond_0

    .line 76
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 51
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "connectivity":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "subtype":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_1
    iget-object v7, p0, Lcom/voxel/sdk/SessionStats;->data:Ljava/util/Map;

    const-string v8, "connectivity"

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 58
    iget-object v7, p0, Lcom/voxel/sdk/SessionStats;->context:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 60
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 61
    .local v0, "connectionInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 62
    iget-object v7, p0, Lcom/voxel/sdk/SessionStats;->data:Ljava/util/Map;

    const-string v8, "ssid"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "connectionInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "connectivity":Ljava/lang/String;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "subtype":Ljava/lang/String;
    .end local v6    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/voxel/sdk/SessionStats;->data:Ljava/util/Map;

    const-string v8, "device_name"

    invoke-virtual {p0}, Lcom/voxel/sdk/SessionStats;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .restart local v1    # "connectivity":Ljava/lang/String;
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v4    # "subtype":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_2

    .line 66
    iget-object v7, p0, Lcom/voxel/sdk/SessionStats;->context:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 68
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/voxel/sdk/SessionStats;->data:Ljava/util/Map;

    const-string v8, "ssid"

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 70
    .end local v1    # "connectivity":Ljava/lang/String;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "subtype":Ljava/lang/String;
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method protected startTimerFor(Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/voxel/sdk/SessionStats;->startTimes:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
