.class public final Ldolphin/webkit/JWebCoreJavaBridge;
.super Ldolphin/util/j;
.source "JWebCoreJavaBridge.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field static a:Landroid/os/Handler;

.field static b:Ldolphin/webkit/JWebCoreJavaBridge;

.field private static f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ldolphin/webkit/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeBridge:I
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    .line 72
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 73
    sput-object p0, Ldolphin/webkit/JWebCoreJavaBridge;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    .line 76
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/JWebCoreJavaBridge;->nativeConstructor()V

    .line 78
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ldolphin/webkit/eh;

    invoke-direct {v0}, Ldolphin/webkit/eh;-><init>()V

    sput-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->a:Landroid/os/Handler;

    .line 141
    :cond_0
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/JWebCoreJavaBridge;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ldolphin/webkit/JWebCoreJavaBridge;->nativePerformMainThreadTask(I)V

    return-void
.end method

.method static declared-synchronized a(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 86
    const-class v1, Ldolphin/webkit/JWebCoreJavaBridge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    monitor-exit v1

    return-void

    .line 90
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->f:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 425
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->b:Ldolphin/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0, p0}, Ldolphin/webkit/JWebCoreJavaBridge;->post(Ljava/lang/Runnable;)Z

    .line 428
    :cond_0
    return-void
.end method

.method static declared-synchronized b(Ldolphin/webkit/WebViewClassic;)V
    .locals 2

    .prologue
    .line 94
    const-class v1, Ldolphin/webkit/JWebCoreJavaBridge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 99
    :goto_0
    monitor-exit v1

    return-void

    .line 98
    :cond_0
    :try_start_1
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private cookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldolphin/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cookiesEnabled()Z
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->c:Z

    .line 160
    invoke-direct {p0}, Ldolphin/webkit/JWebCoreJavaBridge;->sharedTimerFired()V

    .line 161
    return-void
.end method

.method private getKeyStrengthList()[Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Ldolphin/webkit/ax;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginDirectories()[Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-static {v0}, Ldolphin/webkit/fu;->a(Landroid/content/Context;)Ldolphin/webkit/fu;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/fu;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginSharedDataDirectory()Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-static {v0}, Ldolphin/webkit/fu;->a(Landroid/content/Context;)Ldolphin/webkit/fu;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/fu;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getSignedPublicKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    .line 354
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ldolphin/webkit/ax;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 361
    :goto_0
    monitor-exit p0

    return-object v0

    .line 360
    :cond_0
    :try_start_1
    const-string v0, "webkit-timers"

    const-string v1, "There is no active WebView for getSignedPublicKey"

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativePerformMainThreadTask(I)V
.end method

.method private native nativeServiceFuncPtrQueue()V
.end method

.method private native nativeUpdatePluginDirectories([Ljava/lang/String;Z)V
.end method

.method private notifyPluginNotResponse()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 301
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 302
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 303
    sget-object v1, Ldolphin/webkit/JWebCoreJavaBridge;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    :cond_0
    return-void
.end method

.method private performTaskOnMainThread(I)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 405
    sget-object v0, Ldolphin/webkit/JWebCoreJavaBridge;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 406
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 407
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 408
    sget-object v1, Ldolphin/webkit/JWebCoreJavaBridge;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    :cond_0
    return-void
.end method

.method private performTaskOnWebCoreThread(I)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Ldolphin/webkit/WebViewCore;->getWebCoreHandler()Ldolphin/util/j;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    .line 418
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ldolphin/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 419
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 420
    invoke-virtual {v0, v1}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 422
    :cond_0
    return-void
.end method

.method private resolveFilePathForContentUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    if-eqz v0, :cond_0

    .line 378
    :goto_0
    return-object v0

    .line 377
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setCookies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 242
    const-string v0, "\r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 244
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    const/4 v0, 0x0

    move v2, v0

    .line 247
    :goto_0
    if-eq v2, v5, :cond_6

    if-ge v2, v3, :cond_6

    .line 248
    const/16 v0, 0xd

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 249
    const/16 v0, 0xa

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 250
    if-ne v1, v5, :cond_3

    .line 252
    :cond_1
    :goto_1
    if-le v0, v2, :cond_5

    .line 253
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .line 259
    goto :goto_0

    .line 250
    :cond_3
    if-ne v0, v5, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    if-ge v1, v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 254
    :cond_5
    if-ne v0, v5, :cond_2

    .line 255
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 260
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 262
    :cond_7
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private setSharedTimer(J)V
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 314
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 319
    iget-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->c:Z

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 322
    :cond_0
    iput-boolean v2, p0, Ldolphin/webkit/JWebCoreJavaBridge;->c:Z

    .line 323
    invoke-virtual {p0, v2}, Ldolphin/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 324
    invoke-virtual {p0, v0, p1, p2}, Ldolphin/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p0, v2}, Ldolphin/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 328
    invoke-virtual {p0, v0, p1, p2}, Ldolphin/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private native sharedTimerFired()V
.end method

.method private signalServiceFuncPtrQueue()V
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method private stopSharedTimer()V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->removeMessages(I)V

    .line 341
    iput-boolean v1, p0, Ldolphin/webkit/JWebCoreJavaBridge;->c:Z

    .line 342
    iput-boolean v1, p0, Ldolphin/webkit/JWebCoreJavaBridge;->e:Z

    .line 343
    return-void
.end method


# virtual methods
.method public a(Ldolphin/net/ProxyProperties;)V
    .locals 3

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/JWebCoreJavaBridge;->nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p1}, Ldolphin/net/ProxyProperties;->a()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p1}, Ldolphin/net/ProxyProperties;->b()I

    move-result v1

    .line 396
    if-eqz v1, :cond_1

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_1
    invoke-virtual {p1}, Ldolphin/net/ProxyProperties;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ldolphin/webkit/JWebCoreJavaBridge;->nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public native addPackageName(Ljava/lang/String;)V
.end method

.method public native addPackageNames(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public b()V
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->d:Z

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->d:Z

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->e:Z

    .line 214
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->d:Z

    if-eqz v0, :cond_0

    .line 221
    iput-boolean v1, p0, Ldolphin/webkit/JWebCoreJavaBridge;->d:Z

    .line 222
    iget-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->e:Z

    if-eqz v0, :cond_0

    .line 223
    iput-boolean v1, p0, Ldolphin/webkit/JWebCoreJavaBridge;->e:Z

    .line 224
    invoke-direct {p0}, Ldolphin/webkit/JWebCoreJavaBridge;->e()V

    .line 227
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ldolphin/webkit/JWebCoreJavaBridge;->nativeFinalize()V

    .line 83
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 176
    :sswitch_0
    iget-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->d:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/JWebCoreJavaBridge;->e:Z

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/JWebCoreJavaBridge;->e()V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-direct {p0}, Ldolphin/webkit/JWebCoreJavaBridge;->nativeServiceFuncPtrQueue()V

    goto :goto_0

    .line 187
    :sswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Ldolphin/webkit/fu;->a(Landroid/content/Context;)Ldolphin/webkit/fu;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/fu;->a()[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Ldolphin/webkit/JWebCoreJavaBridge;->nativeUpdatePluginDirectories([Ljava/lang/String;Z)V

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method native nativePerformWebCoreThreadTask(I)V
.end method

.method public native nativeUpdateProxy(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public declared-synchronized notifyAcquireGpu()V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyFunctionCall(I)V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyReleaseGpu()V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public native removePackageName(Ljava/lang/String;)V
.end method

.method public native setCacheSize(I)V
.end method

.method public native setNetworkOnLine(Z)V
.end method

.method public native setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method
