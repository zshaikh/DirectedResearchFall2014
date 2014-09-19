.class public Lcom/fusepowered/m1/android/BridgeMMMicrophone;
.super Lcom/fusepowered/m1/android/MMJSObject;
.source "BridgeMMMicrophone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMJSObject;-><init>()V

    .line 16
    return-void
.end method

.method private delayedEnd(Ljava/lang/String;)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 78
    .local v0, dura:I
    new-instance v1, Lcom/fusepowered/m1/android/BridgeMMMicrophone$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$1;-><init>(Lcom/fusepowered/m1/android/BridgeMMMicrophone;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0           #dura:I
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initRecorder()Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, recorder:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 99
    .local v1, webView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->allowMicrophoneCreationCommands()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->getInstance()Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->addCallBack(Lcom/fusepowered/m1/android/MMWebView;)V

    .line 105
    .end local v1           #webView:Lcom/fusepowered/m1/android/MMWebView;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public isRecordingAllowed(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #context:Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 131
    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->hasVoiceAbility(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "Has Microphone / Ready to use"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "No voice ability"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public startRecording(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->initRecorder()Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    move-result-object v6

    .line 31
    .local v6, recorder:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
    if-nez v6, :cond_0

    .line 33
    const-string v7, "Unable to create Microphone Recorder"

    invoke-static {v7}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v7

    .line 70
    :goto_0
    return-object v7

    .line 36
    :cond_0
    const-string v7, "path"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 37
    .local v5, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 38
    .local v3, filePath:Ljava/io/File;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_1

    .line 40
    iget-object v7, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-static {v7}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 41
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 43
    new-instance v3, Ljava/io/File;

    .end local v3           #filePath:Ljava/io/File;
    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .restart local v3       #filePath:Ljava/io/File;
    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 50
    .end local v1           #dir:Ljava/io/File;
    :cond_1
    const-string v7, "duration"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, duration:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 54
    const-string v7, "9"

    invoke-direct {p0, v7}, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->delayedEnd(Ljava/lang/String;)V

    .line 56
    :cond_2
    const-string v7, "callbackRate"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, callbackRate:Ljava/lang/String;
    const/16 v4, 0x64

    .line 58
    .local v4, intCallbackRate:I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 62
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/high16 v8, 0x447a

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 69
    :cond_3
    :goto_1
    #calls: Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->startRecording(Ljava/lang/String;I)V
    invoke-static {v6, v5, v4}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->access$000(Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;Ljava/lang/String;I)V

    .line 70
    const-string v7, "recording"

    invoke-static {v7}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v7

    goto :goto_0

    .line 64
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public stopRecording(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->initRecorder()Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    move-result-object v0

    .line 114
    .local v0, recorder:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
    if-nez v0, :cond_0

    .line 116
    const-string v1, "Unable to create Microphone Recorder"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->stopRecording()V

    .line 120
    const-string v1, "stopped recording"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    goto :goto_0
.end method
