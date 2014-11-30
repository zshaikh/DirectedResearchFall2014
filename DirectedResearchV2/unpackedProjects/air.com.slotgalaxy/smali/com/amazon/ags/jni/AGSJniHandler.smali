.class public Lcom/amazon/ags/jni/AGSJniHandler;
.super Ljava/lang/Object;
.source "AGSJniHandler.java"


# static fields
.field private static final JNI_LIBRARY_NAME:Ljava/lang/String; = "AmazonGamesJni"

.field public static final TAG:Ljava/lang/String; = "AGSJniHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeJni(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 5
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    const-string v3, "AGSJniHandler"

    .line 63
    const-string v2, "AGSJniHandler"

    const-string v2, "Loading Jni library"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p0}, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 69
    invoke-static {p0}, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 71
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 73
    invoke-static {p0}, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 83
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/jni/AGSJniHandler;->isLoaded()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "AGSJniHandler"

    const-string v2, "AmazonGamesJni is not loaded, trying to load library"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_1
    const-string v2, "AmazonGamesJni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 101
    .local v1, "ule2":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load AmazonGamesJni: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static native isLoaded()V
.end method
