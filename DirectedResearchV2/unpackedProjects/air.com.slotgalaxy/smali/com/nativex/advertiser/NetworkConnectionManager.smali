.class public Lcom/nativex/advertiser/NetworkConnectionManager;
.super Ljava/lang/Object;
.source "NetworkConnectionManager.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static instance:Lcom/nativex/advertiser/NetworkConnectionManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to initialize NetworkConnectionManager"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/nativex/advertiser/NetworkConnectionManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->instance:Lcom/nativex/advertiser/NetworkConnectionManager;

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nativex/advertiser/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/nativex/advertiser/NetworkConnectionManager;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/advertiser/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/nativex/advertiser/NetworkConnectionManager;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->instance:Lcom/nativex/advertiser/NetworkConnectionManager;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nativex/advertiser/NetworkConnectionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->instance:Lcom/nativex/advertiser/NetworkConnectionManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/nativex/advertiser/NetworkConnectionManager;

    invoke-direct {v0, p0}, Lcom/nativex/advertiser/NetworkConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->instance:Lcom/nativex/advertiser/NetworkConnectionManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->instance:Lcom/nativex/advertiser/NetworkConnectionManager;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    sput-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->instance:Lcom/nativex/advertiser/NetworkConnectionManager;

    .line 186
    sput-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;

    .line 187
    return-void
.end method


# virtual methods
.method public checkWifiAccessPermissions()Z
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "Permission ACCESS_WIFI_STATE is unavailable."

    invoke-static {v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 122
    const-string v0, "Unable to access MAC Address."

    invoke-static {v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/nativex/advertiser/NetworkConnectionManager;->checkWifiAccessPermissions()Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    const/4 v3, 0x0

    .line 150
    :goto_0
    return-object v3

    .line 140
    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, "returnMacAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nativex/advertiser/NetworkConnectionManager;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 144
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 145
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    move-object v3, v1

    .line 150
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught in getMacAddress module: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 7

    .prologue
    .line 159
    const/4 v3, 0x0

    .line 161
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p0}, Lcom/nativex/advertiser/NetworkConnectionManager;->checkWifiAccessPermissions()Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    const/4 v5, 0x0

    .line 181
    :goto_0
    return-object v5

    .line 166
    :cond_0
    :try_start_0
    sget-object v5, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 168
    .local v2, "nInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 169
    sget-object v5, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 170
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_2

    .line 171
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .end local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "nInfo":Landroid/net/NetworkInfo;
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    move-object v5, v3

    .line 181
    goto :goto_0

    .line 173
    .restart local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .restart local v2    # "nInfo":Landroid/net/NetworkInfo;
    .restart local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v5, "Wifi Connectivity Status: WIFI NOT PRESENT"

    invoke-static {v5}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v3, 0x0

    goto :goto_1

    .line 177
    .end local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "nInfo":Landroid/net/NetworkInfo;
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught in getWifiInfo module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 179
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    .line 95
    const/4 v2, 0x0

    .line 98
    .local v2, "isConnected":Z
    :try_start_0
    sget-object v3, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 100
    .local v0, "connectionMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v2, 0x1

    .line 113
    .end local v0    # "connectionMgr":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    .line 105
    .restart local v0    # "connectionMgr":Landroid/net/ConnectivityManager;
    :cond_1
    const-string v3, "The connection manager is not currently available."

    invoke-static {v3}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "connectionMgr":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Exception caught in NetworkCommunicationManager.isConnected() "

    invoke-static {v3, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    const-string v3, "The connection manager is not currently available.  Unable to establish a network connection."

    invoke-static {v3}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isConnectedToCellular()Z
    .locals 6

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 80
    .local v2, "isCellular":Z
    :try_start_0
    sget-object v4, Lcom/nativex/advertiser/NetworkConnectionManager;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 82
    .local v3, "nInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 83
    const/4 v2, 0x1

    .line 88
    .end local v0    # "conMgr":Landroid/net/ConnectivityManager;
    .end local v3    # "nInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 85
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught in DeviceData in isCellular Module:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isOnWiFi()Z
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/advertiser/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/nativex/advertiser/NetworkConnectionManager;

    move-result-object v0

    .line 71
    .local v0, "ncm":Lcom/nativex/advertiser/NetworkConnectionManager;
    invoke-virtual {v0}, Lcom/nativex/advertiser/NetworkConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nativex/advertiser/NetworkConnectionManager;->isConnectedToCellular()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 74
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
