.class public Lcom/inmobi/androidsdk/ai/controller/util/IMSDKUtil;
.super Ljava/lang/Object;
.source "IMSDKUtil.java"


# static fields
.field public static final BROWSER_ACTIVITY:Ljava/lang/String; = "com.inmobi.androidsdk.IMBrowserActivity"

.field public static final DEFAULT_SLOTID:J = -0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRootActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 125
    return-object v0

    .line 123
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public static validateAdConfiguration(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;
        }
    .end annotation

    .prologue
    const-string v2, "Please take the latest version of IMCommons"

    const-string v4, "InMobiAndroidSDK_3.6.2"

    .line 35
    invoke-static {}, Lcom/inmobi/commons/IMCommonUtil;->getReleaseVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.6.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "Please take the latest version of IMCommons"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please take the latest version of IMCommons"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "InMobiAndroidSDK_3.6.2"

    const-string v0, "App does not have INTERNET permissions. Please provide INTERNET permissions"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;-><init>(I)V

    throw v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const/high16 v2, 0x10000

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 61
    :goto_0
    if-nez v0, :cond_4

    .line 62
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 63
    const-string v0, "IMBrowserActivity not declared in the manifest. Please declare it in the app manifest"

    .line 62
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;

    .line 65
    const/4 v1, -0x2

    .line 64
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;-><init>(I)V

    throw v0

    .line 53
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 54
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.inmobi.androidsdk.IMBrowserActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 56
    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 70
    if-nez v0, :cond_5

    .line 71
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 72
    const-string v0, "IMBrowserActivity in the manifest does not have android:configChanges attributes.Please add android:configChanges=keyboardHidden|orientation|keyboard|screenSize|smallestScreenSize to IMBrowserActivity in the app manifest"

    .line 71
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;

    .line 74
    const/4 v1, -0x3

    .line 73
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;-><init>(I)V

    throw v0

    .line 76
    :cond_5
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_6

    .line 77
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 78
    const-string v0, "Missing Config keyboard from android:configChangesof IMBRowserActivity"

    .line 77
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;

    .line 80
    const/4 v1, -0x4

    .line 79
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;-><init>(I)V

    throw v0

    .line 81
    :cond_6
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_7

    .line 82
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 83
    const-string v0, "Missing Config keyboardHidden from android:configChangesof IMBRowserActivity"

    .line 82
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;

    .line 85
    const/4 v1, -0x5

    .line 84
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;-><init>(I)V

    throw v0

    .line 86
    :cond_7
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_8

    .line 87
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 88
    const-string v0, "Missing Config orientation from android:configChangesof IMBRowserActivity"

    .line 87
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;

    .line 90
    const/4 v1, -0x6

    .line 89
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;-><init>(I)V

    throw v0

    .line 93
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    const/16 v2, 0xd

    if-lt v1, v2, :cond_a

    .line 96
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_9

    .line 97
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 98
    const-string v0, "Missing Config screenSize from android:configChangesof IMBRowserActivity"

    .line 97
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;

    .line 100
    const/4 v1, -0x7

    .line 99
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;-><init>(I)V

    throw v0

    .line 101
    :cond_9
    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_a

    .line 102
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 103
    const-string v0, "Missing Config smallestScreenSize from android:configChanges of IMBRowserActivity"

    .line 102
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;

    .line 105
    const/4 v1, -0x8

    .line 104
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;-><init>(I)V

    throw v0

    .line 108
    :cond_a
    return-void
.end method

.method public static validateAppID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "APP ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APP ID cannot be empty.Please provide a valid APP ID. If APP ID is declared in the layout XML, please provide a valid \'appId\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, appId=\"yourAppId\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    return-void
.end method
