.class public final Ldolphin/webkit/Predictor;
.super Ljava/lang/Object;
.source "Predictor.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final CANCEL_PREFETCH:I = 0x3e9

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PREFETCH_URL:I = 0x3e8

.field private static sInstance:Ldolphin/webkit/Predictor;

.field private static sPrefetchFrame:Ldolphin/webkit/BrowserFrame;

.field private static sPrefetchQueue:Ldolphin/webkit/gb;

.field private static sPrefetchThread:Ljava/lang/Thread;

.field private static sWebCoreHandler:Ldolphin/util/j;


# instance fields
.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-class v0, Ldolphin/webkit/Predictor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ldolphin/webkit/Predictor;

    invoke-direct {v0}, Ldolphin/webkit/Predictor;-><init>()V

    sput-object v0, Ldolphin/webkit/Predictor;->sInstance:Ldolphin/webkit/Predictor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Ldolphin/webkit/Predictor;->nativePrefetchUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Ldolphin/webkit/Predictor;->nativeCancelPrefetchUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ldolphin/util/j;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ldolphin/webkit/Predictor;->sWebCoreHandler:Ldolphin/util/j;

    return-object v0
.end method

.method static synthetic access$400()Ldolphin/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ldolphin/webkit/Predictor;->sPrefetchFrame:Ldolphin/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$402(Ldolphin/webkit/BrowserFrame;)Ldolphin/webkit/BrowserFrame;
    .locals 0

    .prologue
    .line 18
    sput-object p0, Ldolphin/webkit/Predictor;->sPrefetchFrame:Ldolphin/webkit/BrowserFrame;

    return-object p0
.end method

.method public static getInstance()Ldolphin/webkit/Predictor;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Ldolphin/webkit/Predictor;->sInstance:Ldolphin/webkit/Predictor;

    return-object v0
.end method

.method private initPrefetch()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Ldolphin/webkit/Predictor;->sPrefetchQueue:Ldolphin/webkit/gb;

    .line 133
    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ldolphin/webkit/gb;

    invoke-direct {v0}, Ldolphin/webkit/gb;-><init>()V

    .line 135
    sput-object v0, Ldolphin/webkit/Predictor;->sPrefetchQueue:Ldolphin/webkit/gb;

    .line 137
    :cond_0
    sget-object v1, Ldolphin/webkit/Predictor;->sPrefetchThread:Ljava/lang/Thread;

    .line 138
    if-nez v1, :cond_2

    .line 139
    new-instance v1, Ldolphin/webkit/gc;

    invoke-direct {v1, v0}, Ldolphin/webkit/gc;-><init>(Ldolphin/webkit/gb;)V

    .line 140
    sput-object v1, Ldolphin/webkit/Predictor;->sPrefetchThread:Ljava/lang/Thread;

    move-object v0, v1

    .line 142
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static native nativeAnticipateAddressBar(Ljava/lang/String;Z)V
.end method

.method private static native nativeCancelPrefetchUrl(Ljava/lang/String;)V
.end method

.method private static native nativePreconnect(Ljava/lang/String;)V
.end method

.method private static native nativePrefetchDNS([Ljava/lang/String;)V
.end method

.method private static native nativePrefetchUrl(Ljava/lang/String;)V
.end method

.method private static native nativeSaveData()V
.end method

.method private static native nativeStart(ZZ)V
.end method

.method private static native nativeStop()V
.end method

.method private static native nativeUpdatePredictor(ZZ)V
.end method

.method private static final onPrefetchCompleted(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 319
    sget-object v0, Ldolphin/webkit/Predictor;->sPrefetchQueue:Ldolphin/webkit/gb;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Ldolphin/webkit/Predictor;->sPrefetchQueue:Ldolphin/webkit/gb;

    invoke-virtual {v0, p0}, Ldolphin/webkit/gb;->c(Ljava/lang/String;)V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public final anticipateAddressBar(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 255
    invoke-virtual {p0}, Ldolphin/webkit/Predictor;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_2
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    invoke-static {v0, p2}, Ldolphin/webkit/Predictor;->nativeAnticipateAddressBar(Ljava/lang/String;Z)V

    goto :goto_0

    .line 265
    :cond_3
    sget-object v1, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android Net Stub: predictor AnticipateAddressBar - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", preconnect - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final cancelPrefetchUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Ldolphin/webkit/Predictor;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/Predictor;->sPrefetchQueue:Ldolphin/webkit/gb;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Ldolphin/webkit/Predictor;->sPrefetchQueue:Ldolphin/webkit/gb;

    invoke-virtual {v0, p1}, Ldolphin/webkit/gb;->b(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method public final declared-synchronized hasStarted()Z
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/Predictor;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final initWebCoreHandler()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Ldolphin/webkit/Predictor;->sWebCoreHandler:Ldolphin/util/j;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ldolphin/webkit/ga;

    invoke-direct {v0, p0}, Ldolphin/webkit/ga;-><init>(Ldolphin/webkit/Predictor;)V

    sput-object v0, Ldolphin/webkit/Predictor;->sWebCoreHandler:Ldolphin/util/j;

    .line 170
    :cond_0
    return-void
.end method

.method public final preconnect(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Ldolphin/webkit/Predictor;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-static {p1}, Ldolphin/webkit/Predictor;->nativePreconnect(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_2
    sget-object v0, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android Net Stub: predictor preconnect - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final prefetchDNS([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Ldolphin/webkit/Predictor;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-static {p1}, Ldolphin/webkit/Predictor;->nativePrefetchDNS([Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_2
    sget-object v0, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android Net Stub: predictor prefetchDNS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final prefetchUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Ldolphin/webkit/Predictor;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/Predictor;->sPrefetchQueue:Ldolphin/webkit/gb;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Ldolphin/webkit/Predictor;->sPrefetchQueue:Ldolphin/webkit/gb;

    invoke-virtual {v0, p1}, Ldolphin/webkit/gb;->a(Ljava/lang/String;)Z

    .line 201
    :cond_0
    return-void
.end method

.method public final saveData()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Ldolphin/webkit/Predictor;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Ldolphin/webkit/Predictor;->nativeSaveData()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    sget-object v0, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Android Net Stub: SaveData for predictor"

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final declared-synchronized start(ZZ)V
    .locals 3

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/Predictor;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    invoke-static {}, Ldolphin/webkit/JniUtil;->isLibraryLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    invoke-static {p1, p2}, Ldolphin/webkit/Predictor;->nativeStart(ZZ)V

    .line 188
    :goto_1
    invoke-direct {p0}, Ldolphin/webkit/Predictor;->initPrefetch()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/Predictor;->mStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :cond_2
    :try_start_2
    sget-object v0, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android Net Stub: start predictor, DNS prefetch - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preconnect - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized stop()V
    .locals 2

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/Predictor;->mStarted:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-static {}, Ldolphin/webkit/Predictor;->nativeStop()V

    .line 236
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/Predictor;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    :cond_1
    :try_start_1
    sget-object v0, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Android Net Stub: stop predictor"

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final update(ZZ)V
    .locals 3

    .prologue
    .line 307
    invoke-virtual {p0}, Ldolphin/webkit/Predictor;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {p1, p2}, Ldolphin/webkit/Predictor;->nativeUpdatePredictor(ZZ)V

    goto :goto_0

    .line 313
    :cond_1
    sget-object v0, Ldolphin/webkit/Predictor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android Net Stub: predictor Update, DNS prefetch - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preconnect - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
