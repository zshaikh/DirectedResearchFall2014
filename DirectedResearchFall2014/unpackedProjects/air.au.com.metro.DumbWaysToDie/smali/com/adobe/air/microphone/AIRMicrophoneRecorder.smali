.class public Lcom/adobe/air/microphone/AIRMicrophoneRecorder;
.super Ljava/lang/Object;
.source "AIRMicrophoneRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mMicBuffer:[B

.field private m_audioFormat:I

.field private m_audioSource:I

.field private m_bufferSize:I

.field private m_channelConfiguration:I

.field private volatile m_isPaused:Z

.field private volatile m_isRecording:Z

.field private m_recorder:Landroid/media/AudioRecord;

.field private m_sampleRate:I

.field private final mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    .line 126
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    .line 127
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    .line 128
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    .line 129
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    .line 17
    iput p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    .line 18
    iput p2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    .line 19
    iput p3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    .line 20
    iput p4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    .line 21
    iput p5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    .line 22
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    .line 23
    return-void
.end method


# virtual methods
.method public Open()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 57
    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    if-le v1, v0, :cond_0

    .line 58
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    move v5, v0

    .line 63
    :goto_0
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    iget v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    iget v4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 72
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 76
    :goto_1
    return-object v0

    .line 60
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    move v5, v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 67
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 76
    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public getBuffer()[B
    .locals 6

    .prologue
    const/4 v4, -0x3

    const-string v5, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    .line 85
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 86
    if-ne v0, v4, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read() returned AudioRecord.ERROR_BAD_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    if-ne v0, v4, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read() returned AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    return-object v0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    monitor-exit v0

    return v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->isRecording()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wait interrupted"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 38
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 42
    :try_start_4
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 49
    :cond_1
    :goto_1
    return-void

    .line 44
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setRecording(Z)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    .line 104
    iget-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 112
    :goto_0
    monitor-exit v0

    .line 113
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 108
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
