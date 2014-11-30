.class Lcom/apsalar/sdk/ApsalarSessionInfo;
.super Ljava/lang/Object;
.source "Apsalar.java"

# interfaces
.implements Lcom/apsalar/sdk/ApsalarJSON;


# instance fields
.field protected abi:Ljava/lang/String;

.field protected apiKey:Ljava/lang/String;

.field protected appName:Ljava/lang/String;

.field protected appVersion:Ljava/lang/String;

.field protected brand:Ljava/lang/String;

.field protected clsPackage:Ljava/lang/String;

.field protected connType:Ljava/lang/String;

.field protected device:Ljava/lang/String;

.field protected deviceId:Ljava/lang/String;

.field protected known_items:Lorg/json/JSONObject;

.field protected manufacturer:Ljava/lang/String;

.field protected model:Ljava/lang/String;

.field protected osVersion:Ljava/lang/String;

.field protected platform:Ljava/lang/String;

.field protected product:Ljava/lang/String;

.field protected retType:Ljava/lang/String;

.field protected sdkVersion:Ljava/lang/String;

.field protected secret:Ljava/lang/String;

.field protected sessionId:Ljava/lang/String;

.field protected sessionStart:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "Android"

    const-class v0, Landroid/os/Build;

    const-string v4, "unspecified"

    const-string v3, "unknown"

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    .line 592
    const-string v0, "4.0.2"

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sdkVersion:Ljava/lang/String;

    .line 642
    iput-object p2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->apiKey:Ljava/lang/String;

    .line 643
    iput-object p3, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->secret:Ljava/lang/String;

    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 646
    const-string v0, "Android"

    iput-object v6, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->platform:Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->clsPackage:Ljava/lang/String;

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->clsPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 656
    const-string v0, "unspecified"

    iput-object v4, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    .line 659
    :cond_0
    invoke-static {}, Lcom/apsalar/sdk/Apsalar;->getNewSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionId:Ljava/lang/String;

    .line 660
    const-string v0, "json"

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->retType:Ljava/lang/String;

    .line 662
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->connType:Ljava/lang/String;

    .line 663
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 664
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    const-string v0, "wwan"

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->connType:Ljava/lang/String;

    .line 669
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->clsPackage:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 679
    :goto_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->osVersion:Ljava/lang/String;

    .line 680
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->brand:Ljava/lang/String;

    .line 681
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->device:Ljava/lang/String;

    .line 683
    :try_start_2
    const-class v0, Landroid/os/Build;

    const-string v1, "CPU_ABI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/os/Build;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->abi:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 689
    :goto_2
    :try_start_3
    const-class v0, Landroid/os/Build;

    const-string v1, "MANUFACTURER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Landroid/os/Build;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->manufacturer:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 695
    :goto_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->model:Ljava/lang/String;

    .line 696
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->product:Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->abi:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->abi:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->abi:Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->platform:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->platform:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->platform:Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->clsPackage:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->clsPackage:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->clsPackage:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appVersion:Ljava/lang/String;

    :goto_7
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appVersion:Ljava/lang/String;

    .line 703
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    :goto_8
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionId:Ljava/lang/String;

    :goto_9
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionId:Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->retType:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->retType:Ljava/lang/String;

    :goto_a
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->retType:Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->connType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->connType:Ljava/lang/String;

    :goto_b
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->connType:Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appName:Ljava/lang/String;

    :goto_c
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appName:Ljava/lang/String;

    .line 708
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->osVersion:Ljava/lang/String;

    :goto_d
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->osVersion:Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->brand:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->brand:Ljava/lang/String;

    :goto_e
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->brand:Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->device:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->device:Ljava/lang/String;

    :goto_f
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->device:Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->manufacturer:Ljava/lang/String;

    :goto_10
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->manufacturer:Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->model:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->model:Ljava/lang/String;

    :goto_11
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->model:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->product:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->product:Ljava/lang/String;

    :goto_12
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->product:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sdkVersion:Ljava/lang/String;

    :goto_13
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sdkVersion:Ljava/lang/String;

    .line 715
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    const-string v0, "unknown"

    iput-object v3, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 673
    :catch_1
    move-exception v0

    .line 674
    const-string v0, "unknown"

    iput-object v3, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appName:Ljava/lang/String;

    goto/16 :goto_1

    .line 676
    :catch_2
    move-exception v0

    .line 677
    const-string v0, "unknown"

    iput-object v3, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appName:Ljava/lang/String;

    goto/16 :goto_1

    .line 685
    :catch_3
    move-exception v0

    .line 686
    const-string v0, "unknown"

    iput-object v3, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->abi:Ljava/lang/String;

    goto/16 :goto_2

    .line 692
    :catch_4
    move-exception v0

    .line 693
    const-string v0, "unknown"

    iput-object v3, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->manufacturer:Ljava/lang/String;

    goto/16 :goto_3

    .line 699
    :cond_2
    const-string v0, "unknown"

    move-object v0, v3

    goto/16 :goto_4

    .line 700
    :cond_3
    const-string v0, "Android"

    move-object v0, v6

    goto/16 :goto_5

    .line 701
    :cond_4
    const-string v0, "unknown"

    move-object v0, v3

    goto/16 :goto_6

    .line 702
    :cond_5
    const-string v0, "unknown"

    move-object v0, v3

    goto/16 :goto_7

    .line 703
    :cond_6
    const-string v0, "unspecified"

    move-object v0, v4

    goto/16 :goto_8

    .line 704
    :cond_7
    const-string v0, "unspecified"

    move-object v0, v4

    goto/16 :goto_9

    .line 705
    :cond_8
    const-string v0, "json"

    goto/16 :goto_a

    .line 706
    :cond_9
    const-string v0, "wifi"

    goto/16 :goto_b

    .line 707
    :cond_a
    const-string v0, "unknown"

    move-object v0, v3

    goto/16 :goto_c

    .line 708
    :cond_b
    const-string v0, "unknown"

    move-object v0, v3

    goto/16 :goto_d

    .line 709
    :cond_c
    const-string v0, "unknown"

    move-object v0, v3

    goto/16 :goto_e

    .line 710
    :cond_d
    const-string v0, "unknown"

    move-object v0, v3

    goto :goto_f

    .line 711
    :cond_e
    const-string v0, "unknown"

    move-object v0, v3

    goto :goto_10

    .line 712
    :cond_f
    const-string v0, "unknown"

    move-object v0, v3

    goto :goto_11

    .line 713
    :cond_10
    const-string v0, "unknown"

    move-object v0, v3

    goto :goto_12

    .line 714
    :cond_11
    const-string v0, "unspecified"

    move-object v0, v4

    goto :goto_13
.end method

.method protected constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-string v0, "appVersion"

    const-string v0, "appName"

    const-string v0, "abi"

    const-string v3, "unspecified"

    const-string v2, "unknown"

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    .line 592
    const-string v0, "4.0.2"

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sdkVersion:Ljava/lang/String;

    .line 598
    :try_start_0
    const-string v0, "sessionStart"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    .line 600
    iput-object p2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->apiKey:Ljava/lang/String;

    .line 601
    iput-object p3, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->secret:Ljava/lang/String;

    .line 603
    const-string v0, "abi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "abi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->abi:Ljava/lang/String;

    .line 604
    const-string v0, "platform"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "platform"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->platform:Ljava/lang/String;

    .line 606
    const-string v0, "clsPackage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "clsPackage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->clsPackage:Ljava/lang/String;

    .line 608
    const-string v0, "appVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "appVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appVersion:Ljava/lang/String;

    .line 610
    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    .line 612
    const-string v0, "sessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionId:Ljava/lang/String;

    .line 614
    const-string v0, "retType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "retType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->retType:Ljava/lang/String;

    .line 616
    const-string v0, "connType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "connType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->connType:Ljava/lang/String;

    .line 618
    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appName:Ljava/lang/String;

    .line 620
    const-string v0, "osVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "osVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->osVersion:Ljava/lang/String;

    .line 622
    const-string v0, "brand"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "brand"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->brand:Ljava/lang/String;

    .line 624
    const-string v0, "device"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "device"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->device:Ljava/lang/String;

    .line 626
    const-string v0, "manufacturer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "manufacturer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->manufacturer:Ljava/lang/String;

    .line 628
    const-string v0, "model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->model:Ljava/lang/String;

    .line 630
    const-string v0, "product"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "product"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->product:Ljava/lang/String;

    .line 632
    const-string v0, "sdkVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "sdkVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sdkVersion:Ljava/lang/String;

    .line 639
    :goto_10
    return-void

    .line 603
    :cond_0
    const-string v0, "unknown"

    move-object v0, v2

    goto/16 :goto_0

    .line 604
    :cond_1
    const-string v0, "Android"

    goto/16 :goto_1

    .line 606
    :cond_2
    const-string v0, "unknown"

    move-object v0, v2

    goto/16 :goto_2

    .line 608
    :cond_3
    const-string v0, "unknown"

    move-object v0, v2

    goto/16 :goto_3

    .line 610
    :cond_4
    const-string v0, "unspecified"

    move-object v0, v3

    goto/16 :goto_4

    .line 612
    :cond_5
    const-string v0, "unspecified"

    move-object v0, v3

    goto/16 :goto_5

    .line 614
    :cond_6
    const-string v0, "json"

    goto/16 :goto_6

    .line 616
    :cond_7
    const-string v0, "wifi"

    goto/16 :goto_7

    .line 618
    :cond_8
    const-string v0, "unknown"

    move-object v0, v2

    goto/16 :goto_8

    .line 620
    :cond_9
    const-string v0, "unknown"

    move-object v0, v2

    goto/16 :goto_9

    .line 622
    :cond_a
    const-string v0, "unknown"

    move-object v0, v2

    goto/16 :goto_a

    .line 624
    :cond_b
    const-string v0, "unknown"

    move-object v0, v2

    goto :goto_b

    .line 626
    :cond_c
    const-string v0, "unknown"

    move-object v0, v2

    goto :goto_c

    .line 628
    :cond_d
    const-string v0, "unknown"

    move-object v0, v2

    goto :goto_d

    .line 630
    :cond_e
    const-string v0, "unknown"

    move-object v0, v2

    goto :goto_e

    .line 632
    :cond_f
    const-string v0, "unspecified"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_f

    .line 635
    :catch_0
    move-exception v0

    goto :goto_10
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 718
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 721
    :try_start_0
    const-string v1, "sessionStart"

    iget-wide v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 723
    const-string v1, "apiKey"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v1, "secret"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v1, "abi"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->abi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v1, "platform"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v1, "clsPackage"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->clsPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string v1, "retType"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->retType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    const-string v1, "connType"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->connType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string v1, "appName"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    const-string v1, "osVersion"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v1, "brand"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    const-string v1, "device"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    const-string v1, "manufacturer"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    const-string v1, "model"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    const-string v1, "product"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->product:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    return-object v0

    .line 743
    :catch_0
    move-exception v1

    goto :goto_0
.end method
