.class public abstract Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;
.super Ljava/lang/Object;
.source "CloudMessageUtils.java"


# static fields
.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PROPERTY_ON_SERVER_EXPIRATION_TIME:Ljava/lang/String; = "gcm_registration_id_expiration_time"

.field public static final PROPERTY_REG_ID:Ljava/lang/String; = "gcm_registration_id"

.field public static final STATUS_BAR_NOTIFICATION_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final STATUS_BAR_NOTIFICATION_DELAY_KEY_ROOT:Ljava/lang/String; = "delays.entry."

.field public static final STATUS_BAR_NOTIFICATION_DELAY_KEY_TOTAL:Ljava/lang/String; = "delays.entry.total"

.field public static final STATUS_BAR_NOTIFICATION_KEY_APP_IDENTIFIER:Ljava/lang/String; = "appIdentifier"

.field public static final STATUS_BAR_NOTIFICATION_KEY_COLOR_MESSAGE:Ljava/lang/String; = "message_colour"

.field public static final STATUS_BAR_NOTIFICATION_KEY_COLOR_TITLE:Ljava/lang/String; = "title_colour"

.field public static final STATUS_BAR_NOTIFICATION_KEY_ID_FROM:Ljava/lang/String; = "from"

.field public static final STATUS_BAR_NOTIFICATION_KEY_TEXT_MESSAGE:Ljava/lang/String; = "message"

.field public static final STATUS_BAR_NOTIFICATION_KEY_TEXT_TICKER:Ljava/lang/String; = "ticker"

.field public static final STATUS_BAR_NOTIFICATION_KEY_TEXT_TITLE:Ljava/lang/String; = "title"

.field public static final STATUS_BAR_NOTIFICATION_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final STATUS_BAR_NOTIFICATION_KEY_URL_BACKGROUND:Ljava/lang/String; = "background_url"

.field public static final STATUS_BAR_NOTIFICATION_KEY_URL_BIG_ICON:Ljava/lang/String; = "icon_big_url"

.field public static final STATUS_BAR_NOTIFICATION_KEY_URL_TICKER_ICON:Ljava/lang/String; = "icon_small_url"

.field protected static final TAG:Ljava/lang/String;

.field protected static cmEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->cmEnabled:Z

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotificationFromBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 31
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string v2, "icon_big_url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 67
    .local v25, "iconUrl":Ljava/lang/String;
    const-string v2, "background_url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 68
    .local v23, "bgUrl":Ljava/lang/String;
    const-string v2, "icon_small_url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 69
    .local v29, "tickerIconUrl":Ljava/lang/String;
    const-string v2, "title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, "title":Ljava/lang/String;
    const-string v2, "ticker"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "ticker":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "message":Ljava/lang/String;
    const-string v2, "from"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 73
    .local v17, "from":Ljava/lang/String;
    const-string v2, "appIdentifier"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 74
    .local v22, "appIdentifier":Ljava/lang/String;
    const-string v2, "id"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 75
    .local v18, "id":I
    const-string v2, "title_text_size"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 76
    .local v13, "titleTextSize":I
    const-string v2, "message_text_size"

    const/4 v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 77
    .local v14, "messageTextSize":I
    const-string v2, "title_colour"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 78
    .local v15, "titleColorStr":Ljava/lang/String;
    const-string v2, "message_colour"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 79
    .local v16, "messageColorStr":Ljava/lang/String;
    const-string v2, "text_fields_max_width"

    const/16 v9, 0x5a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 80
    .local v20, "textFieldsWidthSizePercent":I
    const-string v2, "replace_old"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 83
    .local v19, "replacePrevious":Z
    if-nez v22, :cond_0

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 85
    .local v28, "pkg":Ljava/lang/String;
    const-string v2, "air.com.gamesys.luckygemcasino"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string v22, "lgc"

    .line 95
    .end local v28    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 96
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v25, v4, v2

    const/4 v2, 0x1

    aput-object v23, v4, v2

    const/4 v2, 0x2

    aput-object v29, v4, v2

    .line 97
    .local v4, "urls":[Ljava/lang/String;
    const/16 v27, 0x0

    .line 98
    .local v27, "null_url_count":I
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Integer;

    .line 99
    .local v3, "errorUrlCount":[Ljava/lang/Integer;
    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    .line 102
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    array-length v2, v4

    move/from16 v0, v24

    if-lt v0, v2, :cond_3

    .line 156
    return-void

    .line 87
    .end local v3    # "errorUrlCount":[Ljava/lang/Integer;
    .end local v4    # "urls":[Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v24    # "i":I
    .end local v27    # "null_url_count":I
    .restart local v28    # "pkg":Ljava/lang/String;
    :cond_1
    const-string v2, "air.com.gamesys.mobile.slots.jpj"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const-string v22, "jpj"

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    const-string v22, "jpj"

    goto :goto_0

    .line 103
    .end local v28    # "pkg":Ljava/lang/String;
    .restart local v3    # "errorUrlCount":[Ljava/lang/Integer;
    .restart local v4    # "urls":[Ljava/lang/String;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .restart local v24    # "i":I
    .restart local v27    # "null_url_count":I
    :cond_3
    const/16 v26, 0x0

    .line 104
    .local v26, "key":Ljava/lang/String;
    aget-object v2, v4, v24

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    const-string v26, "icon_big_url"

    .line 117
    :cond_4
    :goto_2
    move/from16 v5, v24

    .line 118
    .local v5, "final_i":I
    move-object/from16 v7, v26

    .line 119
    .local v7, "final_key":Ljava/lang/String;
    move-object/from16 v21, v22

    .line 120
    .local v21, "final_appIdentifier":Ljava/lang/String;
    move/from16 v8, v27

    .line 123
    .local v8, "final_null_url_count":I
    aget-object v30, v4, v5

    new-instance v2, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v21}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;-><init>([Ljava/lang/Integer;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/gamesys/android/tools/ane/cache/ImageManager;->getImageFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;)V

    .line 102
    .end local v5    # "final_i":I
    .end local v7    # "final_key":Ljava/lang/String;
    .end local v8    # "final_null_url_count":I
    .end local v21    # "final_appIdentifier":Ljava/lang/String;
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 106
    :cond_5
    aget-object v2, v4, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 107
    const-string v26, "background_url"

    .line 108
    goto :goto_2

    :cond_6
    aget-object v2, v4, v24

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 109
    const-string v26, "icon_small_url"

    .line 110
    goto :goto_2

    :cond_7
    aget-object v2, v4, v24

    if-nez v2, :cond_4

    .line 112
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->TAG:Ljava/lang/String;

    const-string v9, "Unable to load a picture URL is null"

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    add-int/lit8 v27, v27, 0x1

    .line 114
    goto :goto_3
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 253
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 254
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not get package name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getCMType(Landroid/os/Bundle;)Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;
    .locals 2
    .param p0, "notificationData"    # Landroid/os/Bundle;

    .prologue
    .line 172
    const-string v1, "type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "bundleType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "bundleType":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->fromString(Ljava/lang/String;)Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    move-result-object v1

    return-object v1

    .restart local v0    # "bundleType":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->STATUS_BAR_NOTIFICATION:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    iget-object v0, v1, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 188
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v6, "gcm_registration_id"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "registrationId":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 191
    :cond_0
    const-string v6, "Registration ID to cloud messaging server has not been found"

    invoke-static {p1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const-string v5, ""

    .line 211
    .end local v5    # "registrationId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 197
    .restart local v5    # "registrationId":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "appVersion"

    const/high16 v7, -0x80000000

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 198
    .local v4, "registeredVersion":I
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 199
    .local v0, "currentVersion":I
    if-eq v4, v0, :cond_1

    .line 200
    const-string v6, "Application version has changed, renewing the Registration ID"

    invoke-static {p1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    const-string v5, ""

    goto :goto_0

    .line 205
    .end local v0    # "currentVersion":I
    .end local v4    # "registeredVersion":I
    .end local v5    # "registrationId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "An error has occured while trying to read preferences (regID,version) settings will be wiped out and we will ask for the regId again"

    invoke-static {p1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 208
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "gcm_registration_id"

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    const-string v6, "appVersion"

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    const-string v5, ""

    goto :goto_0
.end method

.method public static getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v3, 0x0

    .line 272
    .local v3, "id":I
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 274
    .local v0, "clazz":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_1

    :cond_0
    :goto_1
    move v4, v3

    .line 288
    .end local v0    # "clazz":[Ljava/lang/Class;
    .end local v2    # "i":I
    :goto_2
    return v4

    .line 276
    .restart local v0    # "clazz":[Ljava/lang/Class;
    .restart local v2    # "i":I
    :cond_1
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    .line 279
    aget-object v4, v0, v2

    invoke-virtual {v4, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 281
    goto :goto_1

    .line 274
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "clazz":[Ljava/lang/Class;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public static isNotificationCloudMessage(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "notificationData"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getCMType(Landroid/os/Bundle;)Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    move-result-object v0

    .line 164
    .local v0, "type":Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;
    sget-object v1, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->STATUS_BAR_NOTIFICATION:Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;

    invoke-virtual {v0, v1}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isRegistrationExpired(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 242
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "gcm_registration_id_expiration_time"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 243
    .local v0, "expirationTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/misc/Miscellaneous;->getAppPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 223
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 224
    .local v0, "appVersion":I
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 225
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "gcm_registration_id"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    const-string v3, "appVersion"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    return-void
.end method
