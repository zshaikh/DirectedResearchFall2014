.class public Lcom/voxel/sdk/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/Config$1;,
        Lcom/voxel/sdk/Config$Orientation;,
        Lcom/voxel/sdk/Config$DeviceType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getDeviceType()Lcom/voxel/sdk/Config$DeviceType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/voxel/sdk/Config$DeviceType;->PHONE:Lcom/voxel/sdk/Config$DeviceType;

    return-object v0
.end method

.method public static getFormFactor()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 21
    sget-object v0, Lcom/voxel/sdk/Config$1;->$SwitchMap$com$voxel$sdk$Config$DeviceType:[I

    invoke-static {}, Lcom/voxel/sdk/Config;->getDeviceType()Lcom/voxel/sdk/Config$DeviceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/sdk/Config$DeviceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 27
    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    .line 23
    goto :goto_0

    .line 25
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "google_play"

    return-object v0
.end method
