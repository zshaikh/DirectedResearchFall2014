.class public Lcom/nativex/common/SharedPreferenceManager;
.super Ljava/lang/Object;
.source "SharedPreferenceManager.java"


# static fields
.field public static final AVAILABLE_BALANCE_RESPONSE:Ljava/lang/String; = "AvailableBalanceResponse"

.field public static final CACHED_GET_BALANCES:Ljava/lang/String; = "CachedGetBalances"

.field public static final CACHED_REDEEM_BALANCE:Ljava/lang/String; = "CahcedRedeemBalance"

.field public static final PREFS_NAME:Ljava/lang/String; = "com.nativex.monetization"

.field public static final PREF_ANDROID_ID:Ljava/lang/String; = "AndroidId"

.field public static final PREF_DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field public static final PREF_EXTERNAL_TRACKING_LAST_TRACK_TIME:Ljava/lang/String; = "ExternalTrackingLastTrackTime"

.field public static final PREF_EXTERNAL_TRACKING_NEW_DEVICE_DATE:Ljava/lang/String; = "ExternalTrackingDeviceRegisteredDate"

.field public static final PREF_FIRST_RUN:Ljava/lang/String; = "FirstRun"

.field public static final PREF_LANGUAGE:Ljava/lang/String; = "Language"

.field public static final PREF_STORED_BALANCES:Ljava/lang/String; = "StoredBalances"

.field public static final PREVIOUS_SESSION_END_TIME:Ljava/lang/String; = "PreviousSessionEndTime"

.field public static final PREVIOUS_SESSION_ID:Ljava/lang/String; = "PreviousSessionIdString"

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static checkInit()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/SharedPreferenceManager;->initialize(Landroid/content/Context;)V

    .line 330
    :cond_0
    return-void

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SharedPreferencesManager not initialized"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v2, "DeviceId"

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "deviceIdValue":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 197
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "DeviceId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "DeviceId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v2, "DeviceId was found in shared preferences.  This is a known device."

    invoke-static {v2}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 208
    :goto_0
    return-object v0

    .line 201
    :cond_0
    const-string v2, "DeviceId was not found in shared preferences. Generating a new id."

    invoke-static {v2}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferencesManager: Unexpected exception caught in getDeviceId()"

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLanguge()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 132
    sget-object v1, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "Language"

    sget-object v3, Lcom/nativex/monetization/enums/Language;->ENGLISH:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v3}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to retrieve stored language"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    sget-object v1, Lcom/nativex/monetization/enums/Language;->ENGLISH:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v1}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPreviousSessionEndTime()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 94
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "PreviousSessionEndTime"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/Date("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 102
    .end local v1    # "response":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 99
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to retrieve previous session end time"

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v5

    .line 102
    goto :goto_0
.end method

.method public static getPreviousSessionId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 74
    sget-object v1, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "PreviousSessionIdString"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to retrieve previous session id"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 78
    goto :goto_0
.end method

.method public static hasPreviousSessionEndTime()Z
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->getPreviousSessionEndTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    if-eqz p0, :cond_0

    .line 318
    const-string v0, "com.nativex.monetization"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 320
    :cond_0
    return-void
.end method

.method public static isFirstRun()Z
    .locals 5

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "boolFirstRun":Z
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 166
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "FirstRun"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 168
    const-string v2, "Run Status: Application is running for first time!"

    invoke-static {v2}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 175
    :goto_0
    return v0

    .line 170
    :cond_0
    const-string v2, "Run Status: This is not a first run of the application."

    invoke-static {v2}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 173
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class Cast Exception in module isFirstRun: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadBalances()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nativex/monetization/business/Balance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 146
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "StoredBalances"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "balancesJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/nativex/common/SharedPreferenceManager$1;

    invoke-direct {v3}, Lcom/nativex/common/SharedPreferenceManager$1;-><init>()V

    invoke-virtual {v3}, Lcom/nativex/common/SharedPreferenceManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "balancesJson":Ljava/lang/String;
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 154
    :goto_0
    return-object v2

    .line 151
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Faield to get balances"

    invoke-static {v2, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public static loadExternalTrackingDeviceDate()J
    .locals 5

    .prologue
    .line 250
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 251
    sget-object v1, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ExternalTrackingDeviceRegisteredDate"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 255
    :goto_0
    return-wide v1

    .line 252
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SharedPreferenceManager: Exception caught while loading external tracking start date"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    const-wide/16 v1, -0x2

    goto :goto_0
.end method

.method public static loadExternalTrackingLastTrackTime()J
    .locals 5

    .prologue
    .line 273
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 274
    sget-object v1, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ExternalTrackingLastTrackTime"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 278
    :goto_0
    return-wide v1

    .line 275
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SharedPreferenceManager: Exception caught while storing external tracking track time"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    const-wide/16 v1, -0x2

    goto :goto_0
.end method

.method public static loadStoredAndroidId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 296
    sget-object v1, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "AndroidId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 300
    :goto_0
    return-object v1

    .line 297
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SharedPreferenceManager: Exception caught while loading android id"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 300
    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 141
    return-void
.end method

.method public static removeExternalTrackingRecord()V
    .locals 3

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 239
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 240
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ExternalTrackingDeviceRegisteredDate"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v2, "ExternalTrackingLastTrackTime"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferenceManager: Exception caught while erasing external tracking data"

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeAndroidId(Ljava/lang/String;)V
    .locals 3
    .param p0, "androidId"    # Ljava/lang/String;

    .prologue
    .line 284
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 285
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 286
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "AndroidId"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferenceManager: Exception caught while storing external android id "

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeBalances(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nativex/monetization/business/Balance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "balances":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nativex/monetization/business/Balance;>;"
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 307
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "balancesJson":Ljava/lang/String;
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "StoredBalances"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "balancesJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to store balances for later use"

    invoke-static {v2, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeExternalTrackingDeviceDate(J)V
    .locals 3
    .param p0, "milliseconds"    # J

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 228
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 229
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ExternalTrackingDeviceRegisteredDate"

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferenceManager: Exception caught while storing external tracking start date"

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeFirstRun(Z)V
    .locals 3
    .param p0, "firstRun"    # Z

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 182
    sget-object v1, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FirstRun"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 184
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class Cast Exception in module isFirstRun: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static storeLanguage(Lcom/nativex/monetization/enums/Language;)V
    .locals 4
    .param p0, "language"    # Lcom/nativex/monetization/enums/Language;

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 121
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 122
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Language"

    invoke-virtual {p0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferenceManager: Exception caught while storing interstitial data."

    invoke-static {v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static storeLastTrackTime(J)V
    .locals 3
    .param p0, "time"    # J

    .prologue
    .line 261
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 262
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 263
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ExternalTrackingLastTrackTime"

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferenceManager: Exception caught while storing external tracking track time"

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storePreviousSessionEndTime(Ljava/lang/String;)V
    .locals 3
    .param p0, "UtcDateTime"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 85
    sget-object v1, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PreviousSessionEndTime"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to store previous session end time"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storePreviousSessionId(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 65
    sget-object v1, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PreviousSessionIdString"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to store previous session id"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeW3iDeviceId(Ljava/lang/String;)V
    .locals 3
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 214
    :try_start_0
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->checkInit()V

    .line 215
    sget-object v2, Lcom/nativex/common/SharedPreferenceManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 216
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DeviceId"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    invoke-static {}, Lcom/nativex/advertiser/DeviceManager;->updateDeviceId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SharedPreferenceManager: Exception caught while storing DeviceId"

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
