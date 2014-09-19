.class public Lcom/fusepowered/m1/android/BridgeMMSpeechkit;
.super Lcom/fusepowered/m1/android/MMJSObject;
.source "BridgeMMSpeechkit.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$PeriodicListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/BridgeMMSpeechkit$1;,
        Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SingletonHolder;,
        Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMJSObject;-><init>()V

    .line 20
    return-void
.end method

.method private getCreateSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;
    .locals 5

    .prologue
    .line 25
    const/4 v2, 0x0

    .line 27
    .local v2, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    iget-object v4, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fusepowered/m1/android/MMWebView;

    .line 28
    .local v3, webView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/MMWebView;->allowSpeechCreationCommands()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getSpeechKitInternal()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 32
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getSpeechKitInternal()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v4

    .line 46
    :goto_0
    return-object v4

    .line 34
    :cond_0
    invoke-virtual {v3}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 37
    new-instance v2, Lcom/fusepowered/m1/android/NVASpeechKit;

    .end local v2           #speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    invoke-direct {v2, v3}, Lcom/fusepowered/m1/android/NVASpeechKit;-><init>(Lcom/fusepowered/m1/android/MMWebView;)V

    .line 38
    .restart local v2       #speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    invoke-static {v2}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->setSpeechKit(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    .line 39
    invoke-static {v0}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v4

    iget-object v1, v4, Lcom/fusepowered/m1/android/HandShake;->nuanceCredentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;

    .line 40
    .local v1, credentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/fusepowered/m1/android/NVASpeechKit;->initialize(Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;Landroid/content/Context;)Z

    .end local v0           #context:Landroid/content/Context;
    .end local v1           #credentials:Lcom/fusepowered/m1/android/HandShake$NuanceCredentials;
    :cond_1
    move-object v4, v2

    .line 46
    goto :goto_0
.end method

.method static getInstance()Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SingletonHolder;->INSTANCE:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    return-object v0
.end method

.method private getSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 52
    .local v0, webView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->allowRecordingCommands()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getSpeechKitInternal()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSpeechKitInternal()Lcom/fusepowered/m1/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 415
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getInstance()Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->getSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v0

    return-object v0
.end method

.method private getSpeechKitRelease()Lcom/fusepowered/m1/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getSpeechKitInternal()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v0

    return-object v0
.end method

.method static releaseSpeechKit()Z
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getInstance()Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->release()Z

    move-result v0

    return v0
.end method

.method static setSpeechKit(Lcom/fusepowered/m1/android/NVASpeechKit;)V
    .locals 1
    .parameter "speechKit"

    .prologue
    .line 420
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getInstance()Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->release()Z

    .line 421
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getInstance()Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->setSpeechKit(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    .line 422
    return-void
.end method


# virtual methods
.method public addCustomVoiceWords(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 5
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
    .line 318
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v0

    .line 319
    .local v0, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v0, :cond_0

    .line 321
    const-string v3, "Unable to create speech kit"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 332
    :goto_0
    return-object v3

    .line 323
    :cond_0
    const-string v3, "words"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 324
    .local v2, words:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 326
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, wordArray:[Ljava/lang/String;
    sget-object v3, Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

    invoke-virtual {v0, v3, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->updateCustomWords(Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;[Ljava/lang/String;)V

    .line 329
    const-string v3, "javascript:MMJS.sdk.customVoiceWordsAdded()"

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 332
    .end local v1           #wordArray:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cacheAudio(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 5
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
    .line 111
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    const-string v3, "Invalid url"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 131
    :goto_0
    return-object v3

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 120
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 122
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v2, v1, v0}, Lcom/fusepowered/m1/android/AdCache;->downloadComponentToCache(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const-string v3, "javascript:MMJS.sdk.audioCached()"

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully cached audio at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 131
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #fileName:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cache audio at"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public deleteCustomVoiceWords(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 5
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
    .line 341
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v0

    .line 342
    .local v0, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v0, :cond_0

    .line 344
    const-string v3, "Unable to create speech kit"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 356
    :goto_0
    return-object v3

    .line 347
    :cond_0
    const-string v3, "words"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 348
    .local v2, words:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 350
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, wordArray:[Ljava/lang/String;
    sget-object v3, Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;->Remove:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

    invoke-virtual {v0, v3, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->updateCustomWords(Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;[Ljava/lang/String;)V

    .line 353
    const-string v3, "javascript:MMJS.sdk.customVoiceWordsDeleted()"

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 356
    .end local v1           #wordArray:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public endRecording(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
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
    .line 92
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v0

    .line 93
    .local v0, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v0, :cond_0

    .line 95
    const-string v1, "Unable to get speech kit"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 97
    :cond_0
    monitor-enter v0

    .line 99
    :try_start_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->endRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    monitor-exit v0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    const-string v1, "Failed in speechKit"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public getSessionId(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 4
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
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "No SpeechKit session open."

    .line 139
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v1

    .line 140
    .local v1, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v1, :cond_0

    .line 142
    const-string v2, "No SpeechKit session open."

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    .line 147
    :goto_0
    return-object v2

    .line 144
    :cond_0
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, sessionId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    invoke-static {v0}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    goto :goto_0

    .line 147
    :cond_1
    const-string v2, "No SpeechKit session open."

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    goto :goto_0
.end method

.method injectJavascript(Ljava/lang/String;)V
    .locals 2
    .parameter "javascript"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 226
    .local v0, webView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 203
    const-string v2, "javascript:MMJS.sdk.audioCompleted()"

    invoke-virtual {p0, v2}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 206
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 208
    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 209
    .local v0, audio:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->removeCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)Z

    .line 212
    invoke-virtual {v0, p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->removePeriodicListener(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$PeriodicListener;)Z

    .line 215
    .end local v0           #audio:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    :cond_0
    return-void
.end method

.method public onUpdate(I)V
    .locals 2
    .parameter "currentPositionMillis"

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.audioPositionChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public playAudio(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
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
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "url"

    .line 156
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v5

    .line 157
    .local v5, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v5, :cond_0

    .line 159
    const-string v7, "Unable to create speech kit"

    invoke-static {v7}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v7

    .line 197
    :goto_0
    return-object v7

    .line 162
    :cond_0
    const-string v7, "url"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 164
    .local v6, url:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 166
    const-string v7, "Invalid url"

    invoke-static {v7}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v7

    goto :goto_0

    .line 169
    :cond_1
    new-instance v2, Lcom/fusepowered/m1/android/BridgeMMMedia;

    invoke-direct {v2}, Lcom/fusepowered/m1/android/BridgeMMMedia;-><init>()V

    .line 170
    .local v2, media:Lcom/fusepowered/m1/android/BridgeMMMedia;
    iget-object v7, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_4

    .line 172
    iget-object v7, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/fusepowered/m1/android/BridgeMMMedia;->setContext(Landroid/content/Context;)V

    .line 173
    const-string v7, "url"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 176
    iget-object v7, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 177
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 179
    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 180
    .local v0, audio:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0, p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->addCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)Z

    .line 183
    invoke-virtual {v0, p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->addPeriodicListener(Lcom/fusepowered/m1/android/BridgeMMMedia$Audio$PeriodicListener;)Z

    .line 185
    :cond_2
    const-string v7, "path"

    invoke-virtual {p1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v2, p1}, Lcom/fusepowered/m1/android/BridgeMMMedia;->playAudio(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v4

    .line 187
    .local v4, response:Lcom/fusepowered/m1/android/MMJSResponse;
    if-eqz v4, :cond_3

    iget v7, v4, Lcom/fusepowered/m1/android/MMJSResponse;->result:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 189
    const-string v7, "javascript:MMJS.sdk.audioStarted()"

    invoke-virtual {p0, v7}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    :cond_3
    move-object v7, v4

    .line 191
    goto :goto_0

    .line 197
    .end local v0           #audio:Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #response:Lcom/fusepowered/m1/android/MMJSResponse;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public releaseVoice(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 1
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
    .line 299
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->releaseSpeechKit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "Unable to get speech kit"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "released speechkit"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public sampleBackgroundAudioLevel(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
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
    .line 284
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v0

    .line 285
    .local v0, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v0, :cond_0

    .line 287
    const-string v1, "Unable to create speech kit"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 291
    :goto_0
    return-object v1

    .line 290
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->startSampleRecording()V

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecording(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
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
    .line 70
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v1

    .line 71
    .local v1, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v1, :cond_0

    .line 73
    const-string v2, "Unable to create speech kit"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    .line 84
    :goto_0
    return-object v2

    .line 76
    :cond_0
    const-string v2, "language"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, language:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v0, "en_GB"

    .line 82
    :cond_1
    invoke-virtual {v1, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->startRecording(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_2
    const-string v2, "Failed in speechKit"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
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
    .line 262
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v1

    .line 263
    .local v1, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v1, :cond_0

    .line 265
    const-string v2, "Unable to get speech kit"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    .line 276
    .end local p0
    :goto_0
    return-object v2

    .line 268
    .restart local p0
    :cond_0
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->stopActions()V

    .line 270
    new-instance v0, Lcom/fusepowered/m1/android/BridgeMMMedia;

    invoke-direct {v0}, Lcom/fusepowered/m1/android/BridgeMMMedia;-><init>()V

    .line 271
    .local v0, media:Lcom/fusepowered/m1/android/BridgeMMMedia;
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m1/android/BridgeMMMedia;->setContext(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/BridgeMMMedia;->stopAudio(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    goto :goto_0

    .line 276
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public textToSpeech(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 4
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
    .line 238
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "@@-Calling textToSpeech"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v1

    .line 240
    .local v1, speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    if-nez v1, :cond_0

    .line 242
    const-string v3, "Unable to create speech kit"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 254
    :goto_0
    return-object v3

    .line 245
    :cond_0
    const-string v3, "language"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    .local v0, language:Ljava/lang/String;
    const-string v3, "text"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    .local v2, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    const-string v0, "en_GB"

    .line 251
    :cond_1
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->stopActions()V

    .line 252
    invoke-virtual {v1, v2, v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->textToSpeech(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 254
    :cond_2
    const-string v3, "Failed in speechKit"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0
.end method
