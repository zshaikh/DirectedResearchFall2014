.class public Lcom/pocketchange/android/PocketChangeCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/PocketChangeCompat$a;
    }
.end annotation


# static fields
.field private static a:Lcom/pocketchange/android/PocketChangeCompat$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 65
    const-string v0, "PCPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getItemCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/pocketchange/android/PocketChangeCompat;->a:Lcom/pocketchange/android/PocketChangeCompat$a;

    if-nez v0, :cond_2

    .line 44
    const-class v0, Lcom/pocketchange/android/PocketChangeCompat;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/pocketchange/android/PocketChangeCompat;->a:Lcom/pocketchange/android/PocketChangeCompat$a;

    if-nez v1, :cond_1

    .line 46
    invoke-static {p0}, Lcom/pocketchange/android/PocketChangeCompat;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47
    const-string v2, "itemData"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/pocketchange/android/PocketChangeCompat$a;

    invoke-direct {v2}, Lcom/pocketchange/android/PocketChangeCompat$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pocketchange/android/PocketChangeCompat$a;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :cond_0
    :goto_0
    :try_start_2
    sput-object v2, Lcom/pocketchange/android/PocketChangeCompat;->a:Lcom/pocketchange/android/PocketChangeCompat$a;

    .line 58
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_2
    sget-object v0, Lcom/pocketchange/android/PocketChangeCompat;->a:Lcom/pocketchange/android/PocketChangeCompat$a;

    invoke-virtual {v0, p1}, Lcom/pocketchange/android/PocketChangeCompat$a;->a(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    :try_start_3
    const-string v3, "PocketChangeCompat"

    const-string v4, "Error reading item data from persistent storage"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static isUnlocked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-string v0, "unlocked"

    const-string v2, "tokenData"

    .line 26
    invoke-static {p0}, Lcom/pocketchange/android/PocketChangeCompat;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    const-string v1, "tokenData"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "tokenData"

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "unlocked"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unlocked"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "PocketChangeCompat"

    const-string v2, "Error reading token data from persistent storage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "isUnlocked"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
