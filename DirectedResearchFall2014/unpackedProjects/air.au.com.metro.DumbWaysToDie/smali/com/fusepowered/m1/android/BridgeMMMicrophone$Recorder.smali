.class Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
.super Ljava/lang/Object;
.source "BridgeMMMicrophone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/BridgeMMMicrophone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Recorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;,
        Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$SingletonHolder;,
        Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;
    }
.end annotation


# instance fields
.field _state:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

.field audioRunnable:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private webViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 162
    sget-object v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->READY:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    iput-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->_state:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m1/android/BridgeMMMicrophone$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->startRecording(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->webViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->getAudioLevel()D

    move-result-wide v0

    return-wide v0
.end method

.method private getAudioLevel()D
    .locals 6

    .prologue
    .line 261
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    int-to-double v2, v2

    const-wide v4, 0x40dfffc000000000L

    div-double v0, v2, v4

    .local v0, db:D
    move-wide v2, v0

    .line 268
    .end local v0           #db:D
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$SingletonHolder;->INSTANCE:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    return-object v0
.end method

.method private declared-synchronized startRecording(Ljava/lang/String;I)V
    .locals 5
    .parameter "path"
    .parameter "callbackRate"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 184
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->stopRecording()V

    .line 188
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 189
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 206
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    .line 207
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->webViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 210
    .local v1, webView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v1, :cond_3

    .line 212
    sget-object v2, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->RECORDING:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    iput-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->_state:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    .line 213
    sget-object v2, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->RECORDING:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/MMWebView;->setmicrophoneStateChange(Ljava/lang/String;)V

    .line 214
    if-lez p2, :cond_3

    .line 216
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->audioRunnable:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->audioRunnable:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->cancel()V

    .line 220
    :cond_2
    new-instance v2, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;

    invoke-direct {v2, p0, p2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;-><init>(Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;I)V

    iput-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->audioRunnable:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;

    .line 221
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->audioRunnable:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/fusepowered/m1/android/MMWebView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .end local v1           #webView:Lcom/fusepowered/m1/android/MMWebView;
    :cond_3
    monitor-exit p0

    return-void

    .line 200
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 202
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v2, "prepare() failed"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method declared-synchronized addCallBack(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->webViewRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopRecording()V
    .locals 4

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 277
    :try_start_1
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 278
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->audioRunnable:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->audioRunnable:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->cancel()V

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->webViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 295
    .local v1, webView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v1, :cond_2

    .line 297
    sget-object v2, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->READY:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    iput-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->_state:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    .line 298
    sget-object v2, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->READY:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/MMWebView;->setmicrophoneStateChange(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    .end local v1           #webView:Lcom/fusepowered/m1/android/MMWebView;
    :cond_2
    monitor-exit p0

    return-void

    .line 282
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 284
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 273
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
