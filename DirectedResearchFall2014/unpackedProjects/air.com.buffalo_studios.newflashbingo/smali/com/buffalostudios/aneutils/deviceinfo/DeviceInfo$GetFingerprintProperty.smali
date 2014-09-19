.class public Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetFingerprintProperty;
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
    name = "GetFingerprintProperty"
.end annotation


# static fields
.field private static final VENDOR_ID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFingerprintProperty(I)Ljava/lang/String;
    .locals 1
    .parameter "propertyId"

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 199
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    invoke-direct {p0}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetFingerprintProperty;->getVendorId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getVendorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string v0, "N/A"

    return-object v0
.end method

.method private onError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 210
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .parameter "context"
    .parameter "args"

    .prologue
    .line 178
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->getAsInt(Lcom/adobe/fre/FREObject;)I

    move-result v2

    .line 180
    .local v2, propertyId:I
    invoke-direct {p0, v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetFingerprintProperty;->getFingerprintProperty(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, property:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 182
    const/4 v4, 0x0

    .line 193
    :goto_0
    return-object v4

    .line 185
    :cond_0
    const/4 v3, 0x0

    .line 188
    .local v3, result:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 193
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Lcom/adobe/fre/FREWrongThreadException;
    const-string v4, "ERROR: FREWrongThreadException in DeviceInfoGetFingerprintProperty#call"

    invoke-direct {p0, v4}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetFingerprintProperty;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method
