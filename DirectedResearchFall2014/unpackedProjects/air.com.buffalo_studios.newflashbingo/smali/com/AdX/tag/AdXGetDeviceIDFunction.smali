.class public Lcom/AdX/tag/AdXGetDeviceIDFunction;
.super Ljava/lang/Object;
.source "AdXGetDeviceIDFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static AdX_PREFERENCE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "AdXPrefrences"

    sput-object v0, Lcom/AdX/tag/AdXGetDeviceIDFunction;->AdX_PREFERENCE:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 14
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 35
    const/4 v9, 0x0

    .line 37
    .local v9, "result":Lcom/adobe/fre/FREObject;
    const-string v12, "AdXGetDeviceIDFunction"

    const-string v13, "call"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/AdX/tag/AdXExtensionContext;

    move-object v3, v0

    .line 40
    .local v3, "adxExtContext":Lcom/AdX/tag/AdXExtensionContext;
    invoke-virtual {v3}, Lcom/AdX/tag/AdXExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 41
    .local v2, "a":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    .local v1, "_context":Landroid/content/Context;
    sget-object v12, Lcom/AdX/tag/AdXGetDeviceIDFunction;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 43
    .local v10, "settings":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 46
    .local v5, "deviceID":Ljava/lang/String;
    :try_start_0
    const-string v12, "phone"

    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 48
    .local v11, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_0

    .line 50
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 53
    :cond_0
    const/4 v8, 0x0

    .line 58
    .local v8, "invalidDeviceID":Z
    if-nez v5, :cond_2

    .line 60
    const/4 v8, 0x1

    .line 80
    :goto_0
    if-eqz v8, :cond_1

    .line 82
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v4, "buff":Ljava/lang/StringBuffer;
    const-string v12, "EMULATOR"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v12, "emulatorDeviceId"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "deviceId":Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v12, ""

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 89
    move-object v5, v6

    .line 96
    .end local v4    # "buff":Ljava/lang/StringBuffer;
    .end local v6    # "deviceId":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v9

    .line 100
    .end local v8    # "invalidDeviceID":Z
    .end local v11    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_2
    return-object v9

    .line 66
    .restart local v8    # "invalidDeviceID":Z
    .restart local v11    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "000000000000000"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "0"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 68
    :cond_3
    const/4 v8, 0x1

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 92
    .restart local v4    # "buff":Ljava/lang/StringBuffer;
    .restart local v6    # "deviceId":Ljava/lang/String;
    :cond_5
    const-string v5, "TabletANON"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    .end local v4    # "buff":Ljava/lang/StringBuffer;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v8    # "invalidDeviceID":Z
    .end local v11    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v12

    move-object v7, v12

    .local v7, "e":Ljava/lang/Exception;
    const-string v12, "AdXFunction"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
