.class public Lcom/redbox/android/adapter/LocalDataStore;
.super Ljava/lang/Object;
.source "LocalDataStore.java"


# static fields
.field private static final HAVE_CACHE:Ljava/lang/String; = "haveCache"

.field private static final IS_LOGGED_IN:Ljava/lang/String; = "isloggedin"

.field public static final PREFERENCES_URL_MODE:Ljava/lang/String; = "PREFERENCES_URL_MODE"

.field public static final PREFERENCE_ETAG:Ljava/lang/String; = "Etag"

.field public static final PREFERENCE_LASTMODIFIED:Ljava/lang/String; = "LastModified"

.field public static final PREFERENCE_REDBOX:Ljava/lang/String; = "Redbox"

.field public static final PREFS_NAME:Ljava/lang/String; = "RBPrefsFile"

.field private static final THUMB_IMG_CACHE_SIZE:Ljava/lang/String; = "THUMB_IMG_CACHE_SIZE"

.field private static instance:Lcom/redbox/android/adapter/LocalDataStore;


# instance fields
.field context:Landroid/content/Context;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/redbox/android/adapter/LocalDataStore;->context:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->context:Landroid/content/Context;

    const-string v1, "RBPrefsFile"

    .line 49
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/redbox/android/adapter/LocalDataStore;->instance:Lcom/redbox/android/adapter/LocalDataStore;

    if-nez v0, :cond_1

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcom/redbox/android/adapter/LocalDataStore;

    invoke-direct {v0, p0}, Lcom/redbox/android/adapter/LocalDataStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/redbox/android/adapter/LocalDataStore;->instance:Lcom/redbox/android/adapter/LocalDataStore;

    .line 59
    :cond_1
    sget-object v0, Lcom/redbox/android/adapter/LocalDataStore;->instance:Lcom/redbox/android/adapter/LocalDataStore;

    goto :goto_0
.end method


# virtual methods
.method public cacheExists()Z
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const-string v1, "haveCache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const-string v1, "Redbox"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const-string v1, "Etag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const-string v1, "LastModified"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isImageCacheSizeOK()Z
    .locals 6

    .prologue
    .line 85
    iget-object v2, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const-string v3, "THUMB_IMG_CACHE_SIZE"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 86
    .local v0, "currentSize":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size right now(kb): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x400

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const-string v1, "isloggedin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Redbox"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method

.method public setCacheExists()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "haveCache"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Etag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 183
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method

.method public setLastModified(Ljava/lang/String;)V
    .locals 2
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LastModified"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method public setLogInState(Z)V
    .locals 3
    .param p1, "login"    # Z

    .prologue
    .line 141
    iget-object v1, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 143
    const-string v1, "Redbox"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    :cond_0
    const-string v1, "isloggedin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 187
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public updateImageCacheSize(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 69
    iget-object v3, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 72
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/redbox/android/adapter/LocalDataStore;->settings:Landroid/content/SharedPreferences;

    const-string v4, "THUMB_IMG_CACHE_SIZE"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 74
    .local v0, "currentSize":J
    const-string v3, "THUMB_IMG_CACHE_SIZE"

    add-long v4, p1, v0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method
