.class public Lcom/bitrhymes/nativeutils/functions/GetRawMacAddress;
.super Ljava/lang/Object;
.source "GetRawMacAddress.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v8, ","

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 19
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 20
    .local v3, "wInfo":Landroid/net/wifi/WifiInfo;
    const-string v2, ""

    .line 21
    .local v2, "macAddress":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, "deviceInfoObject":Lcom/adobe/fre/FREObject;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 25
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 32
    .end local v0    # "deviceInfoObject":Lcom/adobe/fre/FREObject;
    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v3    # "wInfo":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    return-object v5

    .line 27
    .restart local v0    # "deviceInfoObject":Lcom/adobe/fre/FREObject;
    .restart local v2    # "macAddress":Ljava/lang/String;
    .restart local v3    # "wInfo":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v5, ""

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 29
    .end local v0    # "deviceInfoObject":Lcom/adobe/fre/FREObject;
    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v3    # "wInfo":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 30
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ERROR_EVENT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/bitrhymes/nativeutils/utils/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v5, 0x0

    goto :goto_1
.end method
