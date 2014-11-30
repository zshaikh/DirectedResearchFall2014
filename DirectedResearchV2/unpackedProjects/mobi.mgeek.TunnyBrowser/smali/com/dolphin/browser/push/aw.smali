.class public Lcom/dolphin/browser/push/aw;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/dolphin/browser/push/http/a;


# static fields
.field private static a:Lcom/dolphin/browser/push/aw;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/Network/d;",
            "Lcom/dolphin/browser/push/ay;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/push/aw;->a:Lcom/dolphin/browser/push/aw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/aw;->c:Landroid/os/Handler;

    .line 51
    invoke-static {p0}, Lcom/dolphin/browser/push/http/NetworkStateObserver;->a(Lcom/dolphin/browser/push/http/a;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/push/aw;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/push/aw;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static c()Lcom/dolphin/browser/push/aw;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/dolphin/browser/push/aw;->a:Lcom/dolphin/browser/push/aw;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/dolphin/browser/push/aw;

    invoke-direct {v0}, Lcom/dolphin/browser/push/aw;-><init>()V

    sput-object v0, Lcom/dolphin/browser/push/aw;->a:Lcom/dolphin/browser/push/aw;

    .line 72
    :cond_0
    sget-object v0, Lcom/dolphin/browser/push/aw;->a:Lcom/dolphin/browser/push/aw;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/ay;

    .line 220
    invoke-virtual {v0}, Lcom/dolphin/browser/push/ay;->b()V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/push/ax;)V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/push/aw;->a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/push/ax;Lcom/dolphin/browser/util/t;)V

    .line 196
    return-void
.end method

.method public a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/push/ax;Lcom/dolphin/browser/util/t;)V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/aw;->b(Lcom/dolphin/browser/Network/d;)V

    .line 187
    new-instance v0, Lcom/dolphin/browser/push/ay;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/push/ay;-><init>(Lcom/dolphin/browser/push/aw;Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/push/ax;Lcom/dolphin/browser/util/t;)V

    .line 188
    iget-object v1, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Lcom/dolphin/browser/push/aw;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/dolphin/browser/Network/d;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/ay;

    .line 61
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0}, Lcom/dolphin/browser/push/ay;->a(Lcom/dolphin/browser/push/ay;)J

    move-result-wide v2

    const-wide/16 v4, 0x14

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 65
    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/dolphin/browser/push/aw;->d()V

    .line 234
    return-void
.end method

.method public b(Lcom/dolphin/browser/Network/d;)V
    .locals 2

    .prologue
    .line 199
    .line 200
    iget-object v1, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/push/aw;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/ay;

    .line 202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/dolphin/browser/push/ay;->a()V

    .line 206
    :cond_0
    return-void

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
