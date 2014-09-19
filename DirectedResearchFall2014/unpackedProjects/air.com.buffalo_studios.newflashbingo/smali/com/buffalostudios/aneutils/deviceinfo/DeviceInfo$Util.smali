.class public Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsInt(Lcom/adobe/fre/FREObject;)I
    .locals 3
    .parameter "arg"

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 30
    .local v1, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 41
    :goto_0
    return v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "ERROR: IllegalStateException in DeviceInfoUtil#getAsInt"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, e:Lcom/adobe/fre/FRETypeMismatchException;
    const-string v2, "ERROR: FRETypeMismatchException in DeviceInfoUtil#getAsInt"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v0           #e:Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v0

    .line 36
    .local v0, e:Lcom/adobe/fre/FREInvalidObjectException;
    const-string v2, "ERROR: FREInvalidObjectException in DeviceInfoUtil#getAsInt"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    .end local v0           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v0

    .line 38
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v2, "ERROR: FREWrongThreadException in DeviceInfoUtil#getAsInt"

    invoke-static {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static onError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 46
    return-void
.end method
