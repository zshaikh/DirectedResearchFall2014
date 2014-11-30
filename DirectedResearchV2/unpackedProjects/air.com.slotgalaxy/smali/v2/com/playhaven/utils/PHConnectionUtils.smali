.class public Lv2/com/playhaven/utils/PHConnectionUtils;
.super Ljava/lang/Object;
.source "PHConnectionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionType(Landroid/content/Context;)Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    :try_start_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 21
    .local v1, "manager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 22
    sget-object v6, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_NETWORK:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    .line 44
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v6

    .line 24
    .restart local v1    # "manager":Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 25
    .local v3, "mobileInfo":Landroid/net/NetworkInfo;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 27
    .local v5, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    if-nez v5, :cond_2

    .line 28
    :cond_1
    sget-object v6, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_NETWORK:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 31
    .local v2, "mobile":Landroid/net/NetworkInfo$State;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 33
    .local v4, "wifi":Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v6, :cond_3

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v6, :cond_4

    .line 34
    :cond_3
    sget-object v6, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->MOBILE:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    goto :goto_0

    .line 36
    :cond_4
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v6, :cond_5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v6, :cond_6

    .line 37
    :cond_5
    sget-object v6, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->WIFI:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    .end local v2    # "mobile":Landroid/net/NetworkInfo$State;
    .end local v3    # "mobileInfo":Landroid/net/NetworkInfo;
    .end local v4    # "wifi":Landroid/net/NetworkInfo$State;
    .end local v5    # "wifiInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 41
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v6, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_PERMISSION:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "manager":Landroid/net/ConnectivityManager;
    .restart local v2    # "mobile":Landroid/net/NetworkInfo$State;
    .restart local v3    # "mobileInfo":Landroid/net/NetworkInfo;
    .restart local v4    # "wifi":Landroid/net/NetworkInfo$State;
    .restart local v5    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_6
    sget-object v6, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_NETWORK:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    goto :goto_0
.end method
