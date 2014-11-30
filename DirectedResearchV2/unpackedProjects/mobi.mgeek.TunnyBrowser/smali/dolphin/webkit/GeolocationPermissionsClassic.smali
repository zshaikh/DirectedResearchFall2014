.class final Ldolphin/webkit/GeolocationPermissionsClassic;
.super Ldolphin/webkit/GeolocationPermissions;
.source "GeolocationPermissionsClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static d:Ldolphin/webkit/GeolocationPermissionsClassic;


# instance fields
.field private a:Ldolphin/util/j;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ldolphin/webkit/GeolocationPermissions;-><init>()V

    return-void
.end method

.method public static a()Ldolphin/webkit/GeolocationPermissionsClassic;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Ldolphin/webkit/GeolocationPermissionsClassic;->d:Ldolphin/webkit/GeolocationPermissionsClassic;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ldolphin/webkit/GeolocationPermissionsClassic;

    invoke-direct {v0}, Ldolphin/webkit/GeolocationPermissionsClassic;-><init>()V

    sput-object v0, Ldolphin/webkit/GeolocationPermissionsClassic;->d:Ldolphin/webkit/GeolocationPermissionsClassic;

    .line 64
    :cond_0
    sget-object v0, Ldolphin/webkit/GeolocationPermissionsClassic;->d:Ldolphin/webkit/GeolocationPermissionsClassic;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->a:Ldolphin/util/j;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->c:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->c:Ljava/util/Vector;

    .line 156
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->a:Ldolphin/util/j;

    invoke-virtual {v0, p1}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ldolphin/webkit/GeolocationPermissionsClassic;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ldolphin/webkit/GeolocationPermissionsClassic;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Ldolphin/webkit/GeolocationPermissionsClassic;->nativeGetAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0}, Ldolphin/webkit/GeolocationPermissionsClassic;->nativeClear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0}, Ldolphin/webkit/GeolocationPermissionsClassic;->nativeAllow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ldolphin/webkit/GeolocationPermissionsClassic;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Ldolphin/webkit/GeolocationPermissionsClassic;->nativeClearAll()V

    return-void
.end method

.method private static native nativeAllow(Ljava/lang/String;)V
.end method

.method private static native nativeClear(Ljava/lang/String;)V
.end method

.method private static native nativeClearAll()V
.end method

.method private static native nativeGetAllowed(Ljava/lang/String;)Z
.end method

.method private static native nativeGetOrigins()Ljava/util/Set;
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->a(Landroid/os/Message;)V

    .line 223
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ldolphin/webkit/cr;

    invoke-direct {v0, p0}, Ldolphin/webkit/cr;-><init>(Ldolphin/webkit/GeolocationPermissionsClassic;)V

    iput-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->b:Landroid/os/Handler;

    .line 94
    :cond_0
    return-void
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->a:Ldolphin/util/j;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ldolphin/webkit/cs;

    invoke-direct {v0, p0}, Ldolphin/webkit/cs;-><init>(Ldolphin/webkit/GeolocationPermissionsClassic;)V

    iput-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->a:Ldolphin/util/j;

    .line 139
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->c:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 140
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v1, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->a:Ldolphin/util/j;

    iget-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->c:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Ldolphin/webkit/GeolocationPermissionsClassic;->c:Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->a(Landroid/os/Message;)V

    .line 214
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->a(Landroid/os/Message;)V

    .line 229
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Ldolphin/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 189
    if-nez p2, :cond_0

    .line 205
    :goto_0
    return-void

    .line 192
    :cond_0
    if-nez p1, :cond_1

    .line 193
    invoke-interface {p2, v2}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_1
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-static {p1}, Ldolphin/webkit/GeolocationPermissionsClassic;->nativeGetAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    const-string v1, "origin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "callback"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v1, 0x1

    invoke-static {v2, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getOrigins(Ldolphin/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/webkit/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Ldolphin/webkit/GeolocationPermissionsClassic;->nativeGetOrigins()Ljava/util/Set;

    move-result-object v0

    .line 180
    invoke-interface {p1, v0}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/webkit/GeolocationPermissionsClassic;->a(Landroid/os/Message;)V

    goto :goto_0
.end method
