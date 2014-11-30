.class public Lcom/playhaven/src/common/PHConfig;
.super Ljava/lang/Object;
.source "PHConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHConfig$ConnectionType;
    }
.end annotation


# static fields
.field public static final JSON_CONFIG:Ljava/lang/String; = "{\n   \"prod\":{\n      \"api\":\"http://api2.playhaven.com\",\n      \"precache\":true,\n      \"protocol\":4,\n      \"urgency_level\":\"low\"\n   },\n   \"dev\":null\n}"

.field public static api:Ljava/lang/String;

.field public static app_package:Ljava/lang/String;

.field public static app_version:Ljava/lang/String;

.field public static available_screen_size:Landroid/graphics/Rect;

.field public static cache:Z

.field public static connection:Lcom/playhaven/src/common/PHConfig$ConnectionType;

.field public static device_id:Ljava/lang/String;

.field public static device_model:Ljava/lang/String;

.field public static device_size:I

.field public static environment:Ljava/lang/String;

.field public static os_name:Ljava/lang/String;

.field public static os_version:I

.field public static password:Ljava/lang/String;

.field public static precache:Z

.field public static precache_size:I

.field public static protocol:I

.field public static runningTests:Z

.field public static screen_density:F

.field public static screen_density_type:I

.field public static screen_size:Landroid/graphics/Rect;

.field public static screen_size_type:I

.field public static sdk_version:Ljava/lang/String;

.field public static secret:Ljava/lang/String;

.field public static token:Ljava/lang/String;

.field public static urgency_level:Ljava/lang/String;

.field public static username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    .line 34
    invoke-static {}, Lcom/playhaven/src/common/PHSDKVersion;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/playhaven/src/common/PHConfig;->sdk_version:Ljava/lang/String;

    .line 36
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    .line 38
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->os_name:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->device_id:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->device_model:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->api:Ljava/lang/String;

    .line 50
    sput-object v3, Lcom/playhaven/src/common/PHConfig;->username:Ljava/lang/String;

    .line 52
    sput-object v3, Lcom/playhaven/src/common/PHConfig;->password:Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/playhaven/src/common/PHConfig;->protocol:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/playhaven/src/common/PHConfig;->screen_size:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/playhaven/src/common/PHConfig;->available_screen_size:Landroid/graphics/Rect;

    .line 70
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->urgency_level:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->app_package:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->app_version:Ljava/lang/String;

    .line 78
    const/high16 v0, 0x800000

    sput v0, Lcom/playhaven/src/common/PHConfig;->precache_size:I

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/playhaven/src/common/PHConfig;->precache:Z

    .line 82
    sput-boolean v1, Lcom/playhaven/src/common/PHConfig;->runningTests:Z

    .line 84
    const-string v0, "prod"

    sput-object v0, Lcom/playhaven/src/common/PHConfig;->environment:Ljava/lang/String;

    .line 154
    const-string v0, "{\n   \"prod\":{\n      \"api\":\"http://api2.playhaven.com\",\n      \"precache\":true,\n      \"protocol\":4,\n      \"urgency_level\":\"low\"\n   },\n   \"dev\":null\n}"

    sget-object v1, Lcom/playhaven/src/common/PHConfig;->environment:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/playhaven/src/common/PHConfig;->loadConfig(Ljava/lang/String;Ljava/lang/String;)V

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

.method public static cacheDeviceInfo(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply a valid Context when extracting device info"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 106
    .local v2, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/playhaven/src/common/PHConfig;->app_package:Ljava/lang/String;

    .line 108
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/playhaven/src/common/PHConfig;->app_version:Ljava/lang/String;

    .line 110
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v3, Lcom/playhaven/src/common/PHConfig;->os_name:Ljava/lang/String;

    .line 112
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v3, Lcom/playhaven/src/common/PHConfig;->os_version:I

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 116
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Lcom/playhaven/src/common/PHConfig;->screen_size:Landroid/graphics/Rect;

    .line 118
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v3, Lcom/playhaven/src/common/PHConfig;->screen_density_type:I

    .line 120
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/playhaven/src/common/PHConfig;->screen_density:F

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    sput v3, Lcom/playhaven/src/common/PHConfig;->device_size:I

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/playhaven/src/common/PHConfig;->device_id:Ljava/lang/String;

    .line 126
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v3, Lcom/playhaven/src/common/PHConfig;->device_model:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/playhaven/src/common/PHSDKVersion;->getCurrentVersion()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/playhaven/src/common/PHConfig;->sdk_version:Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcom/playhaven/src/common/PHConnectionManager;->getConnectionType(Landroid/content/Context;)Lcom/playhaven/src/common/PHConfig$ConnectionType;

    move-result-object v3

    sput-object v3, Lcom/playhaven/src/common/PHConfig;->connection:Lcom/playhaven/src/common/PHConfig$ConnectionType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public static loadConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "jsonConfig"    # Ljava/lang/String;
    .param p1, "environment"    # Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v2, "environments":Lorg/json/JSONObject;
    if-nez p1, :cond_1

    const-string v6, "prod"

    :goto_0
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 172
    .local v0, "config":Lorg/json/JSONObject;
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 174
    const/4 v4, 0x0

    .line 175
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 178
    .local v5, "keys":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 207
    .end local v0    # "config":Lorg/json/JSONObject;
    .end local v2    # "environments":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;
    :cond_0
    :goto_2
    return-void

    .restart local v2    # "environments":Lorg/json/JSONObject;
    :cond_1
    move-object v6, p1

    .line 170
    goto :goto_0

    .line 179
    .restart local v0    # "config":Lorg/json/JSONObject;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keys":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "key":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .restart local v4    # "key":Ljava/lang/String;
    :try_start_1
    const-class v6, Lcom/playhaven/src/common/PHConfig;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 183
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 185
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 187
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 203
    .end local v0    # "config":Lorg/json/JSONObject;
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .end local v2    # "environments":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 204
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 188
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "config":Lorg/json/JSONObject;
    .restart local v2    # "environments":Lorg/json/JSONObject;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keys":Ljava/util/Iterator;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 190
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 193
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 194
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
