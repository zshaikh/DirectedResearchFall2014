.class public Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;
.super Ljava/lang/Object;
.source "AchievementsNativeHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "AchievementsNativeHandler"

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 1
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    .line 35
    return-void
.end method

.method public static requestAchievement(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 56
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievement - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/GetAchievementJniRespHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/ags/jni/achievements/GetAchievementJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestAchievementHandle(Ljava/lang/String;I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievementHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestAchievements(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 38
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievements - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/GetAchievementsJniRespHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ags/jni/achievements/GetAchievementsJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestAchievementsHandle(I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievementsHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetAchievement(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 108
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievement - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->resetAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/ResetAchievementJniRespHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/ags/jni/achievements/ResetAchievementJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static resetAchievementHandle(Ljava/lang/String;I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievementHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->resetAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetAchievements(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 92
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievements - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->resetAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/ResetAchievementJniRespHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ags/jni/achievements/ResetAchievementJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static resetAchievementsHandle(I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievementsHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->resetAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static showAchievementsOverlay()Lcom/amazon/ags/api/AGResponseHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "showAchievementsOverlay - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateProgress(Ljava/lang/String;FIJ)V
    .locals 2
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "percentComplete"    # F
    .param p2, "developerTag"    # I
    .param p3, "callbackPointer"    # J

    .prologue
    .line 74
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "updateProgress - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/UpdateProgressJniRespHandler;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/amazon/ags/jni/achievements/UpdateProgressJniRespHandler;-><init>(Ljava/lang/String;IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static updateProgressHandle(Ljava/lang/String;FI)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "percentComplete"    # F
    .param p2, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FI)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "updateProgressHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method
