.class public Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;
.super Ljava/lang/Object;
.source "WhisperSyncNativeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static conflictStrategyEnumToConflictStrategy(I)Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    .locals 3
    .param p0, "conflictStrategyEnum"    # I

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid enumeration value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :pswitch_0
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 63
    .local v0, "result":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    :goto_0
    return-object v0

    .line 55
    .end local v0    # "result":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    :pswitch_1
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->AUTO_RESOLVE_TO_CLOUD:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 56
    .restart local v0    # "result":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    goto :goto_0

    .line 58
    .end local v0    # "result":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    :pswitch_2
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->AUTO_RESOLVE_TO_IGNORE:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 59
    .restart local v0    # "result":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static hasNewMultiFileGameData()Z
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "IN JAVA HASNEWMULTIFILEGAMEDATA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v0, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->hasNewMultiFileGameData()Z

    move-result v0

    return v0
.end method

.method public static initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 1
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    .line 46
    return-void
.end method

.method public static requestRevertBlob(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 115
    new-instance v0, Lcom/amazon/ags/jni/whispersync/RevertBlobJniCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/jni/whispersync/RevertBlobJniCallback;-><init>(IJ)V

    .line 116
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/RevertBlobCallback;
    sget-object v1, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v1, v0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->requestRevert(Lcom/amazon/ags/api/whispersync/RevertBlobCallback;)V

    .line 117
    return-void
.end method

.method public static requestRevertMultiFile(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 120
    new-instance v0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;-><init>(IJ)V

    .line 121
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;
    sget-object v1, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v1, v0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->requestRevert(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V

    .line 122
    return-void
.end method

.method public static setFilter(Ljava/lang/String;I)V
    .locals 2
    .param p0, "filter"    # Ljava/lang/String;
    .param p1, "developerTag"    # I

    .prologue
    .line 125
    sget-object v0, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    new-instance v1, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;

    invoke-direct {v1, p0}, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->setFilter(Ljava/io/FilenameFilter;)V

    .line 126
    return-void
.end method

.method public static synchronizeBlob(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 67
    new-instance v0, Lcom/amazon/ags/jni/whispersync/SynchronizeBlobJniCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/jni/whispersync/SynchronizeBlobJniCallback;-><init>(IJ)V

    .line 68
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;
    sget-object v1, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v1, v0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    .line 69
    return-void
.end method

.method public static synchronizeBlobProgressRequest(IJILjava/lang/String;[B)V
    .locals 4
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J
    .param p3, "conflictStrategyEnum"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .prologue
    .line 93
    new-instance v0, Lcom/amazon/ags/jni/whispersync/SynchronizeBlobJniCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/jni/whispersync/SynchronizeBlobJniCallback;-><init>(IJ)V

    .line 94
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;
    new-instance v2, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    invoke-direct {v2, v0}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    .line 95
    .local v2, "request":Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;
    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->conflictStrategyEnumToConflictStrategy(I)Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    move-result-object v1

    .line 96
    .local v1, "conflictStrategy":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    invoke-virtual {v2, v1}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->setConflictStrategy(Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    .line 97
    invoke-virtual {v2, p4}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->setDescription(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, p5}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->setData([B)V

    .line 100
    sget-object v3, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v3, v2}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V

    .line 101
    return-void
.end method

.method public static synchronizeBlobRequest(IJI)V
    .locals 4
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J
    .param p3, "conflictStrategyEnum"    # I

    .prologue
    .line 72
    new-instance v0, Lcom/amazon/ags/jni/whispersync/SynchronizeBlobJniCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/jni/whispersync/SynchronizeBlobJniCallback;-><init>(IJ)V

    .line 73
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;
    new-instance v2, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;

    invoke-direct {v2, v0}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    .line 74
    .local v2, "request":Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;
    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->conflictStrategyEnumToConflictStrategy(I)Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    move-result-object v1

    .line 75
    .local v1, "conflictStrategy":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    invoke-virtual {v2, v1}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->setConflictStrategy(Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    .line 76
    sget-object v3, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v3, v2}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V

    .line 77
    return-void
.end method

.method public static synchronizeMultiFile(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 80
    new-instance v0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;-><init>(IJ)V

    .line 81
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;
    sget-object v1, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v1, v0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V

    .line 82
    return-void
.end method

.method public static synchronizeMultiFileProgressRequest(IJILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J
    .param p3, "conflictStrategyEnum"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "filter"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;-><init>(IJ)V

    .line 105
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;
    new-instance v2, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    invoke-direct {v2, v0}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V

    .line 106
    .local v2, "request":Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;
    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->conflictStrategyEnumToConflictStrategy(I)Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    move-result-object v1

    .line 107
    .local v1, "conflictStrategy":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    invoke-virtual {v2, v1}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->setConflictStrategy(Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    .line 108
    invoke-virtual {v2, p4}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->setDescription(Ljava/lang/String;)V

    .line 109
    new-instance v3, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;

    invoke-direct {v3, p5}, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->setFilter(Ljava/io/FilenameFilter;)V

    .line 111
    sget-object v3, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v3, v2}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V

    .line 112
    return-void
.end method

.method public static synchronizeMultiFileRequest(IJI)V
    .locals 4
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J
    .param p3, "conflictStrategyEnum"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;-><init>(IJ)V

    .line 86
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;
    new-instance v2, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;

    invoke-direct {v2, v0}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V

    .line 87
    .local v2, "request":Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;
    invoke-static {p3}, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->conflictStrategyEnumToConflictStrategy(I)Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    move-result-object v1

    .line 88
    .local v1, "conflictStrategy":Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    invoke-virtual {v2, v1}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;->setConflictStrategy(Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    .line 89
    sget-object v3, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v3, v2}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;)V

    .line 90
    return-void
.end method

.method public static unpackNewMultiFileGameData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->m_WhisperSyncClient:Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->unpackNewMultiFileGameData()V

    .line 135
    return-void
.end method
