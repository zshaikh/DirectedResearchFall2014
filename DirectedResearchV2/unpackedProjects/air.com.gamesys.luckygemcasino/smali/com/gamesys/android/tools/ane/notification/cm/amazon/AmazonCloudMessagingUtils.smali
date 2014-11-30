.class public Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;
.super Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;
.source "AmazonCloudMessagingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;-><init>()V

    return-void
.end method

.method public static checkServices(Lcom/gamesys/android/tools/ane/ToolsContext;)Z
    .locals 5
    .param p0, "ctx"    # Lcom/gamesys/android/tools/ane/ToolsContext;

    .prologue
    const/16 v3, 0xf

    const/4 v1, 0x0

    .line 65
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_0

    .line 66
    const-string v2, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR_DEVICE_NOT_SUPPORTED"

    const-string v3, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p0, v2, v3}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OS too old ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") should be at least "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    const-string v4, ". ADM won\'t be supported on this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return v1

    .line 72
    :cond_0
    const-string v2, "com.amazon.device.messaging.ADM"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR_DEVICE_NOT_SUPPORTED"

    const-string v3, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p0, v2, v3}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->TAG:Ljava/lang/String;

    const-string v3, "ADM messaging class has not been found. ADM won\'t be supported on this device"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static register(Ljava/lang/String;Lcom/gamesys/android/tools/ane/ToolsContext;)Z
    .locals 6
    .param p0, "senderId"    # Ljava/lang/String;
    .param p1, "context"    # Lcom/gamesys/android/tools/ane/ToolsContext;

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, "regId":Ljava/lang/String;
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying to register for this Amazon sender ID: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->checkServices(Lcom/gamesys/android/tools/ane/ToolsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-virtual {p1}, Lcom/gamesys/android/tools/ane/ToolsContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "adm":Lcom/amazon/device/messaging/ADM;
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "adm":Lcom/amazon/device/messaging/ADM;
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->cmEnabled:Z

    return v3

    .line 42
    .restart local v0    # "adm":Lcom/amazon/device/messaging/ADM;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/gamesys/android/tools/ane/ToolsContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    sput-boolean v3, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->cmEnabled:Z

    .line 44
    const-string v3, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION_ID"

    invoke-virtual {p1, v2, v3}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 47
    .end local v0    # "adm":Lcom/amazon/device/messaging/ADM;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e1":Ljava/lang/Throwable;
    sget-object v3, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to register for ADM"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v3, 0x0

    sput-boolean v3, Lcom/gamesys/android/tools/ane/notification/cm/amazon/AmazonCloudMessagingUtils;->cmEnabled:Z

    .line 51
    const-string v3, "com.gamesys.android.ane.tools.CODE_CLOUD_MESSAGING_ERROR_DEVICE_NOT_SUPPORTED"

    const-string v4, "com.gamesys.android.ane.tools.LEVEL_CLOUD_MESSAGING_REGISTRATION"

    invoke-virtual {p1, v3, v4}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
