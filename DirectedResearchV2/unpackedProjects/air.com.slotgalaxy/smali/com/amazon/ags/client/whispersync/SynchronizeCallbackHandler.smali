.class public abstract Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;
.super Landroid/os/Handler;
.source "SynchronizeCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler$1;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

.field private final marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

.field private final summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V
    .locals 1
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeCallback;
    .param p2, "summaryRepository"    # Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    new-instance v0, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    .line 47
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    .line 48
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .line 49
    return-void
.end method

.method private processDownload(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 116
    sget-object v4, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v5, "Download Success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v4, "STC_DATA"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 118
    .local v1, "data":[B
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_2

    .line 119
    :cond_0
    sget-object v4, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v5, "Expected downloaded data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v4, v5}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    sget-object v4, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received callback DOWNLOAD_SUCCESS data.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v4, "CLOUD_GAME_SUMMARY"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "summaryJson":Ljava/lang/String;
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v4, v3}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->unmarshal(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v2

    .line 130
    .local v2, "summary":Lcom/amazon/ags/client/whispersync/GameSummary;
    invoke-virtual {p0, v1, v2}, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->storePendingDownload([BLcom/amazon/ags/client/whispersync/GameSummary;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 131
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v4, v5}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->processDownloadedData([B)Z

    move-result v0

    .line 136
    .local v0, "applied":Z
    if-eqz v0, :cond_1

    .line 137
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v4, v2}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->storeSummary(Lcom/amazon/ags/client/whispersync/GameSummary;)V

    .line 138
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v4}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->removePendingUpload()V

    .line 139
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v4}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->removePendingDownload()V

    goto :goto_0
.end method

.method private processUpload(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    sget-object v2, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v3, "Upload Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "CLOUD_GAME_SUMMARY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "cloudSummaryJson":Ljava/lang/String;
    const/4 v0, 0x0

    .line 107
    .local v0, "cloudSummary":Lcom/amazon/ags/client/whispersync/GameSummary;
    if-eqz v1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v2, v1}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->unmarshal(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v2, v0}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->storeSummary(Lcom/amazon/ags/client/whispersync/GameSummary;)V

    .line 111
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v2}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->removePendingUpload()V

    .line 112
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    invoke-interface {v2}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onGameUploadSuccess()V

    .line 113
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    sget-object v5, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Handling Synchronize response message"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 55
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 58
    :cond_0
    const-string v5, "SYNCHRONIZE_RESULT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "resultString":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 60
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 61
    sget-object v5, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Received null synchronize result"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 66
    :cond_1
    :try_start_0
    invoke-static {v4}, Lcom/amazon/ags/constants/whispersync/SynchronizeResultKey;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/whispersync/SynchronizeResultKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 72
    .local v3, "result":Lcom/amazon/ags/constants/whispersync/SynchronizeResultKey;
    sget-object v5, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler$1;->$SwitchMap$com$amazon$ags$constants$whispersync$SynchronizeResultKey:[I

    invoke-virtual {v3}, Lcom/amazon/ags/constants/whispersync/SynchronizeResultKey;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 98
    sget-object v5, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected message received.  Result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v3    # "result":Lcom/amazon/ags/constants/whispersync/SynchronizeResultKey;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 69
    sget-object v5, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unrecognized synchronize result of: <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "result":Lcom/amazon/ags/constants/whispersync/SynchronizeResultKey;
    :pswitch_0
    sget-object v5, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Already Synchronized"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    invoke-interface {v5}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onAlreadySynchronized()V

    goto :goto_0

    .line 79
    :pswitch_1
    sget-object v5, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Conflict Deferred"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    invoke-interface {v5}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onConflictDeferral()V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->processUpload(Landroid/os/Bundle;)V

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->processDownload(Landroid/os/Bundle;)V

    goto :goto_0

    .line 92
    :pswitch_4
    sget-object v5, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Synchronize Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v5, "ERROR"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "errorCode":I
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeCallback;

    invoke-static {v1}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto/16 :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected abstract processDownloadedData([B)Z
.end method

.method protected final storePendingDownload([BLcom/amazon/ags/client/whispersync/GameSummary;)Z
    .locals 4
    .param p1, "gameData"    # [B
    .param p2, "summary"    # Lcom/amazon/ags/client/whispersync/GameSummary;

    .prologue
    .line 144
    new-instance v0, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;

    invoke-direct {v0, p1, p2}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;-><init>([BLcom/amazon/ags/client/whispersync/GameSummary;)V

    .line 146
    .local v0, "download":Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
    :try_start_0
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v2, v0}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->storePendingDownload(Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    const/4 v2, 0x1

    .line 150
    :goto_0
    return v2

    .line 148
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 149
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;->TAG:Ljava/lang/String;

    const-string v3, "Failed storing PendingDownload"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v2, 0x0

    goto :goto_0
.end method
