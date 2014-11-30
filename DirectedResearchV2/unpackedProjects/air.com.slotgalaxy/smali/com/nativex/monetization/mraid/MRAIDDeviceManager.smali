.class Lcom/nativex/monetization/mraid/MRAIDDeviceManager;
.super Ljava/lang/Object;
.source "MRAIDDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/MRAIDDeviceManager$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static checkCalendarSupportLevel(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;->deviceSupportsCalendarProvider(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkFeatureSupport(Landroid/app/Activity;Lcom/nativex/monetization/mraid/MRAIDUtils$Features;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "feature"    # Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    .prologue
    .line 40
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDDeviceManager$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$Features:[I

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkSupportForCalendar(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkSupportForInlineVideo(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkSupportForSMS(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_3
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkSupportForStorePicture(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_4
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkSupportForTel(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkSupportForCalendar(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 97
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 98
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 107
    :goto_0
    return-object v2

    .line 100
    :cond_0
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 101
    .local v1, "perm":Z
    if-eqz v1, :cond_1

    .line 102
    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 104
    .end local v1    # "perm":Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "perm":Z
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkSupportForInlineVideo(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 68
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_1

    .line 69
    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nativex/monetization/mraid/MRAIDWebView;->forceHardware:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 78
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v2

    .line 72
    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 74
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkSupportForSMS(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 84
    :try_start_0
    const-string v2, "android.permission.SEND_SMS"

    invoke-static {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 85
    .local v1, "perm":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 91
    .end local v1    # "perm":Z
    :goto_0
    return-object v2

    .line 88
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "perm":Z
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkSupportForStorePicture(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 113
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 114
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 116
    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkSupportForTel(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 125
    :try_start_0
    const-string v2, "android.permission.CALL_PHONE"

    invoke-static {p0, v2}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 126
    .local v1, "perm":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 132
    .end local v1    # "perm":Z
    :goto_0
    return-object v2

    .line 129
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "perm":Z
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkSupportLevel(Landroid/app/Activity;Lcom/nativex/monetization/mraid/MRAIDUtils$Features;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "features"    # Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    .prologue
    .line 138
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    if-ne p1, v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/nativex/monetization/mraid/MRAIDDeviceManager;->checkCalendarSupportLevel(Landroid/app/Activity;)I

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
