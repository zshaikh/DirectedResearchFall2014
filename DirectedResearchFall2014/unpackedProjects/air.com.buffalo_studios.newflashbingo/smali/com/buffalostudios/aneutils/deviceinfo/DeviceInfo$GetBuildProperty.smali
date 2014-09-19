.class public Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetBuildProperty;
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
    name = "GetBuildProperty"
.end annotation


# static fields
.field private static final BUILD_MANUFACTURER:I = 0x0

.field private static final BUILD_MODEL:I = 0x1

.field private static final BUILD_VERSION_RELEASE:I = 0x2

.field private static final BUILD_VERSION_SDK_INT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBuildProperty(I)Ljava/lang/String;
    .locals 1
    .parameter "propertyId"

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0

    .line 88
    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 95
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .parameter "context"
    .parameter "args"

    .prologue
    .line 65
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->getAsInt(Lcom/adobe/fre/FREObject;)I

    move-result v2

    .line 67
    .local v2, propertyId:I
    invoke-direct {p0, v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetBuildProperty;->getBuildProperty(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, property:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 69
    const/4 v4, 0x0

    .line 80
    :goto_0
    return-object v4

    .line 72
    :cond_0
    const/4 v3, 0x0

    .line 75
    .local v3, result:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 80
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v4, "ERROR: FREWrongThreadException in DeviceInfoGetBuildProperty#call"

    invoke-direct {p0, v4}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetBuildProperty;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method
