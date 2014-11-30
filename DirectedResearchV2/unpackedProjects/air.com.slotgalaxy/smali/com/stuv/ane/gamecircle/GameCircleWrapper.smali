.class public Lcom/stuv/ane/gamecircle/GameCircleWrapper;
.super Ljava/lang/Object;
.source "GameCircleWrapper.java"


# static fields
.field private static _agsGameClient:Lcom/amazon/ags/api/AmazonGames;

.field private static _baseActivity:Landroid/app/Activity;

.field private static _blobCallback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

.field private static _context:Lcom/adobe/fre/FREContext;

.field private static _serviceReady:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/adobe/fre/FREContext;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 45
    sput-boolean p0, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_serviceReady:Z

    return-void
.end method

.method static synthetic access$2()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_baseActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getCloudData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    sget-object v0, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_baseActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whisperSyncData"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 5
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 49
    sput-object p1, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 51
    sput-object p0, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_baseActivity:Landroid/app/Activity;

    .line 54
    sget-object v2, Lcom/amazon/ags/api/AmazonGamesFeature;->Achievements:Lcom/amazon/ags/api/AmazonGamesFeature;

    .line 55
    sget-object v3, Lcom/amazon/ags/api/AmazonGamesFeature;->Whispersync:Lcom/amazon/ags/api/AmazonGamesFeature;

    .line 56
    sget-object v4, Lcom/amazon/ags/api/AmazonGamesFeature;->Leaderboards:Lcom/amazon/ags/api/AmazonGamesFeature;

    .line 53
    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 58
    .local v1, "agsGameFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/amazon/ags/api/AmazonGamesFeature;>;"
    new-instance v0, Lcom/stuv/ane/gamecircle/GameCircleWrapper$1;

    invoke-direct {v0}, Lcom/stuv/ane/gamecircle/GameCircleWrapper$1;-><init>()V

    .line 111
    .local v0, "agsGameCallback":Lcom/amazon/ags/api/AmazonGamesCallback;
    sget-object v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_baseActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 110
    invoke-static {v2, v0, v1}, Lcom/amazon/ags/api/AmazonGamesClient;->initialize(Landroid/app/Application;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)Lcom/amazon/ags/api/AmazonGames;

    move-result-object v2

    sput-object v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_agsGameClient:Lcom/amazon/ags/api/AmazonGames;

    .line 116
    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper$2;

    invoke-direct {v2}, Lcom/stuv/ane/gamecircle/GameCircleWrapper$2;-><init>()V

    sput-object v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_blobCallback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    .line 178
    return-void
.end method

.method public static isReady()Z
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_serviceReady:Z

    return v0
.end method

.method public static setCloudData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-object v3, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_agsGameClient:Lcom/amazon/ags/api/AmazonGames;

    invoke-interface {v3}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v2

    .line 262
    .local v2, "whisperSync":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    new-instance v1, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    sget-object v3, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_blobCallback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    invoke-direct {v1, v3}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    .line 263
    .local v1, "syncBlobRequest":Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->setData([B)V

    .line 264
    invoke-virtual {v1, p0}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->setDescription(Ljava/lang/String;)V

    .line 265
    invoke-interface {v2, v1}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V

    .line 267
    sget-object v3, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_baseActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "whisperSyncData"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    return-void
.end method

.method public static showAchievements()V
    .locals 2

    .prologue
    .line 187
    sget-object v1, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_agsGameClient:Lcom/amazon/ags/api/AmazonGames;

    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 188
    .local v0, "acClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    .line 189
    return-void
.end method

.method public static showLeaderboard(Ljava/lang/String;)V
    .locals 2
    .param p0, "leaderboard"    # Ljava/lang/String;

    .prologue
    .line 219
    sget-object v1, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_agsGameClient:Lcom/amazon/ags/api/AmazonGames;

    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v0

    .line 220
    .local v0, "lbClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->showLeaderboardOverlay(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    .line 221
    return-void
.end method

.method public static submitScore(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 5
    .param p0, "leaderboard"    # Ljava/lang/String;
    .param p1, "score"    # Ljava/lang/Double;

    .prologue
    .line 225
    sget-object v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_agsGameClient:Lcom/amazon/ags/api/AmazonGames;

    invoke-interface {v2}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 226
    .local v1, "lbClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    .line 229
    .local v0, "handle":Lcom/amazon/ags/api/AGResponseHandle;, "Lcom/amazon/ags/api/AGResponseHandle<Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;>;"
    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper$4;

    invoke-direct {v2}, Lcom/stuv/ane/gamecircle/GameCircleWrapper$4;-><init>()V

    invoke-interface {v0, v2}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 246
    return-void
.end method

.method public static syncCloud()V
    .locals 3

    .prologue
    .line 250
    sget-object v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_agsGameClient:Lcom/amazon/ags/api/AmazonGames;

    invoke-interface {v2}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 252
    .local v1, "whisperSync":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    new-instance v0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;

    sget-object v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_blobCallback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    invoke-direct {v0, v2}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    .line 253
    .local v0, "syncBlobRequest":Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;
    sget-object v2, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->AUTO_RESOLVE_TO_CLOUD:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    invoke-virtual {v0, v2}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->setConflictStrategy(Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    .line 254
    invoke-interface {v1, v0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V

    .line 255
    return-void
.end method

.method public static updateAchievement(Ljava/lang/String;D)V
    .locals 4
    .param p0, "achievement"    # Ljava/lang/String;
    .param p1, "progress"    # D

    .prologue
    .line 193
    sget-object v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->_agsGameClient:Lcom/amazon/ags/api/AmazonGames;

    invoke-interface {v2}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 194
    .local v0, "acClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    double-to-float v2, p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, p0, v2, v3}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v1

    .line 197
    .local v1, "handle":Lcom/amazon/ags/api/AGResponseHandle;, "Lcom/amazon/ags/api/AGResponseHandle<Lcom/amazon/ags/api/achievements/UpdateProgressResponse;>;"
    new-instance v2, Lcom/stuv/ane/gamecircle/GameCircleWrapper$3;

    invoke-direct {v2}, Lcom/stuv/ane/gamecircle/GameCircleWrapper$3;-><init>()V

    invoke-interface {v1, v2}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 214
    return-void
.end method
