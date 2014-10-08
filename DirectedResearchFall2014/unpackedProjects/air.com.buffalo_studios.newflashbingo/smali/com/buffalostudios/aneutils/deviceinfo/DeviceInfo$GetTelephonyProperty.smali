.class public Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetTelephonyProperty;
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
    name = "GetTelephonyProperty"
.end annotation


# static fields
.field private static final TELEPHONY_NETWORK_OPERATOR:I = 0x0

.field private static final TELEPHONY_NETWORK_TYPE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNetworkOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 333
    .local v0, "networkType":I
    packed-switch v0, :pswitch_data_0

    .line 350
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 334
    :pswitch_0
    const-string v1, "1xRTT"

    goto :goto_0

    .line 335
    :pswitch_1
    const-string v1, "CDMA"

    goto :goto_0

    .line 336
    :pswitch_2
    const-string v1, "EDGE"

    goto :goto_0

    .line 337
    :pswitch_3
    const-string v1, "eHRPD"

    goto :goto_0

    .line 338
    :pswitch_4
    const-string v1, "EVDO revision 0"

    goto :goto_0

    .line 339
    :pswitch_5
    const-string v1, "EVDO revision A"

    goto :goto_0

    .line 340
    :pswitch_6
    const-string v1, "EVDO revision B"

    goto :goto_0

    .line 341
    :pswitch_7
    const-string v1, "GPRS"

    goto :goto_0

    .line 342
    :pswitch_8
    const-string v1, "HSDPA"

    goto :goto_0

    .line 343
    :pswitch_9
    const-string v1, "HSPA"

    goto :goto_0

    .line 344
    :pswitch_a
    const-string v1, "HSPA+"

    goto :goto_0

    .line 345
    :pswitch_b
    const-string v1, "HSUPA"

    goto :goto_0

    .line 346
    :pswitch_c
    const-string v1, "iDen"

    goto :goto_0

    .line 347
    :pswitch_d
    const-string v1, "LTE"

    goto :goto_0

    .line 348
    :pswitch_e
    const-string v1, "UMTS"

    goto :goto_0

    .line 349
    :pswitch_f
    const-string v1, "Unknown"

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method private getTelephonyProperty(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "propertyId"    # I

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 319
    packed-switch p2, :pswitch_data_0

    .line 322
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 320
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetTelephonyProperty;->getNetworkOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetTelephonyProperty;->getNetworkType(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 356
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x0

    .line 294
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-static {v5}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Util;->getAsInt(Lcom/adobe/fre/FREObject;)I

    move-result v2

    .line 296
    .local v2, "propertyId":I
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 297
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_0

    move-object v5, v7

    .line 314
    :goto_0
    return-object v5

    .line 301
    :cond_0
    invoke-direct {p0, v4, v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetTelephonyProperty;->getTelephonyProperty(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "property":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v5, v7

    .line 303
    goto :goto_0

    .line 306
    :cond_1
    const/4 v3, 0x0

    .line 309
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    move-object v5, v3

    .line 314
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    const-string v5, "ERROR: FREWrongThreadException in DeviceInfoGetTelephonyProperty#call"

    invoke-direct {p0, v5}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetTelephonyProperty;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method
