.class public Lcom/nativex/advertiser/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private androidDeviceID:Ljava/lang/String;

.field private androidID:Ljava/lang/String;

.field private androidSerialNumber:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private isHacked:Z

.field private macWlan:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private usingSdk:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nativex/advertiser/Device;->androidDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nativex/advertiser/Device;->androidID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nativex/advertiser/Device;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nativex/advertiser/Device;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nativex/advertiser/Device;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacWlan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nativex/advertiser/Device;->macWlan:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nativex/advertiser/Device;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isHacked()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/nativex/advertiser/Device;->isHacked:Z

    return v0
.end method

.method public isHackedAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/nativex/advertiser/Device;->isHacked:Z

    if-eqz v0, :cond_0

    const-string v0, "True"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "False"

    goto :goto_0
.end method

.method public isUsingSdk()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/nativex/advertiser/Device;->usingSdk:Z

    return v0
.end method

.method public setAndroidDeviceID(Ljava/lang/String;)V
    .locals 0
    .param p1, "androidDeviceID"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nativex/advertiser/Device;->androidDeviceID:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setAndroidID(Ljava/lang/String;)V
    .locals 0
    .param p1, "androidID"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nativex/advertiser/Device;->androidID:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/nativex/advertiser/Device;->deviceId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nativex/advertiser/Device;->deviceName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setHacked(Z)V
    .locals 0
    .param p1, "isHacked"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/nativex/advertiser/Device;->isHacked:Z

    .line 78
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/nativex/advertiser/Device;->ipAddress:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setMacWlan(Ljava/lang/String;)V
    .locals 0
    .param p1, "macWlan"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nativex/advertiser/Device;->macWlan:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nativex/advertiser/Device;->osVersion:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setUsingSdk(Z)V
    .locals 0
    .param p1, "usingSdk"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/nativex/advertiser/Device;->usingSdk:Z

    .line 123
    return-void
.end method
