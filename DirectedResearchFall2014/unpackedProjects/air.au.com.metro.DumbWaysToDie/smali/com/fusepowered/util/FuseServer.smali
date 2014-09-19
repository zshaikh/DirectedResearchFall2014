.class public Lcom/fusepowered/util/FuseServer;
.super Ljava/lang/Object;
.source "FuseServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/util/FuseServer$1;,
        Lcom/fusepowered/util/FuseServer$SERVER_NAMES;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static getAdServerHostUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const-string v0, ""

    .line 67
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v2, Lcom/fusepowered/fuseapi/Constants;->FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    const-string v0, "http://ads.staging.fusepowered.com/analytics.php?"

    .line 70
    goto :goto_0

    .line 72
    :pswitch_1
    const-string v0, "http://ads.fusepowered.com/analytics.php?"

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAnalyticsHostUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13
    const-string v0, ""

    .line 14
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v2, Lcom/fusepowered/fuseapi/Constants;->FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 22
    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    const-string v0, "http://api.staging.fusepowered.com/analytics.php?"

    .line 17
    goto :goto_0

    .line 19
    :pswitch_1
    const-string v0, "http://analytics.fusepowered.com/analytics.php?"

    goto :goto_0

    .line 14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDataServerHostUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    const-string v0, ""

    .line 41
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v2, Lcom/fusepowered/fuseapi/Constants;->FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    const-string v0, "http://data.staging.fusepowered.com/analytics.php?"

    .line 44
    goto :goto_0

    .line 46
    :pswitch_1
    const-string v0, "http://data.fusepowered.com/analytics.php?"

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMoreGamesCloseImage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    const-string v0, ""

    .line 93
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v2, Lcom/fusepowered/fuseapi/Constants;->FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    const-string v0, "http://games.staging.fusepowered.com/android/images/btn_iphone_l_close.png"

    .line 96
    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "http://games.fusepowered.com/android/images/btn_iphone_l_close.png"

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMoreGamesHostUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    const-string v0, ""

    .line 80
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v2, Lcom/fusepowered/fuseapi/Constants;->FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    const-string v0, "http://games.staging.fusepowered.com/"

    .line 83
    goto :goto_0

    .line 85
    :pswitch_1
    const-string v0, "http://games.fusepowered.com/"

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getScarfaceHostUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    const-string v0, ""

    .line 54
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v2, Lcom/fusepowered/fuseapi/Constants;->FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 62
    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    const-string v0, "http://data.staging.fusepowered.com/analytics.php?"

    .line 57
    goto :goto_0

    .line 59
    :pswitch_1
    const-string v0, "http://scarface.fusepowered.com/analytics.php?"

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getServerHostUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    const-string v0, ""

    .line 27
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v2, Lcom/fusepowered/fuseapi/Constants;->FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v2}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 36
    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    const-string v0, "http://api.staging.fusepowered.com/analytics.php?"

    .line 31
    goto :goto_0

    .line 33
    :pswitch_1
    const-string v0, "http://api.fusepowered.com/analytics.php?"

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
