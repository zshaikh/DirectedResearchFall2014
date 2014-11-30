.class public Lcom/amazon/ags/api/whispersync/AGWhispersync;
.super Ljava/lang/Object;
.source "AGWhispersync.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasNewMultiFileGameData()Z
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 143
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 145
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->hasNewMultiFileGameData()Z

    move-result v2

    return v2
.end method

.method public static requestRevert(Lcom/amazon/ags/api/whispersync/RevertBlobCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/amazon/ags/api/whispersync/RevertBlobCallback;

    .prologue
    .line 102
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 103
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 105
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->requestRevert(Lcom/amazon/ags/api/whispersync/RevertBlobCallback;)V

    .line 106
    return-void
.end method

.method public static requestRevert(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;

    .prologue
    .line 115
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 116
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 118
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->requestRevert(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V

    .line 119
    return-void
.end method

.method public static setFilter(Ljava/io/FilenameFilter;)V
    .locals 2
    .param p0, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 131
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 132
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 134
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->setFilter(Ljava/io/FilenameFilter;)V

    .line 135
    return-void
.end method

.method public static synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    .prologue
    .line 21
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 22
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 24
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    .line 25
    return-void
.end method

.method public static synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V
    .locals 2
    .param p0, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;

    .prologue
    .line 35
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 36
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 38
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V

    .line 39
    return-void
.end method

.method public static synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    .prologue
    .line 48
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 49
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 51
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V

    .line 52
    return-void
.end method

.method public static synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;)V
    .locals 2
    .param p0, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;

    .prologue
    .line 62
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 63
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 65
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;)V

    .line 66
    return-void
.end method

.method public static synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V
    .locals 2
    .param p0, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    .prologue
    .line 76
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 77
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 79
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V

    .line 80
    return-void
.end method

.method public static synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V
    .locals 2
    .param p0, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    .prologue
    .line 90
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 91
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 93
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V

    .line 94
    return-void
.end method

.method public static unpackNewMultiFileGameData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 155
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 157
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->unpackNewMultiFileGameData()V

    .line 158
    return-void
.end method
