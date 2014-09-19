.class public Lcom/fiksu/asotracking/FiksuConfiguration;
.super Ljava/lang/Object;
.source "FiksuConfiguration.java"


# static fields
.field private static final DEBUG_MODE_ENABLED_KEY:Ljava/lang/String; = "debug_mode_enabled"

.field private static final DEFAULT_DEBUG_MODE_ENABLED_SETTING:Z = false

.field private static final DEFAULT_FACEBOOK_ATTRIBUTION_SETTING:Z = true

.field private static final FACEBOOK_ATTRIBUTION_KEY:Ljava/lang/String; = "facebook_attribution"

.field private static final LAST_UPDATE_TIMESTAMP:Ljava/lang/String; = "last_update_timestamp"


# instance fields
.field private mDebugModeEnabled:Z

.field private mFacebookAttributionEnabled:Z

.field private mLastUpdateTimestamp:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    .line 43
    return-void
.end method

.method private static final getBooleanFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "jsonObject"
    .parameter "lookupKey"
    .parameter "defaultValue"

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .local v0, jsonException:Lorg/json/JSONException;
    move v1, p2

    .line 87
    goto :goto_0
.end method


# virtual methods
.method protected final hasEverSynchedWithServer()Z
    .locals 4

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isDebugModeEnabled()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    return v0
.end method

.method protected final isFacebookAttributionEnabled()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    return v0
.end method

.method protected final isUpToDate()Z
    .locals 6

    .prologue
    .line 104
    iget-boolean v2, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x1b7740

    move-wide v0, v2

    .line 105
    .local v0, threshold:J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 104
    .end local v0           #threshold:J
    :cond_0
    const-wide/32 v2, 0x5265c00

    move-wide v0, v2

    goto :goto_0

    .line 105
    .restart local v0       #threshold:J
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected final readFromJSONObject(Lorg/json/JSONObject;)Z
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    .line 76
    :cond_0
    const-string v0, "facebook_attribution"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    invoke-static {p1, v0, v1}, Lcom/fiksu/asotracking/FiksuConfiguration;->getBooleanFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    .line 77
    const-string v0, "debug_mode_enabled"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    invoke-static {p1, v0, v1}, Lcom/fiksu/asotracking/FiksuConfiguration;->getBooleanFromJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final readFromSharedPreferences(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "sharedPreferences"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    .line 64
    :cond_0
    const-string v0, "facebook_attribution"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    .line 65
    const-string v0, "debug_mode_enabled"

    iget-boolean v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    .line 66
    const-string v0, "last_update_timestamp"

    iget-wide v1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setDebugModeEnabled(Z)V
    .locals 0
    .parameter "debugModeEnabled"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    .line 127
    return-void
.end method

.method protected final updateLastUpdateTimestamp()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    .line 97
    return-void
.end method

.method protected final writeToSharedPreferences(Landroid/content/SharedPreferences;)Z
    .locals 4
    .parameter "sharedPreferences"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 56
    :goto_0
    return v1

    .line 50
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "facebook_attribution"

    iget-boolean v2, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mFacebookAttributionEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "debug_mode_enabled"

    iget-boolean v2, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mDebugModeEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    const-string v1, "last_update_timestamp"

    iget-wide v2, p0, Lcom/fiksu/asotracking/FiksuConfiguration;->mLastUpdateTimestamp:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_0
.end method
