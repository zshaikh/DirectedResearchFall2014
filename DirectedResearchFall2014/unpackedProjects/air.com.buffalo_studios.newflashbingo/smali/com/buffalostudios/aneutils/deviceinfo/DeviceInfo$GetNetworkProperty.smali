.class public Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetNetworkProperty;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetNetworkProperty"
.end annotation


# static fields
.field private static final IP_ADDRESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIPAddress()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v7, "N/A"

    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    if-nez v1, :cond_2

    .line 253
    const-string v6, "N/A"

    move-object v6, v7

    .line 280
    :goto_0
    return-object v6

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/net/SocketException;
    const-string v6, "N/A"

    move-object v6, v7

    goto :goto_0

    .line 262
    .end local v0           #e:Ljava/net/SocketException;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 265
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 267
    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_3

    .line 260
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_0

    .line 280
    const-string v6, "N/A"

    move-object v6, v7

    goto :goto_0

    .line 269
    .restart local v2       #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v4       #intf:Ljava/net/NetworkInterface;
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 272
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, ipv4:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    .line 275
    goto :goto_0
.end method

.method private getNetworkProperty(I)Ljava/lang/String;
    .locals 1
    .parameter "propertyId"

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    invoke-direct {p0}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetNetworkProperty;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 285
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .parameter "context"
    .parameter "args"

    .prologue
    .line 218
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->getAsInt(Lcom/adobe/fre/FREObject;)I

    move-result v2

    .line 220
    .local v2, propertyId:I
    invoke-direct {p0, v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetNetworkProperty;->getNetworkProperty(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, property:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 222
    const/4 v4, 0x0

    .line 233
    :goto_0
    return-object v4

    .line 225
    :cond_0
    const/4 v3, 0x0

    .line 228
    .local v3, result:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 233
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v4, "ERROR: FREWrongThreadException in DeviceInfoGetNetworkProperty#call"

    invoke-direct {p0, v4}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetNetworkProperty;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method
