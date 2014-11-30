.class public Ldolphin/webkit/WebStorageClassic;
.super Ldolphin/webkit/WebStorage;
.source "WebStorageClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static a:Ldolphin/webkit/WebStorageClassic;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldolphin/webkit/WebStorage$Origin;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldolphin/util/j;

.field private d:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-direct {p0}, Ldolphin/webkit/WebStorage;-><init>()V

    .line 59
    iput-object v0, p0, Ldolphin/webkit/WebStorageClassic;->c:Ldolphin/util/j;

    .line 60
    iput-object v0, p0, Ldolphin/webkit/WebStorageClassic;->d:Landroid/os/Handler;

    .line 347
    return-void
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->c:Ldolphin/util/j;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->c:Ldolphin/util/j;

    invoke-virtual {v0, p1}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/WebStorageClassic;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ldolphin/webkit/WebStorageClassic;->g()V

    return-void
.end method

.method static synthetic a(Ldolphin/webkit/WebStorageClassic;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ldolphin/webkit/WebStorageClassic;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Ldolphin/webkit/WebStorageClassic;->nativeDeleteOrigin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Ldolphin/webkit/WebStorageClassic;->nativeSetQuotaForOrigin(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic b(Ldolphin/webkit/WebStorageClassic;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->b:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    :cond_0
    return-void
.end method

.method public static d()Ldolphin/webkit/WebStorageClassic;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Ldolphin/webkit/WebStorageClassic;->a:Ldolphin/webkit/WebStorageClassic;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ldolphin/webkit/WebStorageClassic;

    invoke-direct {v0}, Ldolphin/webkit/WebStorageClassic;-><init>()V

    sput-object v0, Ldolphin/webkit/WebStorageClassic;->a:Ldolphin/webkit/WebStorageClassic;

    .line 317
    :cond_0
    sget-object v0, Ldolphin/webkit/WebStorageClassic;->a:Ldolphin/webkit/WebStorageClassic;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Ldolphin/webkit/WebStorageClassic;->nativeDeleteAllData()V

    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    .line 337
    invoke-static {}, Ldolphin/webkit/WebStorageClassic;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ldolphin/webkit/WebStorageClassic;->b:Ljava/util/Map;

    .line 339
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    new-instance v0, Ldolphin/webkit/WebStorage$Origin;

    invoke-static {v1}, Ldolphin/webkit/WebStorageClassic;->nativeGetQuotaForOrigin(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1}, Ldolphin/webkit/WebStorageClassic;->nativeGetUsageForOrigin(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;JJ)V

    .line 343
    iget-object v2, p0, Ldolphin/webkit/WebStorageClassic;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 345
    :cond_0
    return-void
.end method

.method private static native nativeDeleteAllData()V
.end method

.method private static native nativeDeleteOrigin(Ljava/lang/String;)V
.end method

.method private static native nativeGetOrigins()Ljava/util/Set;
.end method

.method private static native nativeGetQuotaForOrigin(Ljava/lang/String;)J
.end method

.method private static native nativeGetUsageForOrigin(Ljava/lang/String;)J
.end method

.method private static native nativeSetAppCacheMaximumSize(J)V
.end method

.method private static native nativeSetQuotaForOrigin(Ljava/lang/String;J)V
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ldolphin/webkit/hu;

    invoke-direct {v0, p0}, Ldolphin/webkit/hu;-><init>(Ldolphin/webkit/WebStorageClassic;)V

    iput-object v0, p0, Ldolphin/webkit/WebStorageClassic;->d:Landroid/os/Handler;

    .line 95
    :cond_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->c:Ldolphin/util/j;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ldolphin/webkit/hv;

    invoke-direct {v0, p0}, Ldolphin/webkit/hv;-><init>(Ldolphin/webkit/WebStorageClassic;)V

    iput-object v0, p0, Ldolphin/webkit/WebStorageClassic;->c:Ldolphin/util/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ldolphin/webkit/WebStorage$Origin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Ldolphin/webkit/WebStorageClassic;->e()V

    .line 202
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllData()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Ldolphin/webkit/WebStorageClassic;->nativeDeleteAllData()V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/WebStorageClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {p1}, Ldolphin/webkit/WebStorageClassic;->nativeDeleteOrigin(Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-instance v2, Ldolphin/webkit/WebStorage$Origin;

    invoke-direct {v2, p1}, Ldolphin/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/WebStorageClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0}, Ldolphin/webkit/WebStorageClassic;->g()V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/WebStorageClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getOrigins(Ldolphin/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-direct {p0}, Ldolphin/webkit/WebStorageClassic;->g()V

    .line 188
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/WebStorageClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Ldolphin/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 230
    if-nez p2, :cond_0

    .line 247
    :goto_0
    return-void

    .line 233
    :cond_0
    if-nez p1, :cond_1

    .line 234
    invoke-interface {p2, v2}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_1
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-direct {p0}, Ldolphin/webkit/WebStorageClassic;->g()V

    .line 239
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebStorage$Origin;

    .line 240
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ldolphin/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v1}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-string v1, "origin"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "callback"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v1, 0x6

    invoke-static {v2, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/WebStorageClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getUsageForOrigin(Ljava/lang/String;Ldolphin/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    if-nez p2, :cond_0

    .line 226
    :goto_0
    return-void

    .line 212
    :cond_0
    if-nez p1, :cond_1

    .line 213
    invoke-interface {p2, v2}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_1
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    invoke-direct {p0}, Ldolphin/webkit/WebStorageClassic;->g()V

    .line 218
    iget-object v0, p0, Ldolphin/webkit/WebStorageClassic;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebStorage$Origin;

    .line 219
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ldolphin/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v1}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    const-string v1, "origin"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "callback"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v1, 0x5

    invoke-static {v2, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/WebStorageClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-static {p1, p2, p3}, Ldolphin/webkit/WebStorageClassic;->nativeSetQuotaForOrigin(Ljava/lang/String;J)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ldolphin/webkit/WebStorage$Origin;

    invoke-direct {v2, p1, p2, p3}, Ldolphin/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;J)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/WebStorageClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method
